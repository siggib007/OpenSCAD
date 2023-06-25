difference()
{
  cube([180,30,45]);
  translate([10,5,5]) cube([30,20,50]);
  translate([50,11,5]) cube([18,8,50]);
  translate([115,11,5]) cube([12,8,50]);
  translate([145,10,5]) cube([15,8,50]);
  translate([170,15,5]) cylinder(h=50,d=4);
}