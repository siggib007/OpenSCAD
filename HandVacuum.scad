$fn = 96;
cube([205,5,150]);
difference()
{
  translate([105,0,110])  cube([10,85,40]);
  translate([100,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}
  
difference()
{
  translate([30,0,110])  cube([10,85,40]);
  translate([25,45,150]) rotate([0,90,0]) cylinder(h=16,d=65);
}

translate([190,0,80])   cube([10,85,70]);

translate([105,0,75])   cube([10,40,30]);
translate([35,30,90])   rotate([0,090,0]) cylinder(h=80,d=8);
translate([110,36,55])  rotate([100,0,0]) cylinder(h=35,d=10);
translate([70,36,55])   rotate([100,0,0]) cylinder(h=35,d=16);
translate([30,21,51.5]) rotate([100,0,0]) cylinder(h=20,d=10);
translate([30,31,53.5]) rotate([100,0,0]) cylinder(h=30,d=8);
translate([30,40,55])   rotate([100,0,0]) cylinder(h=40,d=6);

translate([100,30,20])  rotate([110,0,0]) cylinder(h=30,d=10);
translate([40,30,20])   rotate([110,0,0]) cylinder(h=30,d=10);
