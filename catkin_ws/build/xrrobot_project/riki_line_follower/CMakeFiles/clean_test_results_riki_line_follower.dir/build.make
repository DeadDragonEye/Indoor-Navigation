# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/rikirobot/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rikirobot/catkin_ws/build

# Utility rule file for clean_test_results_riki_line_follower.

# Include the progress variables for this target.
include xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/progress.make

xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower:
	cd /home/rikirobot/catkin_ws/build/xrrobot_project/riki_line_follower && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/rikirobot/catkin_ws/build/test_results/riki_line_follower

clean_test_results_riki_line_follower: xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower
clean_test_results_riki_line_follower: xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/build.make

.PHONY : clean_test_results_riki_line_follower

# Rule to build all files generated by this target.
xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/build: clean_test_results_riki_line_follower

.PHONY : xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/build

xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/clean:
	cd /home/rikirobot/catkin_ws/build/xrrobot_project/riki_line_follower && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_riki_line_follower.dir/cmake_clean.cmake
.PHONY : xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/clean

xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/depend:
	cd /home/rikirobot/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rikirobot/catkin_ws/src /home/rikirobot/catkin_ws/src/xrrobot_project/riki_line_follower /home/rikirobot/catkin_ws/build /home/rikirobot/catkin_ws/build/xrrobot_project/riki_line_follower /home/rikirobot/catkin_ws/build/xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xrrobot_project/riki_line_follower/CMakeFiles/clean_test_results_riki_line_follower.dir/depend

