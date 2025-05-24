#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= Software Controls
The vehicle relies on a combination of sensors to determine its depth, heading, and position within the pool. All data and commands are sent over a ROS network and mission planning is handled by the Executive Main Loop which is written in C++.
#figure(
  image("images/controls flowchart.svg", width: 100%),
  caption: [Overview of software structure spanning all hardware]
)

= Dynamics Modeling
The control scheme is built in MATLAB Simulink which generates trajectories and regulates PID feedback based on a built dynamic model and waypoints. The model accounts for the AUV's 6-axes of freedom, buoyancy, drag, and vectored thruster configuration. The parameters are measured and validated based on IMU data collected during underwater testing.

#figure(
  image("images/Simulink Layout.png"),
  caption: [Simulink Block Model]
)
= Vision
#oasis-align(
  // swap: true, 
  // int-dir: -1,
  int-frac: .35,
  [
    Two cameras provide the vehicle with feeds that run through a YOLO vision model, to identify objects of significance. The downward facing camera allows for positioning the dropper, while the forward facing camera determines which side of the start gate the vehicle passes through. Identifying objects along the course help the robot track its position within the pool.
  ],
  figure(
    image("images/vision model.png"),
    caption: [Object Recognition]),
)