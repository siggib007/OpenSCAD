difference()
{
	translate([0,0,50]) sphere(d = 100);
	translate([0,0,-1]) cylinder(h=110,d=20);
	translate([0,50,50]) rotate([90,0,0]) cylinder(h=110,d=20);
	translate([-50,0,50]) rotate([0,90,0]) cylinder(h=110,d=20);
	translate([0,0,0]) rotate([45,0,0]) cylinder(h=110,d=20);
}