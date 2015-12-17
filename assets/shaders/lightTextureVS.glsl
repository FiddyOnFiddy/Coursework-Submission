#version 150

in vec3 vertexPosition;
in vec3 vertexNormal;
in vec2 vertexTexCoords;

out vec4 worldPos;
out vec4 worldSurfaceNormal;
out vec2 vertexTexCoords2;


uniform mat4 MVP;
uniform mat4 Model;

void main()
{
  	gl_Position = MVP * vec4(vertexPosition, 1.0);

	worldPos = Model * vec4(vertexPosition, 1.0);
	worldSurfaceNormal = Model* vec4(vertexNormal, 0);
	vertexTexCoords2= vertexTexCoords;
}