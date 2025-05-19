
= Software Controls
In order to precisely navigate the course, the vehicle relies on a combination of positioning systems and active, dynamic control. The vehicle tracks its positon using an IMU (Inertial Motion Unit) and DVL (Doppler Velocity Logger) which provide acceleration and velocity data respectively. The two data sets are integrated to get vehicle position and combined using a Kalman filer. This system allows us to track our position to the centimeter. The vehicle also relies on multiple pressure sensors and an AHRS to track depth and heading. 

Sensor feedback is posted to ROS nodes and read by the vehicle's executive control loop which uses the data for mission planning and 6-axis PID control. The executive main loop commands the thrusters by assigning PWM values to the ESCs which modulate individual thrust outputs. Mission planning is handled by the executive main loop which makes a series of decisions during the competition run based on active sensor and vision feedback. 

= Dynamics Modeling
Accurate control requires a comprehensive model of the vehicle's dynamics. We used MATLAB Simulink to design and generate a C code model which generates trajectories and and regulates PID feedback all based on a built dynamic model. The model accounts for the AUV's 6-axes of freedom, buoyancy, drag, and vectored thruster configuration. The parameters are measured an validated based on IMU data collected during underwater testing.

= Vision
Two cameras provide the vehicle with a downwards and forwards facing view of its surroundings. Both camera feeds are run through YOLO vision model which has been trained on parts of the competition course allowing the vehicle to identify objects of significance. The downwards facing camera allows for positioning of the dropper while the forward facing camera determines which side of the start gate the vehicle passes through. m
