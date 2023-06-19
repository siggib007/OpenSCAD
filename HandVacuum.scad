$fn = 96;
cube([205,5,150]);
difference()
{
  translate([110,0,110])  cube([5,85,40]);
  translate([105,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}
  
difference()
{
  translate([10,0,110]) cube([5,85,40]);
  translate([5,45,150]) rotate([0,90,0]) cylinder(h=16,d=55);
}

translate([190,0,80])  cube([5,85,70]);

translate([110,0,80])   cube([5,40,20]);
translate([40,30,90])   rotate([0,090,0]) cylinder(h=75,d=10);
translate([110,36,55])  rotate([100,0,0]) cylinder(h=35,d=10);
translate([70,36,55])   rotate([100,0,0]) cylinder(h=35,d=16);
translate([30,40,55])   rotate([100,0,0]) cylinder(h=40,d=6);

translate([100,30,20])  rotate([110,0,0]) cylinder(h=30,d=5);
translate([40,30,20])   rotate([110,0,0]) cylinder(h=30,d=5);
