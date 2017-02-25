translate ([0,1,11.4])
rotate([0,90,0])
difference()
{
	cylinder(h=20,d=15);
	translate([0,0,-2]) cylinder(h=25,d=9);
}
difference()
{
	translate([0,-5,0]) cube([100,12,7]);
	translate([90,-3,2]) cube([11,8,3]);
}
translate([0,10,0]) cube([90,12,7]);
color("red") translate([90,12,2]) cube([10,8,3]);