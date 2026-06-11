$fn=128;
difference()
{
  cube([190,165,10]);
  translate([90,140,5]) cube([10,10,6]);
  translate([90,140,5]) cube([10,15,3]);
  translate([75,10,-1]) cylinder(h=12,r=1);
  translate([115,10,-1]) cylinder(h=12,r=1);
  translate([75,10,3]) cylinder(h=12,r=7);
  translate([116,10,3]) cylinder(h=12,r=7);
}