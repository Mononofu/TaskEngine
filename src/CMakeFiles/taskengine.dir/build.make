# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mononofu/Programmieren/TaskEngine/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mononofu/Programmieren/TaskEngine/src

# Include any dependencies generated for this target.
include CMakeFiles/taskengine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/taskengine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/taskengine.dir/flags.make

CMakeFiles/taskengine.dir/InformationManager.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/InformationManager.cpp.o: InformationManager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/InformationManager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/InformationManager.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/InformationManager.cpp

CMakeFiles/taskengine.dir/InformationManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/InformationManager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/InformationManager.cpp > CMakeFiles/taskengine.dir/InformationManager.cpp.i

CMakeFiles/taskengine.dir/InformationManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/InformationManager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/InformationManager.cpp -o CMakeFiles/taskengine.dir/InformationManager.cpp.s

CMakeFiles/taskengine.dir/InformationManager.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/InformationManager.cpp.o.requires

CMakeFiles/taskengine.dir/InformationManager.cpp.o.provides: CMakeFiles/taskengine.dir/InformationManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/InformationManager.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/InformationManager.cpp.o.provides

CMakeFiles/taskengine.dir/InformationManager.cpp.o.provides.build: CMakeFiles/taskengine.dir/InformationManager.cpp.o
.PHONY : CMakeFiles/taskengine.dir/InformationManager.cpp.o.provides.build

CMakeFiles/taskengine.dir/DataIdentifier.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/DataIdentifier.cpp.o: DataIdentifier.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/DataIdentifier.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/DataIdentifier.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/DataIdentifier.cpp

CMakeFiles/taskengine.dir/DataIdentifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/DataIdentifier.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/DataIdentifier.cpp > CMakeFiles/taskengine.dir/DataIdentifier.cpp.i

CMakeFiles/taskengine.dir/DataIdentifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/DataIdentifier.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/DataIdentifier.cpp -o CMakeFiles/taskengine.dir/DataIdentifier.cpp.s

CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.requires

CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.provides: CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.provides

CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.provides.build: CMakeFiles/taskengine.dir/DataIdentifier.cpp.o
.PHONY : CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.provides.build

CMakeFiles/taskengine.dir/Threadmanager.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/Threadmanager.cpp.o: Threadmanager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/Threadmanager.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/Threadmanager.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/Threadmanager.cpp

CMakeFiles/taskengine.dir/Threadmanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/Threadmanager.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/Threadmanager.cpp > CMakeFiles/taskengine.dir/Threadmanager.cpp.i

CMakeFiles/taskengine.dir/Threadmanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/Threadmanager.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/Threadmanager.cpp -o CMakeFiles/taskengine.dir/Threadmanager.cpp.s

CMakeFiles/taskengine.dir/Threadmanager.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/Threadmanager.cpp.o.requires

CMakeFiles/taskengine.dir/Threadmanager.cpp.o.provides: CMakeFiles/taskengine.dir/Threadmanager.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/Threadmanager.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/Threadmanager.cpp.o.provides

CMakeFiles/taskengine.dir/Threadmanager.cpp.o.provides.build: CMakeFiles/taskengine.dir/Threadmanager.cpp.o
.PHONY : CMakeFiles/taskengine.dir/Threadmanager.cpp.o.provides.build

CMakeFiles/taskengine.dir/Task.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/Task.cpp.o: Task.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/Task.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/Task.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/Task.cpp

CMakeFiles/taskengine.dir/Task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/Task.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/Task.cpp > CMakeFiles/taskengine.dir/Task.cpp.i

CMakeFiles/taskengine.dir/Task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/Task.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/Task.cpp -o CMakeFiles/taskengine.dir/Task.cpp.s

CMakeFiles/taskengine.dir/Task.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/Task.cpp.o.requires

CMakeFiles/taskengine.dir/Task.cpp.o.provides: CMakeFiles/taskengine.dir/Task.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/Task.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/Task.cpp.o.provides

CMakeFiles/taskengine.dir/Task.cpp.o.provides.build: CMakeFiles/taskengine.dir/Task.cpp.o
.PHONY : CMakeFiles/taskengine.dir/Task.cpp.o.provides.build

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o: SynchronisationBarrier.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/SynchronisationBarrier.cpp

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/SynchronisationBarrier.cpp > CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.i

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/SynchronisationBarrier.cpp -o CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.s

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.requires

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.provides: CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.provides

CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.provides.build: CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o
.PHONY : CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.provides.build

CMakeFiles/taskengine.dir/debug.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/debug.cpp.o: debug.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/debug.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/debug.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/debug.cpp

CMakeFiles/taskengine.dir/debug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/debug.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/debug.cpp > CMakeFiles/taskengine.dir/debug.cpp.i

CMakeFiles/taskengine.dir/debug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/debug.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/debug.cpp -o CMakeFiles/taskengine.dir/debug.cpp.s

CMakeFiles/taskengine.dir/debug.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/debug.cpp.o.requires

CMakeFiles/taskengine.dir/debug.cpp.o.provides: CMakeFiles/taskengine.dir/debug.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/debug.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/debug.cpp.o.provides

CMakeFiles/taskengine.dir/debug.cpp.o.provides.build: CMakeFiles/taskengine.dir/debug.cpp.o
.PHONY : CMakeFiles/taskengine.dir/debug.cpp.o.provides.build

CMakeFiles/taskengine.dir/DataContainer.cpp.o: CMakeFiles/taskengine.dir/flags.make
CMakeFiles/taskengine.dir/DataContainer.cpp.o: DataContainer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/taskengine.dir/DataContainer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/taskengine.dir/DataContainer.cpp.o -c /home/mononofu/Programmieren/TaskEngine/src/DataContainer.cpp

CMakeFiles/taskengine.dir/DataContainer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskengine.dir/DataContainer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mononofu/Programmieren/TaskEngine/src/DataContainer.cpp > CMakeFiles/taskengine.dir/DataContainer.cpp.i

CMakeFiles/taskengine.dir/DataContainer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskengine.dir/DataContainer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mononofu/Programmieren/TaskEngine/src/DataContainer.cpp -o CMakeFiles/taskengine.dir/DataContainer.cpp.s

CMakeFiles/taskengine.dir/DataContainer.cpp.o.requires:
.PHONY : CMakeFiles/taskengine.dir/DataContainer.cpp.o.requires

CMakeFiles/taskengine.dir/DataContainer.cpp.o.provides: CMakeFiles/taskengine.dir/DataContainer.cpp.o.requires
	$(MAKE) -f CMakeFiles/taskengine.dir/build.make CMakeFiles/taskengine.dir/DataContainer.cpp.o.provides.build
.PHONY : CMakeFiles/taskengine.dir/DataContainer.cpp.o.provides

CMakeFiles/taskengine.dir/DataContainer.cpp.o.provides.build: CMakeFiles/taskengine.dir/DataContainer.cpp.o
.PHONY : CMakeFiles/taskengine.dir/DataContainer.cpp.o.provides.build

# Object files for target taskengine
taskengine_OBJECTS = \
"CMakeFiles/taskengine.dir/InformationManager.cpp.o" \
"CMakeFiles/taskengine.dir/DataIdentifier.cpp.o" \
"CMakeFiles/taskengine.dir/Threadmanager.cpp.o" \
"CMakeFiles/taskengine.dir/Task.cpp.o" \
"CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o" \
"CMakeFiles/taskengine.dir/debug.cpp.o" \
"CMakeFiles/taskengine.dir/DataContainer.cpp.o"

# External object files for target taskengine
taskengine_EXTERNAL_OBJECTS =

libtaskengine.so: CMakeFiles/taskengine.dir/InformationManager.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/DataIdentifier.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/Threadmanager.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/Task.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/debug.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/DataContainer.cpp.o
libtaskengine.so: CMakeFiles/taskengine.dir/build.make
libtaskengine.so: CMakeFiles/taskengine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libtaskengine.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taskengine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/taskengine.dir/build: libtaskengine.so
.PHONY : CMakeFiles/taskengine.dir/build

CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/InformationManager.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/DataIdentifier.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/Threadmanager.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/Task.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/SynchronisationBarrier.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/debug.cpp.o.requires
CMakeFiles/taskengine.dir/requires: CMakeFiles/taskengine.dir/DataContainer.cpp.o.requires
.PHONY : CMakeFiles/taskengine.dir/requires

CMakeFiles/taskengine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/taskengine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/taskengine.dir/clean

CMakeFiles/taskengine.dir/depend:
	cd /home/mononofu/Programmieren/TaskEngine/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine/src /home/mononofu/Programmieren/TaskEngine/src/CMakeFiles/taskengine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/taskengine.dir/depend

