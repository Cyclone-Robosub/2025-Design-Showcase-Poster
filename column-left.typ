#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= About Us
#oasis-align(
  // swap: true, 
  int-dir: -1,
  int-frac: .3,
  [
    Cyclone RoboSub, founded in 2023, is an engineering student design team at UC Davis developing an autonomous underwater vehicle (AUV). 
    Our interdisciplinary team of 30+ students is organized into three divisions and six sub-teams, each tackling different aspects of this project.
  ],
  figure(
    image("images/full-team-cropped.JPG"),
    caption: [Team photo from 2024-2025 team]),
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

Teams from around the world compete with custom AUVs to complete tasks such as manipulating objects, maneuvering around obstacles, and firing torpedoes. 
The team will debut our vehicle, Glormuth, at the international RoboSub competition in August. 

Prioritizing simple, efficient solutions, our team will focus on navigation based tasks which eliminate the need for precise positioning vision data.

= Vehicle Design

Our vehicle was designed with simplicity and accessibility in mind. Four vertical thrusters and four 45#sym.degree angled horizontal thrusters allow for the full six degrees of freedom. The symmetric thruster layout simplifies vehicle control and maneuverability. The AUV is designed to be neutrally buoyant and have a low center of mass to naturally correct errors in positioning the vehicle. 

#figure(
  image("images/cad.png"),
  caption: [Structural CAD of Robot (Made in Onhape)]
)

All electronics are housed within an acrylic tube with Blue Robotics WetLink penetrators to connect cables to the external environment. The tube remains fixed by hinged clasps printed from weather-resistant PETG filament. The thrusters are mounted to a base plate using CNC milled aluminum brackets.
  