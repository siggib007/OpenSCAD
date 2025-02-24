$fn = 64;
difference()
{
  cube([54,80,22]);
  translate([2,2,2]) cube([50,90,18]);
  translate([12,-2,-2]) cube([30,90,16]);
  translate([4,-2,6]) cube([5,5,5]);
  translate([45,-2,6]) cube([5,5,5]);
}

difference()
{
  translate([12,70,21]) cube([30,10,10]);
  rotate([90,0,90]) 
    translate([75,25,10]) 
      cylinder(h=35,d=7);
  translate([10,67,21.4]) cube([35,10,7]);
}