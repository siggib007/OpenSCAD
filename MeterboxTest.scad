difference()
{
	cube([35,56,45]);
	translate([4,5,14]) cube([86,46,55]);
	translate([1.5,2.5,63]) cube([91,51,3]);
	translate([3.7,22.5,54]) cube([1,11,11]);
	translate([89,22.5,54]) cube([1,11,11]);
	translate([-1,20,2]) cube([40,16,7]);
	translate([-1,16,6.3]) cube([40,24,11]);
	translate([-1,20,15.2]) cube([40,16,7]);
	translate([-1,23.5,22]) cube([40,9,18]);
	translate([-1,18,2]) cube([3,20,7]);
	translate([-1,14,8]) cube([3,28,11]);
	translate([-1,18,18]) cube([3,20,7]);
	translate([-1,21,24]) cube([3,13,12]);
}

translate ([35,44,0])
rotate([0,-90,0])
union()
{
	translate([0,18,0]) cube([3,20,7]);
	translate([0,14,6]) cube([3,28,11]);
	translate([0,18,16]) cube([3,20,7]);
	translate([0,21,22]) cube([3,13,12]);
}