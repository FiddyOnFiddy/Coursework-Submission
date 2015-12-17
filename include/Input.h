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

	void setInputEvent(SDL_Event tempEvent)
	{
		inputEvent = tempEvent;
	}
private:
	SDL_Event inputEvent;
	bool keys[1024];
	int keyPressed;
protected:
};

#endif