difference()
{
  cube([14,14,20]);
  translate([1.9,1.9,11]) cube([10.1,10.1,10]);
}

difference()
{
  translate([14,0,0]) cube([10,14,14]);
  translate([16,1.9,1.9]) cube([10,10.1,10.1]);
}

difference()
{
  translate([0,14,0]) cube([14,10,14]);
  translate([1.9,15,1.9]) cube([10.1,10,10.1]);
}