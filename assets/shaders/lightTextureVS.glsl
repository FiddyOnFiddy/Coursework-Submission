#version 150

in vec3 vertexPosition;
in vec3 vertexNormal;
in vec2 vertexTexCoordsOut;

out vec4 worldPos;
out vec4 worldSurfaceNormal;
out vec2 vertexTexCoordsOut2;


uniform mat4 MVP;
uniform mat4 Model;

void main()
{
  	gl_Position = MVP * vec4(vertexPosition, 1.0);

	worldPos = Model * vec4(vertexPosition, 1);
	worldSurfaceNormal = Model* vec4(vertexNormal, 0);
	vertexTexCoordsOut2 = vertexTexCoordsOut
}