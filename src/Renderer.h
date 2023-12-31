#pragma once

#define GLEW_STATIC
#include "vendors/GLEW/glew.h"

#include "VertexArray.h"
#include "IndexBuffer.h"
#include "Shader.h"

// Function to check OpenGL errors and print them
void checkGLError(const char* function);

class Renderer
{
    public:
        void Clear() const;
        void Draw(const VertexArray& va, const IndexBuffer& ib, const Shader& shader) const;
};