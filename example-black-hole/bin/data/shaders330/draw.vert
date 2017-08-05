#version 330

uniform mat4 modelViewProjectionMatrix;
uniform sampler2DRect particles0; // pos
uniform sampler2DRect particles1; // vel
uniform sampler2DRect particles2; // clr

in vec4  position;
in vec2  texcoord;

out vec2 texCoordVarying;
out vec4 fragColorVarying;

void main()
{
    texCoordVarying = texcoord;
    fragColorVarying = texture(particles2, texCoordVarying);
    gl_Position = modelViewProjectionMatrix * vec4(texture(particles0, texCoordVarying).xyz, 1.0);
}
