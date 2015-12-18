#include "Input.h"
#include "Common.h"

Input::Input()
{
	initX = 320;
	initY = 240;
	sensitivity = 0.02f;
	first = true;
}

Input::~Input()
{

}

void Input::mouseControl(shared_ptr<Camera> camera, GLfloat x, GLfloat y)
{
	//xOffset = inputEvent.motion.xrel;
	//yOffset = inputEvent.motion.yrel;

	if (first)
	{
		initX = x;
		initY = y;
		first = false;
	}

	xOffset = x - initX;
	yOffset = initY - y;
	initX = x;
	initY = y;

	xOffset *= sensitivity;
	yOffset *= sensitivity;

	yaw += xOffset;
	pitch += yOffset;

	if (pitch > 89.0f)
	{
		pitch = 89.0f;
	}
	if (pitch < -89.0f)
	{
		pitch = -89.0f;
	}

	front.x = cos(radians(pitch)) * cos(radians(yaw));
	front.y = sin(radians(pitch));
	front.z = cos(radians(pitch)) * sin(radians(yaw));
	camera->setCameraFront(glm::normalize(front));

}

void Input::inputDetection(shared_ptr<Camera> camera)
{
	keyState = SDL_GetKeyboardState(NULL);

	if (keyState[SDL_SCANCODE_UP])
	{
		camera->moveForward();
		cout << "up" << endl;
	}
	if (keyState[SDL_SCANCODE_DOWN])
	{
		camera->moveBackward();
		cout << "down" << endl;
	}
	if (keyState[SDL_SCANCODE_LEFT])
	{
		camera->moveLeft();
		cout << "left" << endl;
	}
	if (keyState[SDL_SCANCODE_RIGHT])
	{
		camera->moveRight();
		cout << "right" << endl;
	}
	if (keyState[SDL_SCANCODE_C])
	{
		camera->setCamPos(vec3(0.0f, 0.0f, 10.0f));
		camera->setCamLook(vec3(0.0f, 0.0f, 0.0f));
		cout << "Camera Change" << endl;
	}
}