#set image(width: 100%)
= Electrical Systems
The vehicle is powered by a single 16V Lithium Polymer (LiPo) battery which supplies power to the AUV's computers, sensors, and thrusters. Electrical components are precisely mounted to a 3D printed internal structure to maximize volume within the tube. A custom PCB distributes 5V of power from the buck converter to low voltage components. 

#figure(
  image("images/RoboSubDiagram.svg"),
  caption: [Electrical diagram of the robot]
)

= Manipulation
The vehicle is outfitted with servo-actuated mechanisms designed to release two small droppers into a bin during competition runs. The AUV centers itself over the bin using a downwards facing camera and computer vision.

= Research 
Beyond the competition, Cyclone RoboSub is contributing to environmental research efforts through field deployments and interdepartmental collaborations. Equipped with sensors to measure temperature, depth, pH, and dissolved oxygen data, the vehicle can collect transects of the UC Davis Arboretum. We are exploring opportunities to contribute to marine science research at the Bodega Marine Lab.

= Acknowledgements
#set text(.8em)

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
} 