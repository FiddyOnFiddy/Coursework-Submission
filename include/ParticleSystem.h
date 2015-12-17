#ifndef _PARTICLESYSTEM_H
#define _PARTICLESYSTEM_H

#include "Common.h"
#include "Material.h"

struct Particle
{
	vec3 position;
	vec3 currentVelocity;
	vec3 currentAcceleration;
	vec3 currentForce;
	vec4 colour;
	vec3 distance;
	float size;
	float life;
	float mass;

	bool operator < (const Particle& obj) const
	{
		return (distance.z > obj.distance.z);
	};
};

struct ParticleDesc
{
	vec3 minPosition;
	vec3 maxPosition;
	vec4 minColour;
	vec4 maxColour;
	vec3 minForce;
	vec3 maxForce;
	float minSize;
	float maxSize;
	float minMass;
	float maxMass;
	float minLife;
	float maxLife;
};

const int MAX_PARTICLE_COUNT = 10000;

class ParticleSystem
{
public:

	ParticleSystem();
	~ParticleSystem();
	
	void create(const vec3 &initialPosition, int count, ParticleDesc &desc);
	void resetParticle(Particle &p, ParticleDesc & desc);
	void update(float elapsedTime);
	void render(mat4& VP, GLuint currentShaderProgram);

	void updateParticle(Particle &p, float elapsedTime);

	void setMaterial(shared_ptr<Material> material)
	{
		m_Material = material;
	}

private:

	vector<Particle> m_Particles;

	GLuint m_VAO;
	GLuint m_VBO;

	shared_ptr<Material> m_Material;

	float m_Gravity;
	vec3 m_Position;
	mat4 m_Model;

	ParticleDesc m_Description;

protected:


};
#endif