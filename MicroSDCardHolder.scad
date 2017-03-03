MicroSD(12,15,1.5,2);

module MicroSD(CardW,CardL,CardH,Wall)
{
	HolderW = CardW + (Wall*2);
	HolderH = CardH + (Wall*2);
	CutoutH = 5;
	CutoutL = 3;
	translate([HolderW*0,0,0])difference()
	{
		cube([HolderW,CardL,HolderH]);
		translate([Wall,Wall,Wall]) cube([CardW,CardL,CardH]);
		translate([Wall,CardL-Wall,Wall]) cube([CardW,CutoutL,CutoutH]);
	}
}
