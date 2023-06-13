$fn = 96;
cube([150,5,150]);
difference()
{
  translate([130,0,110]) cube([5,85,40]);
  translate([125,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}
  
difference()
{
  translate([10,0,110]) cube([5,85,40]);
  translate([5,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}
translate([110,0,80])   cube([5,40,20]);
translate([80,30,90])   rotate([0,90,0]) cylinder(h=35,d=10);
translate([110,20,60])  rotate([90,0,0]) cylinder(h=20,d=10);
translate([80,20,60])   rotate([90,0,0]) cylinder(h=20,d=16);
translate([50,20,60])   rotate([90,0,0]) cylinder(h=20,d=16);

translate([110,30,20])  rotate([110,0,0]) cylinder(h=30,d=5);
translate([50,30,20])   rotate([110,0,0]) cylinder(h=30,d=5);