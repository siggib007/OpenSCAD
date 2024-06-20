difference()
{
  cube([160,125,160]);
  translate([-5,-5,30]) cube([220,30,170]);
  translate([-5,10,10]) cube([220,105,170]);
  translate([40,15,20]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([120,15,20]) rotate([90,0,0]) cylinder(d=6,h=30);
  translate([40,136,20]) rotate([90,0,0]) cylinder(d=16,h=130);
  translate([120,136,20]) rotate([90,0,0]) cylinder(d=16,h=130);
}