difference()
{
	cube([65,60,60]);
	translate([5,-1,-1]) cube([55,65,56]);
}
translate([32.5,30,60]) difference()
{
	cylinder(h=30,d=12);
	translate([0,0,0]) cylinder(h=50,d=8);
}