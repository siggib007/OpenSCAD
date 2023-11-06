difference()
{
  cube([200,40,45]);
  translate([5,4,5]) cube([38,32,50]);
  translate([70,11,5]) cube([18,8,50]);
  translate([110,7,5]) cylinder(h=50,d=3);
  translate([110,25,5]) cylinder(h=50,d=4);
  translate([135,11,5]) cube([12,8,50]);
  translate([165,10,5]) cube([17,10,50]);
  translate([190,15,5]) cylinder(h=50,d=4);
}