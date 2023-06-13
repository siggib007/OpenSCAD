difference()
{
  cube([180,30,45]);
  translate([10,5,5]) cube([30,20,50]);
  translate([50,11,5]) cube([18,8,50]);
  translate([110,11,5]) cube([12,8,50]);
  translate([135,10,5]) cube([18,10,50]);
  translate([165,15,5]) cylinder(h=50,d=4);
}