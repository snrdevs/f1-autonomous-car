## Overview
Run an f1 tenth car simulation in Gazebo. Uses hector mapping and teb local planner for SLAM. Also uses LiDAR readings to autonomously move through a racetrack 

## Dependencies
- ROS
- teb_local_planner
- hector_slam
- ackermann_msgs
- move_base
- controller_manager
- ros_control
- joint_state_controller
- effort_contollers
- position_controllers
- amcl
- global_planner


## How to Build
```
git clone https://github.com/StevieG47/f1-autonomous-car
```

Open a new terminal, in 1st terminal:
```
cd f1-autonomous-car/catkin_ws
catkin_make
source devel/setup.bash
```

In 2nd terminal:
```
cd f1-autonomous-car/teb/catkin_ws
catkin_make
source devel/setup.bash
```

## How to Run
Launch the vehicle in Gazebo and start hector mapping in 1st terminal:
```
roslaunch f1 f1-Slam.launch
```
![f1gazebo](https://user-images.githubusercontent.com/25371934/36716840-cd3b669a-1b69-11e8-9ee0-6422a046dee8.png)

Start the planner and launch rviz in 2nd terminal:
```
roslaunch teb_local_planner_tutorials robot_carlike_in_stage.launch
```
![f1rviz](https://user-images.githubusercontent.com/25371934/36716896-fd9c5dd0-1b69-11e8-9c83-e59bb640b54e.png)

## Moving the car
Navigation goals can also be set manually using the 2D Nav Goal feature in rviz. Since it is an ackermann vehicle, it may not be able to navigate to the goal if the only path requires the vehicle to turn in place. 

A simple autonomous obstacle avoidance method can also be used by opening a third terminal, navigating to the first catkin_ws, then
```
catkin_make
source devel/setup.bash
rosrun f1-move lidarmove
```

This reads from the /scan topic and publishes ackermann_msgs to move the car.

