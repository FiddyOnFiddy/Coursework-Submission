#version 150

in vec3 vertexPosition;
in vec4 colour;
in float size;

out vec4 colourGS;
out float sizeGS;
out vec2 textureCoordsGS;

uniform mat4 MVP;

void main()
{
  gl_Position = MVP * vec4(vertexPosition, 1.0);
  colourGS=colour;
  sizeGS=size;
  textureCoordsGS=vec2(0.0f);
}