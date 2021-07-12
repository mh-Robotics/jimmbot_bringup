#!/bin/bash

# Print usage guide 
usage()
{
  echo "`basename $0` [OPTIONS]"
  echo ""
  echo "OPTIONS:"
  echo "All other options will be considered as not valid."
  echo "          --full                     : Prepare full jimmBOT environment"
  echo "          --apt-base_only            : Install only apt packages"
  echo "          --ros-noetic_only          : Install only ROS Noetic Desktop Full"
  echo "          --dependencies-noetic_only : Install only ROS Noetic dependencies for jimmBOT"
  echo "          --udev-rules_only          : Install only jimmBOT udev rules"
  echo "          --hotspot-ap_only          : Install and configure jimmBOT HotspotAP"
  echo "          --jimmBOT-customized_only  : Customise the looks for jimmBOT"
  echo "          --help                     : This help"
  echo
  echo "Note: If there are no flags provided, the default action is to exit script."
  echo "      Minimal usage of script requires one argument. E.g.: sh init-env.sh --full"
}

# Install build-essentials and prepare environment for ros
call_apt-base()
{
  echo "Calling apt-base_focal_fossa.sh"
  sudo sh $(rospack find jimmbot_bringup)/install/apt-base_focal_fossa.sh
}

# Install ROS-Noetic full desktop
call_ros-noetic()
{
  echo "Calling ros-noetic_focal_fossa.sh"
  sudo sh $(rospack find jimmbot_bringup)/install/ros-noetic_focal_fossa.sh
}

# Install all required packages for jimmBOT
call_dependencies-noetic()
{
  echo "Calling dependencies-noetic_focal_fossa.sh"
  sudo sh $(rospack find jimmbot_bringup)/install/dependencies-noetic_focal_fossa.sh
}

# Install udev rules for jimmBOT
call_udev-rules()
{
  echo "Calling udev-rules_focal_fossa.sh"
  sudo sh $(rospack find jimmbot_bringup)/install/udev-rules_focal_fossa.sh
}

# Configure robot hotspot
call_hotspot-ap()
{
  echo "Calling hotspot-ap_focal_fossa.sh"
  # sudo sh $(rospack find jimmbot_bringup)/install/hotspot-ap_focal_fossa.sh
}

# Beautify regarding jimmBOT
call_jimmBOT-customized()
{
  echo "Calling jimmBOT-customized_focal_fossa.sh"
  # sudo sh $(rospack find jimmbot_bringup)/install/jimmBOT-customized_focal_fossa.sh
}

call_all()
{
  echo "Executing all scripts for full preparation"
  echo ""

  call_apt-base
  call_ros-noetic
  call_dependencies-noetic
  call_udev-rules
  call_hotspot-ap
  call_jimmBOT-customized
}

parse_args()
{
  while [[ $# -gt 0 ]]
  do
    arg="$1"
    case $arg in
      *full)
        call_all
        exit 0
        ;;
      *apt-base_only)
        call_apt-base
        exit 0
        ;;
      *ros-noetic_only)
        call_ros-noetic
        exit 0
        ;;
      *dependencies-noetic_only)
        call_dependencies-noetic
        exit 0
        ;;
      *udev-rules_only)
        call_udev-rules
        exit 0
        ;;
      *hotspot-ap_only)
        call_hotspot-ap
        exit 0
        ;;
      *jimmBOT-customized_only)
        call_jimmBOT-customized
        exit 0
        ;;
      *help)
        usage
        exit 0
        ;;
      *)
				echo "Arguments [$@] are not valid."
        exit 1
				;;
    esac
  done

  usage
  exit 0
}

# Execution
if (parse_args $@)
then 
  echo ""
  echo "Finished, execution was successful."
  exit 0
else 
  echo ""
  echo "Exiting, execution not successful."
  exit 1
fi
