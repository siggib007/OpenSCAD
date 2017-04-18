difference()
{
	cylinder(h=25,d1=31,d2=33);
	translate([0,0,-1]) cylinder(h=27,d1=27,d2=19);
}
translate([0,0,25]) difference()
{
	cylinder(h=25,d1=33,d2=31);
	translate([0,0,-1]) cylinder(h=27,d1=29,d2=27);
}