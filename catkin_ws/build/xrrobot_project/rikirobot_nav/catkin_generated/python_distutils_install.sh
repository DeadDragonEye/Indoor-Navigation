#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/rikirobot/catkin_ws/src/xrrobot_project/rikirobot_nav"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/rikirobot/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/rikirobot/catkin_ws/install/lib/python2.7/dist-packages:/home/rikirobot/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/rikirobot/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/rikirobot/catkin_ws/src/xrrobot_project/rikirobot_nav/setup.py" \
    build --build-base "/home/rikirobot/catkin_ws/build/xrrobot_project/rikirobot_nav" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/rikirobot/catkin_ws/install" --install-scripts="/home/rikirobot/catkin_ws/install/bin"
