difference()
{
	translate([25,1,0]) cube([10,10,60]);
	translate([30,6,25]) cylinder(h=36,d=7.5);
}
difference()
{
	cube([60,2,60]);
	translate([50,-2,35]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([50,-2,16]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([50,-2,-1]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([10,-2,35]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([10,-2,16]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([10,-2,-1]) rotate([-15,0,0]) cylinder(h=25,d=2);
}