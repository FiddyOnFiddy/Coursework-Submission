#include "ParticleSystem.h"
#include <glm/gtc/random.hpp>
#include <algorithm>

ParticleSystem::ParticleSystem()
{
	m_Particles.clear();
	m_VAO = 0;
	m_VBO = 0;
	m_Material = shared_ptr<Material>(NULL);
	m_Gravity = 0.0f;
	m_Position = vec3(0.0f, 0.0f, 0.0f);
	m_Model = mat4(1.0f);
}

ParticleSystem::~ParticleSystem()
{
	m_Particles.clear();
	glDeleteBuffers(1, &m_VBO);
	glDeleteVertexArrays(1, &m_VAO);
}

void ParticleSystem::resetParticle(Particle &p, ParticleDesc &desc)
{
	p.position = linearRand(desc.minPosition, desc.maxPosition);
	p.colour = linearRand(desc.minColour, desc.maxColour);
	p.size = linearRand(desc.minSize, desc.maxSize);
	p.currentForce = linearRand(desc.minForce, desc.maxForce);
	p.mass = linearRand(desc.minMass, desc.maxMass);
	p.life = linearRand(desc.minLife, desc.maxLife);
	p.currentAcceleration = vec3(0.0f, 0.0f, 0.0f);
	p.currentVelocity = vec3(0.0f, 0.0f, 0.0f);
	p.distance = m_Position - p.position;
}

void ParticleSystem::create(const vec3 &initialPosition, int count, ParticleDesc &desc)
{
	m_Description = desc;
	srand(time(NULL));
	m_Position = initialPosition;

	for (int i = 0; i < count; i++)
	{
		Particle p;
		resetParticle(p, desc);

		m_Particles.push_back(p);
	}

	glGenVertexArrays(1, &m_VAO);
	glBindVertexArray(m_VAO);

	glGenBuffers(1, &m_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, m_VBO);

	glBufferData(GL_ARRAY_BUFFER, count*sizeof(Particle), NULL, GL_DYNAMIC_DRAW);

	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Particle), (void*)offsetof(Particle, position));

	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, sizeof(Particle), (void*)offsetof(Particle, colour));

	glEnableVertexAttribArray(2);
	glVertexAttribPointer(2, 1, GL_FLOAT, GL_FALSE, sizeof(Particle), (void*)offsetof(Particle, size));

}

void ParticleSystem::updateParticle(Particle &p, float elapsedTime)
{
	p.currentForce += vec3(0.0f, 1.0f, 0.0f) * m_Gravity;
	p.currentAcceleration = p.currentForce / p.mass;
	p.currentVelocity += p.currentAcceleration * elapsedTime;

	p.position += p.currentVelocity * elapsedTime;
	p.distance = m_Position - p.position;
	p.life -= elapsedTime;

	if (p.life<0)
	{
		resetParticle(p, m_Description);
	}
}


void ParticleSystem::update(float elapsedTime)
{
	//Update all the particles
	for (auto iter = m_Particles.begin(); iter != m_Particles.end(); iter++)
	{
		updateParticle((*iter), elapsedTime);
	}

	glBindVertexArray(m_VAO);
	glBufferSubData(GL_ARRAY_BUFFER, 0, m_Particles.size() * sizeof(Particle), &m_Particles[0]);

	m_Model = translate(mat4(1.0f), m_Position);
	std::sort(m_Particles.begin(), m_Particles.end());
}

void ParticleSystem::render(mat4& VP, GLuint currentShaderProgram)
{
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glDepthMask(false);

	m_Material->bind();
	mat4 MVPMatrix = VP*m_Model;
	GLint MVPLocation = glGetUniformLocation(currentShaderProgram, "MVP");
	glUniformMatrix4fv(MVPLocation, 1, GL_FALSE, value_ptr(MVPMatrix));

	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, m_Material->getDiffuseMap());
	GLint texture0Location = glGetUniformLocation(currentShaderProgram, "texture0");
	glUniform1i(texture0Location, 0);

	glBindVertexArray(m_VAO);

	glDrawArrays(GL_POINTS, 0, m_Particles.size()*sizeof(Particle));

	glDisable(GL_BLEND);
	glDepthMask(true);
}