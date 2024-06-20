$fn=128;
cube([60,110,5]);
difference()
{
  translate([10,100,0]) cube([40,5,140]);
  translate([20,80,25]) cube([20,30,5]);
}
translate([9,65,0]) cylinder(d=2.5, h=8);
translate([51,65,0]) cylinder(d=2.5, h=8);
translate([20,110,135]) rotate([90,0,0]) cylinder(h=10,d=2);
translate([41,110,135]) rotate([90,0,0]) cylinder(h=10,d=2);