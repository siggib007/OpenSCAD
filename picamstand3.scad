$fn=128;
cube([60,110,5]);
difference()
{
  translate([10,100,0]) cube([40,5,145]);
  translate([20,80,25]) cube([20,30,5]);
}
translate([20,110,140]) rotate([90,0,0]) cylinder(h=10,d=2);
translate([41,110,140]) rotate([90,0,0]) cylinder(h=10,d=2);
translate([20,110,127]) rotate([90,0,0]) cylinder(h=10,d=2);
translate([41,110,127]) rotate([90,0,0]) cylinder(h=10,d=2);