#version 150

layout (points) in;
layout (triangle_strip, max_vertices = 4) out;

//These become arrays in GS
in vec4 colourGS[];
in float sizeGS[];
in vec2 textureCoordsGS[];

out vec4 colourFS;
out vec2 textureCoordsFS;

void main() {
    //0 since we know that there is only one vertex
    float size=sizeGS[0];
    //Top right
    gl_Position = gl_in[0].gl_Position+vec4(-size/2.0f,size/2.0f,0.0f,0.0f);
    colourFS=colourGS[0];
    textureCoordsFS=vec2(0.0f,1.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(-size/2.0f,-size/2.0f,0.0f,0.0f);
    colourFS=colourGS[0];
    textureCoordsFS=vec2(0.0f,0.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(size/2.0f,size/2.0f,0.0f,0.0f);
    colourFS=colourGS[0];
    textureCoordsFS=vec2(1.0f,1.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(size/2.0f,-size/2.0f,0.0f,0.0f);
    colourFS=colourGS[0];
    textureCoordsFS=vec2(1.0f,0.0f);
    EmitVertex();
    EndPrimitive();
}
