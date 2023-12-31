# OpenGL Tutorial Project

Hello! This project represents my first foray into OpenGL, a graphics library that enables rendering 2D and 3D graphics. 
The primary goal was for me to gain hands-on experience with OpenGL, GLFW, GLEW, ImGui, and glm while exploring fundamental
graphics concepts such as Vertex Buffers, Vertex Arrays, Index Buffers, Shaders, and Textures. I've been interested in learning
graphics programming for a while, and this was a great first step in learning the fundamentals I'll need!

## Overview

The application opens a new window and presents an ImGui pop-up offering various rendering tests. Notable features include
the ability to change the color of the window and the rendering of two separate textured objects that can be translated in 
real time.

## Key Components and Concepts

### OpenGL Libraries Used

- **GLFW:** A multi-platform library for creating windows with OpenGL contexts.
- **GLEW:** The OpenGL Extension Wrangler Library for managing OpenGL extensions.
- **ImGui:** A GUI library for creating graphical user interfaces within OpenGL applications.
- **glm:** A mathematics library for graphics programming, providing vectors, matrices, and other mathematical utilities.

### Graphics Concepts Explored

- **Vertex Buffers and Vertex Arrays:** Storage and organization of vertex data for efficient rendering.
- **Index Buffers:** Efficient representation of mesh data by reusing vertices.
- **Shaders:** Programs executed on the GPU for rendering graphics. Written in a .shader file and parsed in Shader.h.
- **Textures:** Images applied to 2D shapes, in this case two triangles that make a square.

## Development Environment

- **IDE:** Visual Studio Code
- **Operating System:** macOS Sonoma 14.1
- **Chip:** M2

## Modifications for macOS

The project is based on The Cherno's OpenGL series, and adjustments were necessary to make it compatible with macOS. 
The primary modification involved the creation of a Makefile for compiling all necessary components. The Makefile 
ensures that the project can be compiled successfully on a macOS environment.

## Running the Project

1. Clone the repository to your local machine.
   ```
   git clone https://github.com/your-username/OpenGL-Tutorial.git
   ```

2. Navigate to the project directory.
   ```
   cd OpenGL-Tutorial
   ```

3. Run the make command to compile the project.
   ```
   make
   ```

4. Once compilation is complete, run the executable.
   ```
   bin/myApp
   ```

## Acknowledgments

Special thanks to The Cherno for the insightful OpenGL series. The provided YouTube link served as a valuable 
resource for understanding and implementing OpenGL concepts.

[OpenGL Tutorial by The Cherno](https://youtu.be/W3gAzLwfIP0?si=amFZU2QVf2hMOfmy)

## License

This project is licensed under the [MIT License](LICENSE.md). Hey, I know MIT!
