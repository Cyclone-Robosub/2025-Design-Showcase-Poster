#import "@preview/oasis-align:0.2.0": * 
#set image(width: 70%)

= Software Controls
The vehicle relies on a combination of positioning systems and dynamic control. The Inertial Motion Unit (IMU) and the Doppler Velocity Logger (DVL), respectively, provide acceleration and velocity data to the robot. These data sets are merged and sorted using a Kalman filer, allowing the system to accurately track the robot's position down to the centimeter. The vehicle also relies on multiple pressure sensors and an automatic heading and referencing system (AHRS) to track depth and heading.
#figure(
  image("images/controls flowchart.png",width:70%),
  caption: [Structural CAD of Robot (Made in Onhape)]
)

The Executive Main Loop makes a series of decisions throughout a competition run based on active sensor and vision feedback. Sensor feedback is used for mission planning and PID control. The executive main loop commands the thrusters by assigning PWM values to eight electric speed controllers (ESCs) which modulate the thruster outputs. 
// if the executive main loop is a name specific to us and not an established system, capitalize it (ex: Executive Main Loop)
// simplify the description of PWM and say the full name of ESC


= Dynamics Modeling
We designed our control scheme in MATLAB Simulink which generates trajectories and regulates PID feedback based on the built dynamic model. The model accounts for the AUV's 6-axes of freedom, buoyancy, drag, and vectored thruster configuration. The parameters are measured and validated based on IMU data collected during underwater testing.
// kill one of the "generates" in the first sentance. Find a synonym
// cut "all" in that first sentance between feedback and based
//"and validated"
//this might be a nitpick/not super important, but we mention the 6-axis degrees of freedom a LOT. either explain what this means and why its important or find other ways to talk about it without exactly saying "6-axis"
#figure(
  image("images/Simulink Layout.png",width:80%),
  caption: [Simulink Block Model]
)
= Vision
#oasis-align(
  // swap: true, 
  int-dir: -1,
  int-frac: .3,
  [
    Two cameras provide the vehicle with feed that runs through a YOLO vision model, to identify objects of significance. The downward facing camera allows for positioning the dropper, while the forward facing camera determines which side of the start gate the vehicle passes through.
  ],
  figure(
    image("images/vision model.png",width:75%),
    caption: [Object Recognition]),
)