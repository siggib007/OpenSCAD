difference()
{
  cube([150,30,45]);
  translate([10,5,5]) cube([30,20,50]);
  translate([50,11,5]) cube([18,8,50]);
  translate([80,11,5]) cube([12,8,50]);
  translate([105,10,5]) cube([18,10,50]);
  translate([135,15,5]) cylinder(h=50,d=4);
}