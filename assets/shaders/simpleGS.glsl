#version 150

layout (points) in;
layout (triangle_strip, max_vertices = 4) out;

void main() {
    //this should be a vertex parameter
    float size=10.0f;
    //Top right
    gl_Position = gl_in[0].gl_Position+vec4(-size/2.0f,size/2.0f,0.0f,0.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(-size/2.0f,-size/2.0f,0.0f,0.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(size/2.0f,-size/2.0f,0.0f,0.0f);
    EmitVertex();
    gl_Position = gl_in[0].gl_Position+vec4(size/2.0f,size/2.0f,0.0f,0.0f);
    EmitVertex();
    EndPrimitive();
}