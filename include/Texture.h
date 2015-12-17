#ifndef _TEXTURE_H
#define _TEXTURE_H

#include "Common.h"

GLuint	loadTextureFromFile(const string& filename);

GLuint	loadTextureFromFont(const string& fontFilename, int	pointSize, const string& text);

GLuint  loadCubeTexture(const string& skyBoxRight, const string& skyBoxLeft, const string& skyBoxTop, const string& skyBoxBottom, const string& skyBoxBack, const string& skyBoxFront);

GLuint convertSDLSurfaceToTexture(SDL_Surface * surface);

GLuint create1DTexture(float *pData, int width);

void loadCubeMapFace(const string& filename, GLenum face);

#endif