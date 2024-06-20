difference()
{
  cube([160,80,160]);
  translate([-5,10,10]) cube([220,60,170]);
  translate([-5,-5,30]) cube([220,30,170]);
  translate([40,15,20]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([120,15,20]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([40,86,20]) rotate([90,0,0]) cylinder(d=16,h=80);
  translate([120,86,20]) rotate([90,0,0]) cylinder(d=16,h=80);
}