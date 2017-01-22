difference()
{
	cube([110,56,65]);
	translate([12,5,18]) cube([86,46,51]);
	translate([9.5,2.5,63]) cube([91,51,3]);
	translate([11,22.5,54]) cube([1,11,11]);
	translate([97,22.5,54]) cube([1,11,11]);
	translate([-1,20,2]) cube([109,16,7]);
	translate([-1,16,8]) cube([109,24,11]);
	translate([-1,20,18]) cube([109,16,7]);
	translate([-1,23.5,24]) cube([109,9,18]);
	translate([-1,18,2]) cube([3,20,7]);
	translate([-1,14,8]) cube([3,28,11]);
	translate([-1,18,18]) cube([3,20,7]);
	translate([-1,21,24]) cube([3,13,12]);
}

translate ([80,48,0])
rotate([0,-90,0])
union()
{
	translate([0,18,0]) cube([3,20,7]);
	translate([0,14,6]) cube([3,28,11]);
	translate([0,18,16]) cube([3,20,7]);
	translate([0,21,22]) cube([3,13,12]);
}