#include "Input.h"
#include "Common.h"

Input::Input()
{
	sensitivity = 0.00002f;
	first = true;
}

Input::~Input()
{

}

void Input::mouseControl(shared_ptr<Camera> camera)
{
	xOffset = inputEvent.motion.xrel;
	yOffset = inputEvent.motion.yrel;

	if (first)
	{
		xOffset = inputEvent.motion.x;
		yOffset = inputEvent.motion.y;
		first = false;
	}

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

	front.x = cos(glm::radians(pitch)) * cos(glm::radians(yaw));
	front.y = sin(glm::radians(pitch));
	front.z = cos(glm::radians(pitch)) * sin(glm::radians(yaw));
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
}