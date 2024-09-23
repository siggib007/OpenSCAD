difference()
{
  cylinder(h=8,d=60);
  translate([0,0,4]) cylinder(h=5,d=51.5);
}
translate([28,-5,0]) cube([6,10,4]);
translate([34,0,0]) cylinder(h=4,d=10);

difference()
{
  translate([0,0,2]) cylinder(h=3,d=48.5);
  translate([0,0,2]) cylinder(h=4,d=46);
}