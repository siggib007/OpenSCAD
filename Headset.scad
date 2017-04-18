difference()
{
	cube([30,24,15]);
	translate([3,2,-3]) cube([30,20,20]);
}
translate([-8,18,0]) difference()
{
	cylinder(d=20,h=15);
	translate([0,0,-3]) cylinder(d=16,h=20);
	translate([-15,-16,-3]) cube([30,15,20]);
}
translate([-18,8,0]) cube([2,10,15]);