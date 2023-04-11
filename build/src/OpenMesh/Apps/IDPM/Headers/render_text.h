// Source: https://github.com/JoeyDeVries/LearnOpenGL/blob/master/src/7.in_practice/2.text_rendering/

#ifndef RENDERTEXT_H
#define RENDERTEXT_H

#include <GL/GL.h> // include glad to get the required OpenGL headers

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <iostream>
#include <map>
#include <string>

#include <ft2build.h>
#include FT_FREETYPE_H

#include "Headers/shader.h"
#include "Headers/filesystem.h"


/// Holds all state information relevant to a character as loaded using FreeType
struct Character {
	unsigned int TextureID; // ID handle of the glyph texture
	glm::ivec2   Size;      // Size of glyph
	glm::ivec2   Bearing;   // Offset from baseline to left/top of glyph
	unsigned int Advance;   // Horizontal offset to advance to next glyph
};


// set up FreeType
// -------------------
int SetUpFreeType(std::map<GLchar, Character>* Characters);

	// render line of text
	// -------------------
void RenderText(Shader& shader, std::string text, std::map<GLchar, Character>& Characters, GLuint& VAO, GLuint& VBO, float x, float y, float scale, glm::vec3 color);

#endif