difference()
{
	cube([18,16,35]);
	translate([9,9,2]) cylinder(h=35,d=7);
	translate([6,1,-1]) cube([7,2,29.5]);
	translate([7.5,-1,-1]) cube([4,3,29.5]);
	translate([5,-1,27.5]) cube([9,4,2]);
}