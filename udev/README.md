Udev rules
==========

These udev rules are provided as a reference for some sensors typically installed on the jimmBOT.

To install them manually, execute:

sudo cp $(rospack find jimmbot_bringup)/udev/* /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo service udev restart && sudo udevadm trigger
