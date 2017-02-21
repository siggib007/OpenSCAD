translate ([0,0,7])
rotate([0,90,0])
difference()
{
	cylinder(h=20,d=11);
	translate([0,0,-2]) cylinder(h=25,d=8.7);
}
difference()
{
	translate([0,-3,0]) cube([100,6,2.5]);
	translate([96,-2,0.5]) cube([5,4,1.5]);
}
translate([0,10,0]) cube([95,6,2]);
color("red") translate([95,11,0.25]) cube([5,4,1.5]);