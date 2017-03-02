//Lightbox Measurements
L=110; //Length of Lightbox
W=60; //Width of Lightbox
FaceH=24; //Height of FacePlate
//Constants
Wall=5; //Wall and bottom Thickness
SlotH=2; //Slot height for the slide in insert
SlotW=2; //Width of the tab for the slot
FaceT=2; //Thickness of faceplate
CableH=3; //Height of cable slot
CableW=5; //Width of cable slot
TwoWall = Wall*2; //Two walls combined width
InsertW=W-((Wall-SlotW)*2); //Total Width of the insert

cube([InsertW,L-Wall,SlotH]); //slot plate
difference() //FacePlate with cut out for cable passthrough
{
	//FacePlate: Width=Interior of Lightbox = Exterior width - Walls shifted by slotwidth
	translate([SlotW,0,0]) cube([W-TwoWall,FaceT,FaceH]);
	//Cable slot cut out, using Wall as cutout thickness since Cutout > thickness
	translate([W-TwoWall-SlotW,-1,1]) cube([CableW,Wall,CableH]);
}