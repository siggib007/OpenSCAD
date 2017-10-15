difference()
{
	cube([20,10,55]);
	translate([10,5,22]) cylinder(h=35,d=7.5);
	translate([-1,2,-1]) cube([6,10,60]);
	translate([15,2,-1]) cube([6,10,60]);
}