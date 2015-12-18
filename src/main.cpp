#include "Common.h"
#include "Graphics.h"
#include "Vertices.h"
#include "Shader.h"
#include "Texture.h"
#include "Mesh.h"
#include "FBXLoader.h"
#include "FileSystem.h"
#include "GameObject.h"
#include "Cube.h"
#include <Camera.h>
#include <Light.h>
#include <Input.h>
#include <Material.h>
#include "ParticleSystem.h"

shared_ptr<GameObject> gameObject = shared_ptr<GameObject>(new GameObject);
vector <shared_ptr<GameObject>> gameObjects;
shared_ptr<Camera> camera = shared_ptr<Camera>(new Camera);
shared_ptr<Light> light = shared_ptr<Light>(new Light);
shared_ptr<Input> input = shared_ptr<Input>(new Input);
shared_ptr<GameObject> skyBox;
shared_ptr<ParticleSystem> particles;

//matrices
mat4 MVPMatrix;

//for Framebuffer
GLuint FBOTexture;
GLuint FBODepthBuffer;
GLuint frameBufferObject;
GLuint fullScreenVAO;
GLuint fullScreenVBO;
GLuint fullScreenShaderProgram;
GLuint fontTextureMap;

const int FRAME_BUFFER_WIDTH = 640;
const int FRAME_BUFFER_HEIGHT = 480;

double fps;
int frames = 0;

GLuint currentShaderProgram = 0;
GLuint currentDiffuseMap = 0;

//Ripple Shader variables
vec2 resolution = vec2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT);

//timing
unsigned int lastTicks, currentTicks;
float elapsedTime;
float totalTime;

void renderGameObject(shared_ptr<GameObject> currentGameObject)
{

	shared_ptr<Material> matTemp = currentGameObject->getMaterial();

	MVPMatrix = camera->getProjMatrix() * camera->getViewMatrix() * currentGameObject->getModelMatrix();

	if (currentGameObject->getShaderProgram() > 0)
	{
		currentShaderProgram = currentGameObject->getShaderProgram();

	}
	glUseProgram(currentShaderProgram);
	light->setUpLight(currentShaderProgram);
	currentGameObject->setUpGameObjectMaterial();

	//General uniforms
	GLint MVPLocation = glGetUniformLocation(currentShaderProgram, "MVP");
	GLint ModelLocation = glGetUniformLocation(currentShaderProgram, "Model");
	GLint CameraLocation = glGetUniformLocation(currentShaderProgram, "cameraPosition");
	GLint texture0Location = glGetUniformLocation(currentShaderProgram, "texture0");
	GLint cubeTextureLocation = glGetUniformLocation(currentShaderProgram, "cubeTexture");

	//Texture/Lighting shader uniforms
	GLint EyePosWLocation = glGetUniformLocation(currentShaderProgram, "EyePosW");
	GLint LightPosWLocation = glGetUniformLocation(currentShaderProgram, "LightPosW");
	GLint LightColorLocation = glGetUniformLocation(currentShaderProgram, "LightColor");
	GLint MaterialEmissiveLocation = glGetUniformLocation(currentShaderProgram, "MaterialEmissive");
	GLint MaterialDiffuseLocation = glGetUniformLocation(currentShaderProgram, "MaterialDiffuse");
	GLint MaterialSpecularLocation = glGetUniformLocation(currentShaderProgram, "MaterialSpecular");
	GLint MaterialShininessLocation = glGetUniformLocation(currentShaderProgram, "MaterialShininess");
	GLint AmbientLocation = glGetUniformLocation(currentShaderProgram, "Ambient");
	
	//Cel shading uniforms
	GLint toonTextureLocation = glGetUniformLocation(currentShaderProgram, "toonShade");
	//GLint numberOfColoursLocation = glGetUniformLocation(currentShaderProgram, "numberOfColours");

	if (matTemp->getDiffuseMap()>0)
		currentDiffuseMap = matTemp->getDiffuseMap();
	
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, currentDiffuseMap);

	glActiveTexture(GL_TEXTURE1);
	glBindTexture(GL_TEXTURE_CUBE_MAP, matTemp->getEnvironmentMap());

	glActiveTexture(GL_TEXTURE2);
	glBindTexture(GL_TEXTURE_CUBE_MAP, matTemp->getToonMap());



	glUniformMatrix3fv(CameraLocation, 1, GL_FALSE, value_ptr(camera->getCameraPos()));
	glUniformMatrix4fv(ModelLocation, 1, GL_FALSE, value_ptr(currentGameObject->getModelMatrix()));
	glUniformMatrix4fv(MVPLocation, 1, GL_FALSE, value_ptr(MVPMatrix));
	glUniform1i(texture0Location, 0);
	glUniform1i(cubeTextureLocation, 1);
	glUniform1i(toonTextureLocation, 2);
	//glUniform1f(numberOfColoursLocation, 5);

	glUniform4fv(LightPosWLocation, 1, value_ptr(camera->getCameraPos()));
	glUniform4fv(LightColorLocation, 1, value_ptr(light->getSpecularLightColour()));
	glUniform4fv(AmbientLocation, 1, value_ptr(light->getAmbientLightColour()));
	glUniform4fv(EyePosWLocation, 1, value_ptr(camera->getCameraPos()));
	glUniform4fv(MaterialEmissiveLocation, 1, value_ptr(vec4(0.0f)));
	glUniform4fv(MaterialDiffuseLocation, 1, value_ptr(vec4(0.6f, 0.2f, 0.6f, 1.0f)));
	glUniform4fv(MaterialSpecularLocation, 1, value_ptr(vec4(1.0f)));
	glUniform1f(MaterialShininessLocation, 5.0f);
	

	if (currentGameObject->getVertexArrayObject() > 0)
	{
		glBindVertexArray(currentGameObject->getVertexArrayObject());
		glDrawElements(GL_TRIANGLES, currentGameObject->getNumberOfIndices(), GL_UNSIGNED_INT, 0);
	}

	for (int i = 0; i < currentGameObject->getNumberOfChildren(); i++)
	{
		renderGameObject(currentGameObject->getChild(i));
	}

}

void createFramebuffer()
{
	glActiveTexture(GL_TEXTURE6);
	glGenTextures(1, &FBOTexture);
	glBindTexture(GL_TEXTURE_2D, FBOTexture);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT, 0, GL_RGBA,
		GL_UNSIGNED_BYTE, NULL);


	glGenRenderbuffers(1, &FBODepthBuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, FBODepthBuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT32, FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT);
	glBindRenderbuffer(GL_RENDERBUFFER, 0);

	glGenFramebuffers(1, &frameBufferObject);
	glBindFramebuffer(GL_FRAMEBUFFER, frameBufferObject);
	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,GL_TEXTURE_2D, FBOTexture, 0);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT,GL_RENDERBUFFER, FBODepthBuffer);

	GLenum status;
	if ((status = glCheckFramebufferStatus(GL_FRAMEBUFFER)) != GL_FRAMEBUFFER_COMPLETE) {
		cout << "Issue with Framebuffers" << endl;
	}
	float vertices[] = {
		-1, -1,
		1, -1,
		-1, 1,
		1, 1,

	};

	glGenVertexArrays(1, &fullScreenVAO);
	glBindVertexArray(fullScreenVAO);

	glGenBuffers(1, &fullScreenVBO);
	glBindBuffer(GL_ARRAY_BUFFER, fullScreenVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

	glEnableVertexAttribArray(0);
	glVertexAttribPointer(
		0,					// attribute
		2,                  // number of elements per vertex, here (x,y)
		GL_FLOAT,           // the type of each element
		GL_FALSE,           // take our values as-is
		0,                  // no extra data between each position
		0                   // offset of first element
		);

	GLuint vertexShaderProgram = 0;
	string vsPath = ASSET_PATH + SHADER_PATH + "/simplePostProcessVS.glsl";
	vertexShaderProgram = loadShaderFromFile(vsPath, VERTEX_SHADER);
	checkForCompilerErrors(vertexShaderProgram);

	GLuint fragmentShaderProgram = 0;
	string fsPath = ASSET_PATH + SHADER_PATH + "/simplePostProcessFS.glsl";
	fragmentShaderProgram = loadShaderFromFile(fsPath, FRAGMENT_SHADER);
	checkForCompilerErrors(fragmentShaderProgram);

	fullScreenShaderProgram = glCreateProgram();
	glAttachShader(fullScreenShaderProgram, vertexShaderProgram);
	glAttachShader(fullScreenShaderProgram, fragmentShaderProgram);

	//Link attributes
	glBindAttribLocation(fullScreenShaderProgram, 0, "vertexPosition");
	glBindAttribLocation(fullScreenShaderProgram, 1, "vertexColour");
	glBindAttribLocation(fullScreenShaderProgram, 2, "vertexTexCoords");
	glBindAttribLocation(fullScreenShaderProgram, 3, "vertexNormal");

	glLinkProgram(fullScreenShaderProgram);
	checkForLinkErrors(fullScreenShaderProgram);
	//now we can delete the VS & FS Programs
	glDeleteShader(vertexShaderProgram);
	glDeleteShader(fragmentShaderProgram);
}

void initScene()
{
	camera->setCamPos(vec3(0.0, 0.0f, 20.0f));

	currentTicks = SDL_GetTicks();
	totalTime = 0.0f;

	//SDL_SetRelativeMouseMode(SDL_TRUE);

	//Creating Skybox
	shared_ptr<Mesh> skyBoxMesh = shared_ptr<Mesh>(new Mesh);
	skyBoxMesh->create(cubeVerts, numberOfCubeVerts, cubeIndices, numberOfCubeIndices);

	shared_ptr<Material> skyBoxMaterial = shared_ptr<Material>(new Material);
	string skyBoxFront = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayFront2048.png";
	string skyBoxBack = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayBack2048.png";
	string skyBoxLeft = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayLeft2048.png";
	string skyBoxRight = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayRight2048.png";
	string skyBoxTop = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayUp2048.png";
	string skyBoxBottom = ASSET_PATH + TEXTURE_PATH + "/Skybox/TropicalSunnyDayDown2048.png";
	skyBoxMaterial->loadSkyBoxTextures(skyBoxRight, skyBoxLeft, skyBoxTop, skyBoxBottom, skyBoxBack, skyBoxFront);

	string skyVS = ASSET_PATH + SHADER_PATH + "/skyVS.glsl";
	string skyFS = ASSET_PATH + SHADER_PATH + "/skyFS.glsl";
	skyBoxMaterial->loadShader(skyVS, skyFS);
	skyBox = shared_ptr<GameObject>(new GameObject);
	skyBox->setMesh(skyBoxMesh);
	skyBox->setMaterial(skyBoxMaterial);
	skyBox->update();

	createFramebuffer();

	//Create various materials
	string vsPath = ASSET_PATH + SHADER_PATH + "/specularVS.glsl";
	string fsPath = ASSET_PATH + SHADER_PATH + "/specularFS.glsl";
	string texturePath = ASSET_PATH + TEXTURE_PATH + "/texture.png";

	shared_ptr<Material> specularMaterial = shared_ptr<Material>(new Material);
	shared_ptr<Material> textureMaterial = shared_ptr<Material>(new Material);
	shared_ptr<Material> texturedLightMaterial = shared_ptr<Material>(new Material);
	shared_ptr<Material> toonShadingMaterial = shared_ptr<Material>(new Material);



	//Object 1 - Teapot Specular Reflections
	string modelPath = ASSET_PATH + MODEL_PATH + "/utah-teapot.fbx";
	shared_ptr<GameObject> teapot = loadFBXFromFile(modelPath);
	teapot->setPosition(vec3(-80.0, 50.0, 0.0f));
	teapot->setScale(vec3(0.1f, 0.1f, 0.1f));
	specularMaterial->loadShader(vsPath, fsPath);
	specularMaterial->setDiffuseMaterial(vec4(0.5f, 0.0f, 0.0f, 1.0f));
	teapot->setMaterial(specularMaterial);
	gameObjects.push_back(teapot);

	//Object 2 - Textured Teapot
	shared_ptr<GameObject> teapot2 = loadFBXFromFile(modelPath);
	teapot2->setPosition(vec3(-30.0, 50.0, 0.0));
	teapot2->setScale(vec3(0.1f, 0.1f, 0.1f));
	vsPath = ASSET_PATH + SHADER_PATH + "/textureVS.glsl";
	fsPath = ASSET_PATH + SHADER_PATH + "/textureFS.glsl";
	textureMaterial->loadShader(vsPath, fsPath);
	textureMaterial->loadDiffuseMap(texturePath);
	teapot2->setMaterial(textureMaterial);
	gameObjects.push_back(teapot2);
	
	//Object 3 - Light/Textured teapot
	shared_ptr<GameObject> teapot3 = loadFBXFromFile(modelPath);
	teapot3->setPosition(vec3(20.0, 50.0, 0.0));
	teapot3->setScale(vec3(0.1f, 0.1f, 0.1f));
	vsPath = ASSET_PATH + SHADER_PATH + "/lightTextureVS.glsl";
	fsPath = ASSET_PATH + SHADER_PATH + "/lightTextureFS.glsl";
	texturedLightMaterial->loadShader(vsPath, fsPath);
	texturedLightMaterial->loadDiffuseMap(texturePath);
	teapot3->setMaterial(texturedLightMaterial);
	gameObjects.push_back(teapot3);

	//Object 4 - Toon Shading teapot
	shared_ptr<GameObject> teapot4 = loadFBXFromFile(modelPath);
	teapot4->setPosition(vec3(70.0, 50.0, 0.0));
	teapot4->setScale(vec3(0.1f, 0.1f, 0.1f));
	vsPath = ASSET_PATH + SHADER_PATH + "/specularVS.glsl";
	fsPath = ASSET_PATH + SHADER_PATH + "/specularToonFS.glsl";
	toonShadingMaterial->loadShader(vsPath, fsPath);
	teapot4->setMaterial(toonShadingMaterial);
	toonShadingMaterial->setDiffuseMaterial(vec4(0.6f, 0.2f, 0.4f, 1.0f));
	float textureData[] = { 0, 0, 0, 50, 50, 50, 100, 100, 100, 150, 150, 150, 200, 200, 200, 255, 255, 255 };
	toonShadingMaterial->loadToonMap(textureData, 6);
	gameObjects.push_back(teapot4);


	//Particle System
	shared_ptr<Material> particleMaterial = shared_ptr<Material>(new Material);
	vsPath = ASSET_PATH + SHADER_PATH + "/particleVS.glsl";
	fsPath = ASSET_PATH + SHADER_PATH + "/particleFS.glsl";
	string gsPath = ASSET_PATH + SHADER_PATH + "/particleGS.glsl";
	texturePath = ASSET_PATH + TEXTURE_PATH + "/particle.png";
	particleMaterial->loadShader(vsPath, fsPath, gsPath);
	particleMaterial->loadDiffuseMap(texturePath);

	particles = shared_ptr<ParticleSystem>(new ParticleSystem);
	particles->setMaterial(particleMaterial);
	//Init a particle desc and pass it in
	ParticleDesc desc;
	desc.minPosition = vec3(-10.0f, 0.0f, -5.0f);
	desc.maxPosition = vec3(10.0f, 0.0f, 5.0f);
	desc.minColour = vec4(0.0f, 0.0f, 0.0f, 1.0f);
	desc.maxColour = vec4(1.0f, 1.0f, 1.0f, 1.0f);
	desc.minSize = 0.2f;
	desc.maxSize = 1.0f;
	desc.minForce = vec3(-1.0f, 1.0f, -1.0f);
	desc.maxForce = vec3(1.0f, 2.0f, 1.0f);
	desc.minMass = 0.1f;
	desc.maxMass = 0.1f;
	desc.minLife = 1.0f;
	desc.maxLife = 4.0f;
	particles->create(vec3(0.0f, -5.0f, -5.0f), 2500, desc);


	//string fontPath = ASSET_PATH + FONT_PATH + "OratorStd.otf";
	//fontTextureMap = loadTextureFromFont(fontPath, 18, (string**)fps + "FPS");

}


void cleanUpFramebuffer()
{
	glDeleteProgram(fullScreenShaderProgram);
	glDeleteBuffers(1, &fullScreenVBO);
	glDeleteVertexArrays(1, &fullScreenVAO);
	glDeleteFramebuffers(1, &frameBufferObject);
	glDeleteRenderbuffers(1, &FBODepthBuffer);
	glDeleteTextures(1, &FBOTexture);
}

void cleanUp()
{
	cleanUpFramebuffer();
	gameObjects.clear();

}

void update()
{
	lastTicks = currentTicks;
	currentTicks = SDL_GetTicks();
	elapsedTime = (currentTicks - lastTicks) / 1000.0f;
	totalTime += elapsedTime;


	camera->onUpdate();

	for (auto iter = gameObjects.begin(); iter != gameObjects.end(); iter++)
	{
		(*iter)->update();
	}

	particles->update(elapsedTime);


}

void renderScene()
{
	glBindFramebuffer(GL_FRAMEBUFFER, frameBufferObject);
	//Set the clear colour(background)
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	//clear the colour and depth buffer
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


	glDepthMask(GL_FALSE);
	renderGameObject(skyBox);
	glDepthMask(GL_TRUE);

	for (auto iter = gameObjects.begin(); iter != gameObjects.end(); iter++)
	{
		renderGameObject((*iter));

	}
}

void renderPostProcessing()
{
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	//Set the clear colour(background)
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	//clear the colour and depth buffer
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glUseProgram(fullScreenShaderProgram);

	GLint textureLocation = glGetUniformLocation(fullScreenShaderProgram, "texture0");
	GLint timeLocation = glGetUniformLocation(fullScreenShaderProgram, "time");
	GLint resolutionLocation = glGetUniformLocation(fullScreenShaderProgram, "resolution");

	glUniform1f(timeLocation, totalTime);
	glUniform2fv(resolutionLocation, 1, value_ptr(resolution));

	glActiveTexture(GL_TEXTURE6);
	glBindTexture(GL_TEXTURE_2D, FBOTexture);
	glUniform1i(textureLocation, 6);

	glBindVertexArray(fullScreenVAO);

	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

}

void render()
{
	renderScene();

	mat4 VP = camera->getProjMatrix() * camera->getViewMatrix();
	particles->render(VP, currentShaderProgram);

	renderPostProcessing();
}

int main(int argc, char * arg[])
{
	ChangeWorkingDirectory();
	//Controls the game loop
	bool run = true;

	// init everyting - SDL, if it is nonzero we have a problem
	if (SDL_Init(SDL_INIT_EVERYTHING) != 0)
	{
		std::cout << "ERROR SDL_Init " << SDL_GetError() << std::endl;

		return -1;
	}
	
	int	imageInitFlags = IMG_INIT_JPG | IMG_INIT_PNG;
	int	returnInitFlags = IMG_Init(imageInitFlags);
	if (((returnInitFlags)&	(imageInitFlags)) != imageInitFlags)	{

		cout << "ERROR	SDL_Image	Init	" << IMG_GetError() << endl;
	}

	if (TTF_Init() == -1)	{
		std::cout << "ERROR	TTF_Init:	" << TTF_GetError();
	}

	//Request opengl 4.1 context, Core Context
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
	SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);

	//Create a window
	SDL_Window * window = SDL_CreateWindow(
		"SDL",             // window title
		SDL_WINDOWPOS_CENTERED,     // x position, centered
		SDL_WINDOWPOS_CENTERED,     // y position, centered
		640,                        // width, in pixels
		480,                        // height, in pixels
		SDL_WINDOW_OPENGL           // flags
		);

	// Create an OpenGL context associated with the window.
	SDL_GLContext glcontext = SDL_GL_CreateContext(window);

	//Call our InitOpenGL Function
	initOpenGL();
	//Set our viewport
	setViewport(640, 480);

	initScene();
	//Value to hold the event generated by SDL
	SDL_Event event;

	Uint32 currentTime = SDL_GetTicks();

	//Game Loop
	while (run)
	{
		Uint32 newTime = SDL_GetTicks();
		Uint32 deltaTime = newTime - currentTime;
		frames++;

		fps = (frames / (double)deltaTime) * 1000;
		printf("%f FPS\n", fps);

		//While we still have events in the queue
		while (SDL_PollEvent(&event))
		{
			//Get event type
			if (event.type == SDL_QUIT || event.type == SDL_WINDOWEVENT_CLOSE)
			{
				//set our boolean which controls the loop to false
				run = false;
			}
			if (event.type == SDL_KEYDOWN)
			{
				input->setInputEvent(event);
				input->inputDetection(camera);
			}
			if (event.type == SDL_MOUSEMOTION)
			{
				int x, y;
				SDL_GetMouseState(&x, &y);
				//input->mouseControl(camera, x, y);
			}
	
		}
		//init Scene
		update();
		//render
		render();
		//Call swap so that our GL back buffer is displayed
		SDL_GL_SwapWindow(window);

	}

	// clean up, reverse order!!!
	cleanUp();
	SDL_GL_DeleteContext(glcontext);
	SDL_DestroyWindow(window);
	IMG_Quit();
	TTF_Quit();
	SDL_Quit();

	return 0;
}
