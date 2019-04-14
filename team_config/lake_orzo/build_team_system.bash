#!/usr/bin/env bash

# Prepare ROS
. /opt/ros/${ROS_DISTRO}/setup.bash

# Install the necessary dependencies for getting the team's source code
# Note: there is no need to use `sudo`.
apt-get update
apt-get install -y wget unzip

# Create a catkin workspace
mkdir -p ~/my_team_ws/src

# Fetch the source code for our team's code
cd /tmp
git clone https://github.com/130s/hut_ariac -b develop
mv hut_ariac ~/my_team_ws/src

cd ~/my_team_ws
catkin_make install
