// This will generate a card holder per your specific dimensions in mm.
// Specify the following dimensions

// CardW, CardL, CardH, Wall, Count

// CardW: The Width of the slot for the card
// CardL: The lenght of the slot for the card
// CardH: The height of the slot for the card
// Wall: The thickness of the walls of the holder
// Count: How many holders do you want chained together.

CardHolder(12,15,1.5,2,4);

//Only mess with this is you know what you are doing.
module CardHolder(CardW,CardL,CardH,Wall,Count)
{
	HolderW = CardW + (Wall*2); //Holder Exterior Width
	HolderH = CardH + (Wall*2); //Holder Exterior Height
	HolderL = CardL + Wall; //Holder Exterior Length
	CutoutH = 5; //Front cutout Height, greater than slot to top
	CutoutL = 6; //The length of the cutout
	for (i=[0:Count-1])
	{
		translate([HolderW*i,0,0])difference()
		{
			cube([HolderW,HolderL,HolderH]);
			translate([Wall,Wall,Wall]) cube([CardW,CardL,CardH]);
			translate([Wall,CardL-Wall,Wall]) cube([CardW,CutoutL,CutoutH]);
		}
	}
}
