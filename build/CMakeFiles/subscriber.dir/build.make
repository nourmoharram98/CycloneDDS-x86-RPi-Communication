# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nourmoharram/cyclonedds/examples/Trial6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nourmoharram/cyclonedds/examples/Trial6/build

# Include any dependencies generated for this target.
include CMakeFiles/subscriber.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/subscriber.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/subscriber.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/subscriber.dir/flags.make

TopicDiscovery.c: ../TopicDiscovery.idl
TopicDiscovery.c: /home/nourmoharram/cyclone_x86_install/lib/libcycloneddsidlc.so.0.11.0
TopicDiscovery.c: /home/nourmoharram/cyclone_x86_install/lib/libcycloneddsidlc.so.0.11.0
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nourmoharram/cyclonedds/examples/Trial6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating TopicDiscovery.c, TopicDiscovery.h"
	/home/nourmoharram/cyclone_x86_install/bin/idlc -l/home/nourmoharram/cyclone_x86_install/lib/libcycloneddsidlc.so.0.11.0 -Wno-implicit-extensibility -o/home/nourmoharram/cyclonedds/examples/Trial6/build /home/nourmoharram/cyclonedds/examples/Trial6/TopicDiscovery.idl

TopicDiscovery.h: TopicDiscovery.c
	@$(CMAKE_COMMAND) -E touch_nocreate TopicDiscovery.h

CMakeFiles/subscriber.dir/subscriber.c.o: CMakeFiles/subscriber.dir/flags.make
CMakeFiles/subscriber.dir/subscriber.c.o: ../subscriber.c
CMakeFiles/subscriber.dir/subscriber.c.o: CMakeFiles/subscriber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nourmoharram/cyclonedds/examples/Trial6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/subscriber.dir/subscriber.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/subscriber.dir/subscriber.c.o -MF CMakeFiles/subscriber.dir/subscriber.c.o.d -o CMakeFiles/subscriber.dir/subscriber.c.o -c /home/nourmoharram/cyclonedds/examples/Trial6/subscriber.c

CMakeFiles/subscriber.dir/subscriber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/subscriber.dir/subscriber.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nourmoharram/cyclonedds/examples/Trial6/subscriber.c > CMakeFiles/subscriber.dir/subscriber.c.i

CMakeFiles/subscriber.dir/subscriber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/subscriber.dir/subscriber.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nourmoharram/cyclonedds/examples/Trial6/subscriber.c -o CMakeFiles/subscriber.dir/subscriber.c.s

CMakeFiles/subscriber.dir/TopicDiscovery.c.o: CMakeFiles/subscriber.dir/flags.make
CMakeFiles/subscriber.dir/TopicDiscovery.c.o: TopicDiscovery.c
CMakeFiles/subscriber.dir/TopicDiscovery.c.o: CMakeFiles/subscriber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nourmoharram/cyclonedds/examples/Trial6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/subscriber.dir/TopicDiscovery.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/subscriber.dir/TopicDiscovery.c.o -MF CMakeFiles/subscriber.dir/TopicDiscovery.c.o.d -o CMakeFiles/subscriber.dir/TopicDiscovery.c.o -c /home/nourmoharram/cyclonedds/examples/Trial6/build/TopicDiscovery.c

CMakeFiles/subscriber.dir/TopicDiscovery.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/subscriber.dir/TopicDiscovery.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nourmoharram/cyclonedds/examples/Trial6/build/TopicDiscovery.c > CMakeFiles/subscriber.dir/TopicDiscovery.c.i

CMakeFiles/subscriber.dir/TopicDiscovery.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/subscriber.dir/TopicDiscovery.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nourmoharram/cyclonedds/examples/Trial6/build/TopicDiscovery.c -o CMakeFiles/subscriber.dir/TopicDiscovery.c.s

# Object files for target subscriber
subscriber_OBJECTS = \
"CMakeFiles/subscriber.dir/subscriber.c.o" \
"CMakeFiles/subscriber.dir/TopicDiscovery.c.o"

# External object files for target subscriber
subscriber_EXTERNAL_OBJECTS =

subscriber: CMakeFiles/subscriber.dir/subscriber.c.o
subscriber: CMakeFiles/subscriber.dir/TopicDiscovery.c.o
subscriber: CMakeFiles/subscriber.dir/build.make
subscriber: /home/nourmoharram/cyclone_x86_install/lib/libddsc.so.0.11.0
subscriber: CMakeFiles/subscriber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nourmoharram/cyclonedds/examples/Trial6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable subscriber"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/subscriber.dir/build: subscriber
.PHONY : CMakeFiles/subscriber.dir/build

CMakeFiles/subscriber.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/subscriber.dir/cmake_clean.cmake
.PHONY : CMakeFiles/subscriber.dir/clean

CMakeFiles/subscriber.dir/depend: TopicDiscovery.c
CMakeFiles/subscriber.dir/depend: TopicDiscovery.h
	cd /home/nourmoharram/cyclonedds/examples/Trial6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nourmoharram/cyclonedds/examples/Trial6 /home/nourmoharram/cyclonedds/examples/Trial6 /home/nourmoharram/cyclonedds/examples/Trial6/build /home/nourmoharram/cyclonedds/examples/Trial6/build /home/nourmoharram/cyclonedds/examples/Trial6/build/CMakeFiles/subscriber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/subscriber.dir/depend

