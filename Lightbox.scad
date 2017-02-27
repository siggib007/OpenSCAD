LightBox(60,115,25);

module LightBox(W,L,FaceH)
{
	//W: Width of the Lightbox
	//L: Lengths of the lightbox
	//FaceH://Height of the faceplate of the insert
	difference()
	{
		Wall=5; //Wall and bottom Thickness
		H=FaceH+Wall*2; //Height of the box is the height of the Faceplate plus two walls
		Top=1; //Thickness of the top of the box
		SlotH=2; //Slot height for the slide in insert
		SlotW=2; //Width of the tab for the slot
		FaceT=2; //Thickness of the Faceplate
		Buffer=1;//Extra space required to cut through other objects.
		TwoWall = Wall*2; //Two walls combined width
		InsertW=(Wall-SlotW)*2; //Total Width of the insert

		cube([W,L,H]); //Initial starting box
		translate([Wall,Wall,Wall]) cube([W-TwoWall,L-(TwoWall-Buffer),H-Wall-Top]); //Hollows out the initial box
		translate([Wall-SlotW,Wall,Wall]) cube([W-InsertW,L,SlotH]); //Hollows out room for slot
		translate([Wall,L-Wall,Wall]) cube([W-TwoWall,Wall,FaceH-Wall]); //Hollows out an opening for the insert
		translate([Wall,L-SlotW,Wall]) cube([W-TwoWall,FaceT+Buffer,FaceH]);
	}
}