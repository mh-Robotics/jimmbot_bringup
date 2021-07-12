#!/bin/bash
ROS_DISTRO="noetic"

# Installation script for Ubuntu 20.04 ROS Noetic Ninjemys
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

apt -y update

# ROS Base
apt -y install ros-${ROS_DISTRO}-desktop-full

echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc

source ~/.bashrc

sudo rosdep init

rosdep update