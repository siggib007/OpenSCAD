difference()
{
	translate([15,1,0]) cube([10,10,40]);
	translate([20,6,5]) cylinder(h=36,d=7);
}
difference()
{
	cube([40,2,40]);
	translate([32.5,-2,19]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([7.5,-2,19]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([32.5,-2,0]) rotate([-15,0,0]) cylinder(h=25,d=2);
	translate([7.5,-2,0]) rotate([-15,0,0]) cylinder(h=25,d=2);
}