#!/bin/bash

echo "Installing udev rules for YDLidar, IMU and ESP32";
sudo cp $(rospack find jimmbot_bringup)/udev/* /etc/udev/rules.d/
echo "Restarting udevadm so rules apply";
sudo udevadm control --reload-rules && sudo service udev restart && sudo udevadm trigger
echo "Finished";