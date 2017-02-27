//Lightbox Measurements
L=110; //Length of Lightbox
W=60; //Width of Lightbox
FaceH=25; //Height of FacePlate
//Constants
Wall=5; //Wall and bottom Thickness
SlotH=2; //Slot height for the slide in insert
SlotW=2; //Width of the tab for the slot
FaceT=2; //Thickness of faceplate
TwoWall = Wall*2; //Two walls combined width
InsertW=W-((Wall-SlotW)*2); //Total Width of the insert

cube([InsertW,L-Wall,SlotH]);
translate([SlotW,0,0]) cube([W-TwoWall,FaceT,FaceH]);