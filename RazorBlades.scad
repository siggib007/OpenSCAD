$fn = 64;
difference()
{
  cube([54,80,20]);
  translate([2,2,2]) cube([50,90,16]);
  translate([12,-2,-2]) cube([30,90,16]);
  translate([4,-2,6]) cube([5,5,5]);
  translate([45,-2,6]) cube([5,5,5]);
}

difference()
{
  translate([12,70,19]) cube([30,10,10]);
  rotate([90,0,90]) 
    translate([75,23,10]) 
      cylinder(h=35,d=7);
  translate([10,67,20]) cube([35,10,7]);
}