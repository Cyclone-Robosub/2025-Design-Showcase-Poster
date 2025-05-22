#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= About Us
#oasis-align(
  swap: true, 
  int-dir: -1,
  int-frac: .5,
    figure(
    image("images/full-team-cropped.JPG",width:100%),
    caption: [Team photo from 2024-2025 team]),
  [
    Cyclone RoboSub, founded in 2023, is an engineering student design team at UC Davis developing an autonomous underwater vehicle (AUV). 
    Our interdisciplinary team of 30+ students is organized into three divisions and six sub-teams, each tackling different aspects of this project.
    // maybe add a line about the origins being that there were no other real robotics opportunities at davis and we looked to fill that gap for experiences and opportunities? Our origins help define who we are and what we seek to accomplish with this program -- own it! 
  ],
)


= RoboSub Competition
// #grid(columns: (auto, 3in),
// // #oasis-align(
// //   int-dir: 1, 
// //   int-frac: .9, 
//   [
//     Teams from around the world compete with custom AUVs to complete tasks such as manipulating objects, maneuvering around obstacles, and firing torpedoes. 
//     The team will debut our vehicle, Glormuth, at the international RoboSub competition in August. 
//   ],
//   figure(
//     image("images/robot-in-water-cropped.JPG"),
//     caption: [The robot "Glormuth" in the water]
//   )
// )
//"complete a series of tasks..."

Teams from around the world compete with custom AUVs which complete tasks such as manipulating objects, maneuvering around obstacles, and firing torpedoes. Our team has prioritized navigation-based tasks, eliminating the need for precise manipulation.
 
//The team will debut our vehicle, Glormuth, at the international RoboSub competition in August. 

= Vehicle Design

Four vertical thrusters and four 45#sym.degree horizontal thrusters allow for six degrees of freedom. The symmetric thruster layout simplifies vehicle control and maneuverability. Designed to be neutrally buoyant and have a low center of mass, the vehicle naturally corrects errors in positioning.

#figure(
  image("images/cad.png",width:50%),
  caption: [Structural CAD of Robot (Made in Onhape)]
)

All electronics are housed within an acrylic tube with Blue Robotics WetLink penetrators to connect cables to the external environment. The tube remains fixed by hinged clasps printed from weather-resistant PETG filament. The thrusters are mounted to a baseplate using CNC-milled aluminum brackets.
//add more about the 3D printed environment inside the tube! 
= Manipulation
#oasis-align(
  //swap: true, 
  int-dir: -1,
  int-frac: .1,
  [
    The vehicle is outfitted with servo-actuated mechanisms designed to release two small droppers into a bin during competition runs. The AUV centers itself over the bin using a downward facing camera and computer vision.
  ],
  figure(
    image("images/dropper_assembly.png",width:70%),
    caption: [Dropper Assembly]),
)