#!/usr/bin/env bash

. ~/my_team_ws/install/setup.bash

# Run the example node
echo "Launching ARIAC example nodes"
rosrun hut_ariac_competition ariac_example_node
