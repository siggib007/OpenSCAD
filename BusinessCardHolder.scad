rotate([0,-15,0])
difference()
{
  cube([20,105,55]);
  translate([2,2,-2]) cube([16,101,60]);
  translate([2,-2,22]) cube([25,110,60]);
}
difference()
{
  translate([-13,0,0]) cube([30,105,20]);
  translate([-4,2,11]) cube([20,101,60]);
  translate([-2,-2,11]) cube([25,110,60]);
}
rotate([0,-15,0]) translate([16,0,-4.2]) cube([4,105,5]);