cube([165,60,5]);
difference()
{
  translate([15,30,5]) cylinder(d=15,h=6);
  translate([15,30,0]) cylinder(d=2,h=15);
}
difference()
{
  translate([150,30,5]) cylinder(d=15,h=6);
  translate([150,30,0]) cylinder(d=2,h=15);
}  