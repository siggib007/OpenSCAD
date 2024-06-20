$fn=128;
difference()
{
  cube([14,54,24]);
  translate([-5,19,-2]) cube([20,17,20]);
  translate([-5,-5,10]) cube([30,20,30]);
  translate([-5,40,10]) cube([30,15,30]);
  translate([7,7,-5]) cylinder(h=20,d=5);
  translate([7,7,5]) cylinder(h=20,d=10);
  translate([7,47,-5]) cylinder(h=20,d=5);
  translate([7,47,5]) cylinder(h=20,d=10);
}