$fn=128;
difference()
{
  cube([105,6,30]);
  translate([76,-2,15]) cube([30,10,30]);
  translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
  translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
}
translate([-5,3,0]) cylinder(h=10,d=6);
translate([-5,3,0]) cylinder(h=30,d=3);
translate([-5,0,0]) cube([5,6,10]);

translate([0,30,0])
{
  difference()
  {
    cube([105,5,30]);
    translate([76,-2,15]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
    translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
  }
  translate([-7,0,10]) cube([7,5,20]);  
  difference()
  {
    translate([-4,-2,10]) cylinder(h=20,d=6);
    translate([-4,-2,-2]) cylinder(h=35,d=3.5);
//    translate([-9,-5,-2]) cube([10,15,15]);
  }
  
}
//translate([25,4,5]) rotate([90,0,0])
//linear_extrude(height=5)
//import("ÖruggtNet-wide-slogan.svg",dpi=1);