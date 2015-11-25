#include "Material.h"
#include "Shader.h"
#include "Texture.h"

Material::Material()
{
	m_ShaderProgram = 0;

	m_AmbientMaterial = vec4(0.2f, 0.2f, 0.2f, 1.0f);
	m_DiffuseMaterial = vec4(0.6f, 0.6f, 0.6f, 1.0f);
	m_SpecularMaterial = vec4(1.0f, 1.0f, 1.0f, 1.0f);
	m_SpecularPower = 20.0f;
	m_DiffuseMap = 0;
}

Material::~Material()
{
	glDeleteProgram(m_ShaderProgram);
	glDeleteTextures(1, &m_DiffuseMap);
}

void Material::loadShader(const string& vsFilename, const string& fsFilename)
{
	GLuint vertexShaderProgram = 0;
	vertexShaderProgram = loadShaderFromFile(vsFilename, VERTEX_SHADER);
	checkForCompilerErrors(vertexShaderProgram);

	GLuint fragmentShaderProgram = 0;
	fragmentShaderProgram = loadShaderFromFile(fsFilename, FRAGMENT_SHADER);
	checkForCompilerErrors(fragmentShaderProgram);

	m_ShaderProgram = glCreateProgram();
	glAttachShader(m_ShaderProgram, vertexShaderProgram);
	glAttachShader(m_ShaderProgram, fragmentShaderProgram);

	//Link attributes
	glBindAttribLocation(m_ShaderProgram, 0, "vertexPosition");
	glBindAttribLocation(m_ShaderProgram, 1, "vertexColour");
	glBindAttribLocation(m_ShaderProgram, 2, "vertexTexCoords");
	glBindAttribLocation(m_ShaderProgram, 3, "vertexNormal");

	glLinkProgram(m_ShaderProgram);
	checkForLinkErrors(m_ShaderProgram);
	//now we can delete the VS & FS Programs
	glDeleteShader(vertexShaderProgram);
	glDeleteShader(fragmentShaderProgram);
}

void Material::loadDiffuseMap(const string& filename)
{
	m_DiffuseMap = loadTextureFromFile(filename);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
}

void Material::setUpUniforms()
{
	GLint ambientMaterialColourLocation = glGetUniformLocation(m_ShaderProgram, "ambientMaterialColour");
	glUniform4fv(ambientMaterialColourLocation, 1, value_ptr(m_AmbientMaterial));

	GLint diffuseLightMaterialLocation = glGetUniformLocation(m_ShaderProgram, "diffuseMaterialColour");
	glUniform4fv(diffuseLightMaterialLocation, 1, value_ptr(m_DiffuseMaterial));

	GLint specularLightMaterialLocation = glGetUniformLocation(m_ShaderProgram, "specularMaterialColour");
	glUniform4fv(specularLightMaterialLocation, 1, value_ptr(m_SpecularMaterial));

	GLint specularPowerLocation = glGetUniformLocation(m_ShaderProgram, "specularPower");
	glUniform1f(specularPowerLocation, m_SpecularPower);
}