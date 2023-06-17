$fn = 96;
cube([150,5,150]);
difference()
{
  translate([120,0,110]) cube([5,85,40]);
  translate([115,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}
  
difference()
{
  translate([20,0,110]) cube([5,85,40]);
  translate([15,45,150]) rotate([0,90,0]) cylinder(h=16,d=55);
}
translate([120,0,80])   cube([5,40,20]);
translate([50,30,90])   rotate([0,90,0]) cylinder(h=75,d=10);
translate([110,30,60])  rotate([90,0,0]) cylinder(h=30,d=10);
translate([70,30,60])   rotate([90,0,0]) cylinder(h=30,d=16);
translate([30,31,65])   rotate([100,0,0]) cylinder(h=30,d=12);

translate([110,30,20])  rotate([110,0,0]) cylinder(h=30,d=5);
translate([50,30,20])   rotate([110,0,0]) cylinder(h=30,d=5);