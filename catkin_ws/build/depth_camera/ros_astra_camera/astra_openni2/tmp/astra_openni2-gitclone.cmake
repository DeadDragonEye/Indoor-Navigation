if("orbbec_ros" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitinfo.txt" IS_NEWER_THAN "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2'")
endif()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" clone --origin "origin" "https://github.com/orbbec/OpenNI2.git" "astra_openni2"
    WORKING_DIRECTORY "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/orbbec/OpenNI2.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout orbbec_ros
  WORKING_DIRECTORY "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'orbbec_ros'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init 
  WORKING_DIRECTORY "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive 
  WORKING_DIRECTORY "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitinfo.txt"
    "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/rikirobot/catkin_ws/build/depth_camera/ros_astra_camera/astra_openni2/src/astra_openni2-stamp/astra_openni2-gitclone-lastrun.txt'")
endif()

