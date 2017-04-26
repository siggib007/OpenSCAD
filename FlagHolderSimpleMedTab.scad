difference()
{
	cube([22,14,52]);
	translate([11,7,17]) cylinder(h=36,d=7);
}
difference()
{
	cube([22,2,60]);
	translate([6,3,56]) rotate([90,0,0]) cylinder(h=4,d=3);
	translate([16,3,56]) rotate([90,0,0]) cylinder(h=4,d=3);
}