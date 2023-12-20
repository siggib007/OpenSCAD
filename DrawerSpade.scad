$fn=128;
cube([120,200,3]);
difference()
{
  cube([10,200,16]);
  translate([8,210,9]) rotate([90,0,0]) cylinder(h=220,d=12);
}