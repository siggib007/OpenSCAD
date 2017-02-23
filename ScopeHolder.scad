translate ([0,0,9.4])
rotate([0,90,0])
difference()
{
	cylinder(h=20,d=15);
	translate([0,0,-2]) cylinder(h=25,d=9);
}
difference()
{
	translate([0,-5,0]) cube([100,10,5]);
	translate([96,-4,1]) cube([5,8,3]);
}
translate([0,10,0]) cube([95,10,5]);
color("red") translate([95,11,1]) cube([5,8,3]);