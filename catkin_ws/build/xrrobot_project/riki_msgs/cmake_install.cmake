# Install script for directory: /home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rikirobot/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/msg" TYPE FILE FILES
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Velocities.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/PID.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Imu.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Battery.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/DHT22.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Servo.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Infrared.msg"
    "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/msg/Ultrasonic.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES "/home/rikirobot/catkin_ws/build/xrrobot_project/riki_msgs/catkin_generated/installspace/riki_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/rikirobot/catkin_ws/devel/include/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/rikirobot/catkin_ws/devel/share/roseus/ros/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/rikirobot/catkin_ws/devel/share/common-lisp/ros/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/rikirobot/catkin_ws/devel/share/gennodejs/ros/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/rikirobot/catkin_ws/devel/lib/python2.7/dist-packages/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/rikirobot/catkin_ws/devel/lib/python2.7/dist-packages/riki_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rikirobot/catkin_ws/build/xrrobot_project/riki_msgs/catkin_generated/installspace/riki_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES "/home/rikirobot/catkin_ws/build/xrrobot_project/riki_msgs/catkin_generated/installspace/riki_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs/cmake" TYPE FILE FILES
    "/home/rikirobot/catkin_ws/build/xrrobot_project/riki_msgs/catkin_generated/installspace/riki_msgsConfig.cmake"
    "/home/rikirobot/catkin_ws/build/xrrobot_project/riki_msgs/catkin_generated/installspace/riki_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/riki_msgs" TYPE FILE FILES "/home/rikirobot/catkin_ws/src/xrrobot_project/riki_msgs/package.xml")
endif()

