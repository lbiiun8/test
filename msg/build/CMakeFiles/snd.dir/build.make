# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/lb/test/msg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lb/test/msg/build

# Include any dependencies generated for this target.
include CMakeFiles/snd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snd.dir/flags.make

CMakeFiles/snd.dir/snd.cpp.o: CMakeFiles/snd.dir/flags.make
CMakeFiles/snd.dir/snd.cpp.o: ../snd.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lb/test/msg/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/snd.dir/snd.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/snd.dir/snd.cpp.o -c /home/lb/test/msg/snd.cpp

CMakeFiles/snd.dir/snd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snd.dir/snd.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lb/test/msg/snd.cpp > CMakeFiles/snd.dir/snd.cpp.i

CMakeFiles/snd.dir/snd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snd.dir/snd.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lb/test/msg/snd.cpp -o CMakeFiles/snd.dir/snd.cpp.s

CMakeFiles/snd.dir/snd.cpp.o.requires:
.PHONY : CMakeFiles/snd.dir/snd.cpp.o.requires

CMakeFiles/snd.dir/snd.cpp.o.provides: CMakeFiles/snd.dir/snd.cpp.o.requires
	$(MAKE) -f CMakeFiles/snd.dir/build.make CMakeFiles/snd.dir/snd.cpp.o.provides.build
.PHONY : CMakeFiles/snd.dir/snd.cpp.o.provides

CMakeFiles/snd.dir/snd.cpp.o.provides.build: CMakeFiles/snd.dir/snd.cpp.o

# Object files for target snd
snd_OBJECTS = \
"CMakeFiles/snd.dir/snd.cpp.o"

# External object files for target snd
snd_EXTERNAL_OBJECTS =

snd: CMakeFiles/snd.dir/snd.cpp.o
snd: CMakeFiles/snd.dir/build.make
snd: CMakeFiles/snd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable snd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snd.dir/build: snd
.PHONY : CMakeFiles/snd.dir/build

CMakeFiles/snd.dir/requires: CMakeFiles/snd.dir/snd.cpp.o.requires
.PHONY : CMakeFiles/snd.dir/requires

CMakeFiles/snd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snd.dir/clean

CMakeFiles/snd.dir/depend:
	cd /home/lb/test/msg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lb/test/msg /home/lb/test/msg /home/lb/test/msg/build /home/lb/test/msg/build /home/lb/test/msg/build/CMakeFiles/snd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snd.dir/depend
