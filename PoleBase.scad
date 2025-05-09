difference()
{
  cube(60);
  translate([3,3,3]) cube([54,54,60]);
  translate([2,2,58]) cube([56,56,3]);
}
difference()
{
  translate([22,22,0]) cube([16,16,60]);
  translate([24.9,24.9,50]) cube([10.4,10.4,16]);
  difference()
  {
    translate([2,2,58]) cube([56,56,3]);
    translate([23,23,58]) cube([14,14,6]);
  }
}

