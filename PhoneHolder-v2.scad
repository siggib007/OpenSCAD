$fn=128;
difference()
{
  cube([105,6,30]);
  translate([76,-2,15]) cube([30,10,30]);
  translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
  translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
}

difference()
{
  union()
  {
    translate([-5,0,0]) cube([5,6,30]);
    translate([-5,3,0]) cylinder(h=30,d=6);
  }
  translate([-12,-2,5]) cube([15,10,5]);
  translate([-12,-2,15]) cube([15,10,5]);
  translate([-12,-2,25]) cube([15,10,7]);
  translate([-5,3,-2]) cylinder(h=35,d=2);
}

translate([0,30,0])
{
  difference()
  {
    translate([-1,0,0]) cube([106,5,30]);
    translate([76,-2,15]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
    translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
  }
  translate([-7,-2,0]) cube([6,7,30]);  
  difference()
  {
    translate([-4,-4,0]) cylinder(h=30,d=6);
    translate([-4,-4,-2]) cylinder(h=35,d=2);
    translate([-12,-10,-1]) cube([15,15,6.5]);
    translate([-12,-10,9.5]) cube([15,15,6]);
    translate([-12,-10,19.5]) cube([15,15,6]);
  }
  
}
//translate([25,4,5]) rotate([90,0,0])
//linear_extrude(height=5)
//import("ÖruggtNet-wide-slogan.svg",dpi=1);