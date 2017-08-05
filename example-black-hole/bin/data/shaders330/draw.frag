#version 330

in vec4 fragColorVarying;
out vec4 fragColor;

void main()
{
    fragColor = fragColorVarying; //gl_Color; // vec4(1.0, 1.0, 1.0, 0.1);
}
