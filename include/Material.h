#ifndef _MATERIAL_H_
#define _MATERIAL_H_

#include "Common.h"

class Material
{
public:
	Material();
	~Material();
	
	void loadShader(const string& vsFilename, const string& fsFilename);
	void loadDiffuseMap(const string& filename);
	void setUpUniforms();
	void loadSkyBoxTextures(const string& skyBoxRight, const string& skyBoxLeft, const string& skyBoxTop, const string& skyBoxBottom, const string& skyBoxBack, const string& skyBoxFront);

	GLuint getShaderProgram()
	{
		return m_ShaderProgram;
	};

	vec4& getAmbientMaterial()
	{
		return m_AmbientMaterial;
	};

	vec4& getDiffuseMaterial()
	{
		return m_DiffuseMaterial;
	};

	vec4& getSpecularMaterial()
	{
		return m_SpecularMaterial;
	};

	float getSpecularPower()
	{
		return m_SpecularPower;
	};

	GLuint getDiffuseMap()
	{
		return m_DiffuseMap;
	};

	GLuint getEnvironmentMap()
	{
		return m_EnvironmentMap;
	};

private:
	GLuint m_ShaderProgram;

	vec4 m_AmbientMaterial;
	vec4 m_DiffuseMaterial;
	vec4 m_SpecularMaterial;
	float m_SpecularPower;

	GLuint m_DiffuseMap;
	GLuint m_EnvironmentMap;

};
#endif