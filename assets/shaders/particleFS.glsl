#version 150

out vec4 FragColor;

in vec2 textureCoordsFS;
in vec4 colourFS;

uniform	sampler2D texture0;

void main()
{
  FragColor = texture(texture0, textureCoordsFS)*colourFS;
}
