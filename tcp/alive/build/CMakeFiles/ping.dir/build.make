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
CMAKE_SOURCE_DIR = /home/lb/test/tcp/alive

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lb/test/tcp/alive/build

# Include any dependencies generated for this target.
include CMakeFiles/ping.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ping.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ping.dir/flags.make

CMakeFiles/ping.dir/ping.cpp.o: CMakeFiles/ping.dir/flags.make
CMakeFiles/ping.dir/ping.cpp.o: ../ping.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lb/test/tcp/alive/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ping.dir/ping.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ping.dir/ping.cpp.o -c /home/lb/test/tcp/alive/ping.cpp

CMakeFiles/ping.dir/ping.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ping.dir/ping.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lb/test/tcp/alive/ping.cpp > CMakeFiles/ping.dir/ping.cpp.i

CMakeFiles/ping.dir/ping.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ping.dir/ping.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lb/test/tcp/alive/ping.cpp -o CMakeFiles/ping.dir/ping.cpp.s

CMakeFiles/ping.dir/ping.cpp.o.requires:
.PHONY : CMakeFiles/ping.dir/ping.cpp.o.requires

CMakeFiles/ping.dir/ping.cpp.o.provides: CMakeFiles/ping.dir/ping.cpp.o.requires
	$(MAKE) -f CMakeFiles/ping.dir/build.make CMakeFiles/ping.dir/ping.cpp.o.provides.build
.PHONY : CMakeFiles/ping.dir/ping.cpp.o.provides

CMakeFiles/ping.dir/ping.cpp.o.provides.build: CMakeFiles/ping.dir/ping.cpp.o

CMakeFiles/ping.dir/TimeCost.cpp.o: CMakeFiles/ping.dir/flags.make
CMakeFiles/ping.dir/TimeCost.cpp.o: ../TimeCost.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lb/test/tcp/alive/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ping.dir/TimeCost.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ping.dir/TimeCost.cpp.o -c /home/lb/test/tcp/alive/TimeCost.cpp

CMakeFiles/ping.dir/TimeCost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ping.dir/TimeCost.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/lb/test/tcp/alive/TimeCost.cpp > CMakeFiles/ping.dir/TimeCost.cpp.i

CMakeFiles/ping.dir/TimeCost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ping.dir/TimeCost.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/lb/test/tcp/alive/TimeCost.cpp -o CMakeFiles/ping.dir/TimeCost.cpp.s

CMakeFiles/ping.dir/TimeCost.cpp.o.requires:
.PHONY : CMakeFiles/ping.dir/TimeCost.cpp.o.requires

CMakeFiles/ping.dir/TimeCost.cpp.o.provides: CMakeFiles/ping.dir/TimeCost.cpp.o.requires
	$(MAKE) -f CMakeFiles/ping.dir/build.make CMakeFiles/ping.dir/TimeCost.cpp.o.provides.build
.PHONY : CMakeFiles/ping.dir/TimeCost.cpp.o.provides

CMakeFiles/ping.dir/TimeCost.cpp.o.provides.build: CMakeFiles/ping.dir/TimeCost.cpp.o

# Object files for target ping
ping_OBJECTS = \
"CMakeFiles/ping.dir/ping.cpp.o" \
"CMakeFiles/ping.dir/TimeCost.cpp.o"

# External object files for target ping
ping_EXTERNAL_OBJECTS =

ping: CMakeFiles/ping.dir/ping.cpp.o
ping: CMakeFiles/ping.dir/TimeCost.cpp.o
ping: CMakeFiles/ping.dir/build.make
ping: CMakeFiles/ping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ping"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ping.dir/build: ping
.PHONY : CMakeFiles/ping.dir/build

CMakeFiles/ping.dir/requires: CMakeFiles/ping.dir/ping.cpp.o.requires
CMakeFiles/ping.dir/requires: CMakeFiles/ping.dir/TimeCost.cpp.o.requires
.PHONY : CMakeFiles/ping.dir/requires

CMakeFiles/ping.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ping.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ping.dir/clean

CMakeFiles/ping.dir/depend:
	cd /home/lb/test/tcp/alive/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lb/test/tcp/alive /home/lb/test/tcp/alive /home/lb/test/tcp/alive/build /home/lb/test/tcp/alive/build /home/lb/test/tcp/alive/build/CMakeFiles/ping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ping.dir/depend

