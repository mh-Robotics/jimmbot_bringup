jimmbot_bringup
===============

Robot ROS metapackage for the mhRobotics jimmBOT. Depended on the following packages:

 - jimmbot_base : jimmBOT base libraries and hardware interface for the robot.
 - jimmbot_description : jimmBOT robot description package. 
 - diff_drive_controller : Differential drive controller package used in jimmBOT.
 - joint_state_controller : Joint state controller package used in jimmBOT.
 - robot_state_publisher : Robot state publisher package used in jimmBOT.
 - controller_manager : Controller manager package used in jimmBOT.

## Udev rules
These udev rules are provided as a reference for some sensors typically installed on the jimmBOT.

To install them manually, execute:

```bash
sudo cp $(rospack find jimmbot_bringup)/udev/* /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo service udev restart && sudo udevadm trigger
```
Or install them automatically, execute:

```bash
sh $(rospack find jimmbot_bringup)/install/install_rules.sh
```

Note: Until further solution, I filter Lidar using the Port Number in my robot computer. (I have exactly the same VID and PID with ESP32)