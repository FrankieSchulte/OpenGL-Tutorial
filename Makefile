CXX = clang++
CXXFLAGS = -std=c++17 -I./src/vendors/GLEW -I./src/vendors/GLFW
LDFLAGS = -L./src/vendors/GLFW/lib -L./src/vendors/GLEW/lib
LIBS = -lglfw3 -lGLEW -framework Cocoa -framework IOKit -framework CoreVideo -framework OpenGL

SRC_DIR = ./src
BUILD_DIR = ./bin
TARGET = $(BUILD_DIR)/myApp

# Add ImGui source files to the list
IMGUI_SRC_DIR = ./src/vendors/imgui
IMGUI_SRCS = $(IMGUI_SRC_DIR)/imgui.cpp $(IMGUI_SRC_DIR)/imgui_demo.cpp $(IMGUI_SRC_DIR)/imgui_draw.cpp \
             $(IMGUI_SRC_DIR)/imgui_widgets.cpp $(IMGUI_SRC_DIR)/imgui_tables.cpp
IMGUI_IMPL_SRCS = $(IMGUI_SRC_DIR)/imgui_impl_glfw.cpp $(IMGUI_SRC_DIR)/imgui_impl_opengl3.cpp

# Add ImGui source files to the list of object files
IMGUI_OBJS = $(IMGUI_SRCS:$(IMGUI_SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o) \
             $(IMGUI_IMPL_SRCS:$(IMGUI_SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Test source files
TEST_SRC_DIR = ./src/tests
TEST_SRCS = $(wildcard $(TEST_SRC_DIR)/*.cpp)
TEST_OBJS = $(TEST_SRCS:$(TEST_SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# List of source files
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
SRCS += $(wildcard $(SRC_DIR)/src/*.cpp)

# List of object files
OBJS = $(SRCS:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o) $(IMGUI_OBJS) $(TEST_OBJS)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: $(IMGUI_SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: $(TEST_SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean

clean:
	rm -f $(BUILD_DIR)/*.o $(TARGET)