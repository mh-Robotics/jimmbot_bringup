#!/bin/bash
ROS_DISTRO="noetic"

apt -y install \
  ros-${ROS_DISTRO}-rqt-robot-plugins \
  ros-${ROS_DISTRO}-effort-controllers \
  ros-${ROS_DISTRO}-joy \
  ros-${ROS_DISTRO}-teleop-twist-joy \
  ros-${ROS_DISTRO}-teleop-twist-keyboard \
  ros-${ROS_DISTRO}-teleop-tools \
  ros-${ROS_DISTRO}-joy-teleop \
  ros-${ROS_DISTRO}-key-teleop \
  ros-${ROS_DISTRO}-geographic-info \
  ros-${ROS_DISTRO}-move-base \
  ros-${ROS_DISTRO}-robot-localization \
  ros-${ROS_DISTRO}-robot-state-publisher \
  ros-${ROS_DISTRO}-xacro \
  ros-${ROS_DISTRO}-rqt \
  ros-${ROS_DISTRO}-rqt-common-plugins \
  ros-${ROS_DISTRO}-rosbridge-server \
  ros-${ROS_DISTRO}-rosbridge-suite \
  ros-${ROS_DISTRO}-rtabmap  \
  ros-${ROS_DISTRO}-rtabmap-ros \
  ros-${ROS_DISTRO}-plotjuggler \
  ros-${ROS_DISTRO}-plotjuggler-ros