difference()
{
	cube([22,14,60]);
	translate([-1,2,52]) cube([25,14,9]);
	translate([11,7,17]) cylinder(h=36,d=7);
	translate([16,-2,39]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([ 6,-2,39]) rotate([-15,0,0]) cylinder(h=25,d=2);
}
