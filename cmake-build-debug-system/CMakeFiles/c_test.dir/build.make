# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/whitesir/agora-cpp-work/ldb-learn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system

# Include any dependencies generated for this target.
include CMakeFiles/c_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c_test.dir/flags.make

CMakeFiles/c_test.dir/util/testutil.cc.o: CMakeFiles/c_test.dir/flags.make
CMakeFiles/c_test.dir/util/testutil.cc.o: ../util/testutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c_test.dir/util/testutil.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/c_test.dir/util/testutil.cc.o -c /Users/whitesir/agora-cpp-work/ldb-learn/util/testutil.cc

CMakeFiles/c_test.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c_test.dir/util/testutil.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/whitesir/agora-cpp-work/ldb-learn/util/testutil.cc > CMakeFiles/c_test.dir/util/testutil.cc.i

CMakeFiles/c_test.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c_test.dir/util/testutil.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/whitesir/agora-cpp-work/ldb-learn/util/testutil.cc -o CMakeFiles/c_test.dir/util/testutil.cc.s

CMakeFiles/c_test.dir/db/c_test.c.o: CMakeFiles/c_test.dir/flags.make
CMakeFiles/c_test.dir/db/c_test.c.o: ../db/c_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/c_test.dir/db/c_test.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_test.dir/db/c_test.c.o -c /Users/whitesir/agora-cpp-work/ldb-learn/db/c_test.c

CMakeFiles/c_test.dir/db/c_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_test.dir/db/c_test.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/whitesir/agora-cpp-work/ldb-learn/db/c_test.c > CMakeFiles/c_test.dir/db/c_test.c.i

CMakeFiles/c_test.dir/db/c_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_test.dir/db/c_test.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/whitesir/agora-cpp-work/ldb-learn/db/c_test.c -o CMakeFiles/c_test.dir/db/c_test.c.s

# Object files for target c_test
c_test_OBJECTS = \
"CMakeFiles/c_test.dir/util/testutil.cc.o" \
"CMakeFiles/c_test.dir/db/c_test.c.o"

# External object files for target c_test
c_test_EXTERNAL_OBJECTS =

c_test: CMakeFiles/c_test.dir/util/testutil.cc.o
c_test: CMakeFiles/c_test.dir/db/c_test.c.o
c_test: CMakeFiles/c_test.dir/build.make
c_test: libleveldb.a
c_test: CMakeFiles/c_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable c_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c_test.dir/build: c_test

.PHONY : CMakeFiles/c_test.dir/build

CMakeFiles/c_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c_test.dir/clean

CMakeFiles/c_test.dir/depend:
	cd /Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/whitesir/agora-cpp-work/ldb-learn /Users/whitesir/agora-cpp-work/ldb-learn /Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system /Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system /Users/whitesir/agora-cpp-work/ldb-learn/cmake-build-debug-system/CMakeFiles/c_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c_test.dir/depend

