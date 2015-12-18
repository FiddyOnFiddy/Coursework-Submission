#ifndef _INPUT_H
#define _INPUT_H

#include "Common.h"
#include <Camera.h>

class Input
{
public:
	Input();
	~Input();

	void inputDetection(shared_ptr<Camera> camera);
	void mouseControl(shared_ptr<Camera> camera, GLfloat x, GLfloat y);

	void setInputEvent(SDL_Event tempEvent)
	{
		inputEvent = tempEvent;
	}

private:
	SDL_Event inputEvent;
	const Uint8* keyState;
	GLfloat sensitivity;

	GLfloat xOffset;
	GLfloat yOffset;
	GLfloat yaw;
	GLfloat pitch;
	GLfloat initX;
	GLfloat initY;

	bool first;

	vec3 front;

protected:
};

#endif