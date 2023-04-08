#include <GL/GL.h>
#include <glfw/glfw3.h>
//#include <GL/freeglut.h>					// GLUT, includes glu.h and gl.h

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <stdio.h>
#include <iostream>
#include <vector>
#include <string>

#include "Headers/window.h"
#include "Headers/render_text.h"
#include "Headers/shader.h"
#include "Headers/filesystem.h"
#include "Headers/camera.h"
#include "Headers/model.h"

#include "Headers/drawNPR.h"

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void mouse_callback(GLFWwindow* window, double xpos, double ypos);
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
void processMovement(GLFWwindow* window, CameraInfo* cameraInfo, TimingInfo* timingInfo);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
void configureFBO(Window* window, GLuint* FBO, vector<GLuint*>* textures, bool multisample, bool mipmap, bool depthOrStencil);

int main(int argc, char** argv)
{
	drawNPR();
}