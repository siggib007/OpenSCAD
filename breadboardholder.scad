difference()
{
  cube([160,80,40]);
  translate([-5,10,10]) cube([220,60,50]);
  translate([40,15,25]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([120,15,25]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([40,86,25]) rotate([90,0,0]) cylinder(d=16,h=80);
  translate([120,86,25]) rotate([90,0,0]) cylinder(d=16,h=80);
}