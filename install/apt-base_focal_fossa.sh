#!/bin/bash

# Installation script for Ubuntu 20.04 Basics
apt -y update
apt -y upgrade

apt -y install \
  libtool \
  cmake \
  curl \
  git \
  iputils-ping \
  mercurial \
  minicom \
  nano \
  net-tools \
  openssh-server \
  python-numpy \
  ruby \
  ssh \
  openssh-server \
  vim \
  zip \
  unzip \
  python3-rosdep \
  python3-rosinstall \
  python3-rosinstall-generator \
  python3-wstool
