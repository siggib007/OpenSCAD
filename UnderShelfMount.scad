$fn = 128;
difference()
{
  cube([44,2,44]);
  translate([9,4,10]) rotate([90,0,0]) cylinder(h=6,d=4);
  translate([34,4,10]) rotate([90,0,0]) cylinder(h=6,d=4);
  translate([9,4,35]) rotate([90,0,0]) cylinder(h=6,d=4);
  translate([34,4,35]) rotate([90,0,0]) cylinder(h=6,d=4);
}
difference()
{
  cube([2,44,44]);
  translate([-2,20,9]) rotate([0,90,0]) cylinder(h=6,d=5);
  translate([-2,20,15]) rotate([0,90,0]) cylinder(h=6,d=9);
  translate([-2,20,30]) rotate([0,90,0]) cylinder(h=6,d=5);
  translate([-2,20,36]) rotate([0,90,0]) cylinder(h=6,d=9);
}