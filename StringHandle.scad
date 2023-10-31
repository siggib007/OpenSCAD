fn=256;
difference()
{
  cube([140,80,20]);
  translate([20,20,-5]) cube([100,80,30]);
  translate([70,25,10]) rotate([90,0,0])cylinder(d=8,h=30);
}
translate([0,80,10]) rotate([0,90,0]) cylinder(d=20,h=140);