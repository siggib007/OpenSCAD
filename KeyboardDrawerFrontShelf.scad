cube([230,80,10]);
cube([230,5,25]);
difference()
{
  translate([0,80,0]) cube([230,6,10]);
  translate([-1,82,-1]) cube([240,2,8]);
  translate([-1,83,-1]) cube([240,6,4]);
}