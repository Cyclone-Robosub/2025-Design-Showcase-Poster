= Electrical Systems
The vehicle is powered by a single lipo battery which supplies current to the AUV's computers, sensors, and eight thrusters. Electrical components are precisely mounted to a 3D printed internal structure which maximizes the limited volume within the tube. A custom PCB distributes power to low voltage components. 

= Manipulation
The vehicle is outfitted with a servo-actuated mechanism designed to release two small droppers into a bin during competition runs. The AUV centers itself over the bin using a downwards facing camera and computer vision.

= Research 
Beyond the annual competition, Cyclone RoboSub is contributing to environmental research through field deployments and inter-department collaborations. Our vehicle is outfitted with sensors to collect temperature, depth, pH, and dissolved oxygen data. The vehicle will be used to take transects of the UC Davis Arboretum and we are exploring opportunities to contribute to marine science research at the Bodega Marine Lab.

= Acknowledgements

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
} 