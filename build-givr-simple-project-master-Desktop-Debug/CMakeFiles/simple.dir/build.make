# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/uga/smithcg/Desktop/CPSC587/CPSC587A3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple.dir/flags.make

CMakeFiles/simple.dir/libs/givr.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/libs/givr.cpp.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/givr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple.dir/libs/givr.cpp.o"
	/usr/lib64/ccache/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/libs/givr.cpp.o -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/givr.cpp

CMakeFiles/simple.dir/libs/givr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/libs/givr.cpp.i"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/givr.cpp > CMakeFiles/simple.dir/libs/givr.cpp.i

CMakeFiles/simple.dir/libs/givr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/libs/givr.cpp.s"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/givr.cpp -o CMakeFiles/simple.dir/libs/givr.cpp.s

CMakeFiles/simple.dir/libs/glad.c.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/libs/glad.c.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/simple.dir/libs/glad.c.o"
	/usr/lib64/ccache/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/simple.dir/libs/glad.c.o   -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/glad.c

CMakeFiles/simple.dir/libs/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/simple.dir/libs/glad.c.i"
	/usr/lib64/ccache/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/glad.c > CMakeFiles/simple.dir/libs/glad.c.i

CMakeFiles/simple.dir/libs/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/simple.dir/libs/glad.c.s"
	/usr/lib64/ccache/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/libs/glad.c -o CMakeFiles/simple.dir/libs/glad.c.s

CMakeFiles/simple.dir/src/Mass.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/Mass.cpp.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Mass.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simple.dir/src/Mass.cpp.o"
	/usr/lib64/ccache/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/Mass.cpp.o -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Mass.cpp

CMakeFiles/simple.dir/src/Mass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/Mass.cpp.i"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Mass.cpp > CMakeFiles/simple.dir/src/Mass.cpp.i

CMakeFiles/simple.dir/src/Mass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/Mass.cpp.s"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Mass.cpp -o CMakeFiles/simple.dir/src/Mass.cpp.s

CMakeFiles/simple.dir/src/SimState.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/SimState.cpp.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/SimState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/simple.dir/src/SimState.cpp.o"
	/usr/lib64/ccache/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/SimState.cpp.o -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/SimState.cpp

CMakeFiles/simple.dir/src/SimState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/SimState.cpp.i"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/SimState.cpp > CMakeFiles/simple.dir/src/SimState.cpp.i

CMakeFiles/simple.dir/src/SimState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/SimState.cpp.s"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/SimState.cpp -o CMakeFiles/simple.dir/src/SimState.cpp.s

CMakeFiles/simple.dir/src/Spring.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/Spring.cpp.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Spring.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/simple.dir/src/Spring.cpp.o"
	/usr/lib64/ccache/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/Spring.cpp.o -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Spring.cpp

CMakeFiles/simple.dir/src/Spring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/Spring.cpp.i"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Spring.cpp > CMakeFiles/simple.dir/src/Spring.cpp.i

CMakeFiles/simple.dir/src/Spring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/Spring.cpp.s"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/Spring.cpp -o CMakeFiles/simple.dir/src/Spring.cpp.s

CMakeFiles/simple.dir/src/main.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/main.cpp.o: /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/simple.dir/src/main.cpp.o"
	/usr/lib64/ccache/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/main.cpp.o -c /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/main.cpp

CMakeFiles/simple.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/main.cpp.i"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/main.cpp > CMakeFiles/simple.dir/src/main.cpp.i

CMakeFiles/simple.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/main.cpp.s"
	/usr/lib64/ccache/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uga/smithcg/Desktop/CPSC587/CPSC587A3/src/main.cpp -o CMakeFiles/simple.dir/src/main.cpp.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/libs/givr.cpp.o" \
"CMakeFiles/simple.dir/libs/glad.c.o" \
"CMakeFiles/simple.dir/src/Mass.cpp.o" \
"CMakeFiles/simple.dir/src/SimState.cpp.o" \
"CMakeFiles/simple.dir/src/Spring.cpp.o" \
"CMakeFiles/simple.dir/src/main.cpp.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

simple: CMakeFiles/simple.dir/libs/givr.cpp.o
simple: CMakeFiles/simple.dir/libs/glad.c.o
simple: CMakeFiles/simple.dir/src/Mass.cpp.o
simple: CMakeFiles/simple.dir/src/SimState.cpp.o
simple: CMakeFiles/simple.dir/src/Spring.cpp.o
simple: CMakeFiles/simple.dir/src/main.cpp.o
simple: CMakeFiles/simple.dir/build.make
simple: /usr/lib64/libGL.so
simple: libs/glfw/src/libglfw3.a
simple: /usr/lib64/librt.so
simple: /usr/lib64/libm.so
simple: /usr/lib64/libX11.so
simple: /usr/lib64/libXrandr.so
simple: /usr/lib64/libXinerama.so
simple: /usr/lib64/libXxf86vm.so
simple: /usr/lib64/libXcursor.so
simple: CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable simple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple.dir/build: simple

.PHONY : CMakeFiles/simple.dir/build

CMakeFiles/simple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple.dir/clean

CMakeFiles/simple.dir/depend:
	cd /home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/uga/smithcg/Desktop/CPSC587/CPSC587A3 /home/uga/smithcg/Desktop/CPSC587/CPSC587A3 /home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug /home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug /home/uga/smithcg/Desktop/build-givr-simple-project-master-Desktop-Debug/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple.dir/depend
