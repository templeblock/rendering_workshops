#version 330 core
/// @brief the vertex passed in
layout (location = 0) in vec3 inVert;
/// @brief the normal passed in
layout (location = 1) in vec3 inNormal;
/// @brief the in uv
layout (location = 2) in vec2 inUV;
// The input maximum principle curvature vector
layout (location = 3) in vec3 inK1;
// The input minimum principle curvature vector
layout (location = 4) in vec3 inK2;

// The standard MVP matrix
uniform mat4 MVP;

// The attributes below are to be passed on to the Geometry Shader
out vec4 normal;
out vec4 K1;
out vec4 K2;

void main(void)
{
        gl_Position = MVP*vec4(inVert,1);
        normal=MVP*vec4(inNormal,0);
        K1=MVP*vec4(inK1,0);
        K2=MVP*vec4(inK2,0);
}

