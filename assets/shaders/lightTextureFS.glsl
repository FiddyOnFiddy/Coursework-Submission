#version 150

in vec4 worldPos;
in vec4 worldSurfaceNormal;
in vec2 vertexTexCoordsOut2;

uniform vec4 EyePosW;
uniform vec4 LightPosW;
uniform vec4 LightColor;

uniform vec4 MaterialEmissive;
uniform vec4 MaterialDiffuse;
uniform vec4 MaterialSpecular;
uniform float MaterialShininess;

uniform vec4 Ambient;

uniform sampler2D diffuseSampler

out vec4 FragColor;


void main()
{
  	
}