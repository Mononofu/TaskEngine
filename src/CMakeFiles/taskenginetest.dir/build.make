# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mononofu/Programmieren/TaskEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mononofu/Programmieren/TaskEngine

# Include any dependencies generated for this target.
include src/CMakeFiles/taskenginetest.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/taskenginetest.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/taskenginetest.dir/flags.make

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o: src/CMakeFiles/taskenginetest.dir/flags.make
src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o: src/taskenginetest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o"
	cd /home/mononofu/Programmieren/TaskEngine/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/taskenginetest.cpp

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskenginetest.dir/taskenginetest.cpp.i"
	cd /home/mononofu/Programmieren/TaskEngine/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/taskenginetest.cpp > CMakeFiles/taskenginetest.dir/taskenginetest.cpp.i

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskenginetest.dir/taskenginetest.cpp.s"
	cd /home/mononofu/Programmieren/TaskEngine/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/taskenginetest.cpp -o CMakeFiles/taskenginetest.dir/taskenginetest.cpp.s

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.requires:
.PHONY : src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.requires

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.provides: src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/taskenginetest.dir/build.make src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.provides.build
.PHONY : src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.provides

src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.provides.build: src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o
.PHONY : src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.provides.build

# Object files for target taskenginetest
taskenginetest_OBJECTS = \
"CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o"

# External object files for target taskenginetest
taskenginetest_EXTERNAL_OBJECTS =

src/taskenginetest: src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o
src/taskenginetest: src/libtaskengine.so
src/taskenginetest: src/CMakeFiles/taskenginetest.dir/build.make
src/taskenginetest: src/CMakeFiles/taskenginetest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable taskenginetest"
	cd /home/mononofu/Programmieren/TaskEngine/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taskenginetest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/taskenginetest.dir/build: src/taskenginetest
.PHONY : src/CMakeFiles/taskenginetest.dir/build

src/CMakeFiles/taskenginetest.dir/requires: src/CMakeFiles/taskenginetest.dir/taskenginetest.cpp.o.requires
.PHONY : src/CMakeFiles/taskenginetest.dir/requires

src/CMakeFiles/taskenginetest.dir/clean:
	cd /home/mononofu/Programmieren/TaskEngine/src && $(CMAKE_COMMAND) -P CMakeFiles/taskenginetest.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/taskenginetest.dir/clean

src/CMakeFiles/taskenginetest.dir/depend:
	cd /home/mononofu/Programmieren/TaskEngine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mononofu/Programmieren/TaskEngine /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles/taskenginetest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/taskenginetest.dir/depend

