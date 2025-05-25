#import "@local/oasis-align:0.2.0": *
#set image(width: 100%)

= Electrical Systems
The vehicle is powered by a single 16V Lithium Polymer (LiPo) battery which supplies power to the AUV's computers, sensors, and thrusters. Electrical components are precisely mounted to a 3D-printed internal structure to maximize volume within the tube and efficiently route wires between components. A custom PCB distributes 5V of power from the buck converter to low-voltage components.

#oasis-align(
  figure(
    image("images/internals.png"),
    caption: [Primary robot wiring],
  ),
  figure(
    image("images/pcb.png"),
    caption: [Custom designed PBCs],
  )
)

#figure(
  image("images/electrical-diagram.svg"),
  caption: [Electrical diagram of the robot]
)


= Research 
// #oasis-align( 
  // int-frac: .78,
#grid(
  columns: (1fr, 5in),
  [
    Beyond the competition, Cyclone RoboSub is contributing to environmental research efforts through field deployments and interdepartmental collaborations. Equipped with sensors to measure temperature, depth, pH, and dissolved oxygen, the vehicle can collect environmental data and is schedule to take two transects along the UC Davis Arboretum. The team is also exploring opportunities to contribute to marine science research at the Bodega Marine Lab.
  ],
  [
    #figure(
      image("images/arb.png"),
      caption: [UC Davis Arboretum],
    )
    #v(-0.65em)
    #figure(
      image("images/research.jpg"),
      caption: [Research instumentation],
    )
  ]
)
= Acknowledgements
#set text(.9em)

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
}.