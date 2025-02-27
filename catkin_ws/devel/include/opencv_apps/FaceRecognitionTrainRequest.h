// Generated by gencpp from file opencv_apps/FaceRecognitionTrainRequest.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_FACERECOGNITIONTRAINREQUEST_H
#define OPENCV_APPS_MESSAGE_FACERECOGNITIONTRAINREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <opencv_apps/Rect.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct FaceRecognitionTrainRequest_
{
  typedef FaceRecognitionTrainRequest_<ContainerAllocator> Type;

  FaceRecognitionTrainRequest_()
    : images()
    , rects()
    , labels()  {
    }
  FaceRecognitionTrainRequest_(const ContainerAllocator& _alloc)
    : images(_alloc)
    , rects(_alloc)
    , labels(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::sensor_msgs::Image_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::sensor_msgs::Image_<ContainerAllocator> >::other >  _images_type;
  _images_type images;

   typedef std::vector< ::opencv_apps::Rect_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::opencv_apps::Rect_<ContainerAllocator> >::other >  _rects_type;
  _rects_type rects;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _labels_type;
  _labels_type labels;





  typedef boost::shared_ptr< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FaceRecognitionTrainRequest_

typedef ::opencv_apps::FaceRecognitionTrainRequest_<std::allocator<void> > FaceRecognitionTrainRequest;

typedef boost::shared_ptr< ::opencv_apps::FaceRecognitionTrainRequest > FaceRecognitionTrainRequestPtr;
typedef boost::shared_ptr< ::opencv_apps::FaceRecognitionTrainRequest const> FaceRecognitionTrainRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'opencv_apps': ['/home/rikirobot/catkin_ws/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba188b4bf792edbaf69c7f296a16e0ec";
  }

  static const char* value(const ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba188b4bf792edbaULL;
  static const uint64_t static_value2 = 0xf69c7f296a16e0ecULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/FaceRecognitionTrainRequest";
  }

  static const char* value(const ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image[] images\n\
Rect[] rects\n\
string[] labels\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: opencv_apps/Rect\n\
# opencv Rect data type, x-y is center point\n\
float64 x\n\
float64 y\n\
float64 width\n\
float64 height\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.images);
      stream.next(m.rects);
      stream.next(m.labels);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceRecognitionTrainRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::FaceRecognitionTrainRequest_<ContainerAllocator>& v)
  {
    s << indent << "images[]" << std::endl;
    for (size_t i = 0; i < v.images.size(); ++i)
    {
      s << indent << "  images[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "    ", v.images[i]);
    }
    s << indent << "rects[]" << std::endl;
    for (size_t i = 0; i < v.rects.size(); ++i)
    {
      s << indent << "  rects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::opencv_apps::Rect_<ContainerAllocator> >::stream(s, indent + "    ", v.rects[i]);
    }
    s << indent << "labels[]" << std::endl;
    for (size_t i = 0; i < v.labels.size(); ++i)
    {
      s << indent << "  labels[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.labels[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_FACERECOGNITIONTRAINREQUEST_H
