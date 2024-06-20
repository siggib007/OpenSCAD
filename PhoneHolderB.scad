$fn=128;
rotate([-90,0,0])
{
  difference()
  {
    translate([-3,0,0]) cube([108,5,30]);
    translate([76,-2,15]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
    translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
  }
  translate([-8,-1,10]) cube([6,6,20]);  
  difference()
  {
    translate([-5,-3,10]) cylinder(h=20,d=6);
    translate([-5,-3,-2]) cylinder(h=35,d=3.5);
  }
}