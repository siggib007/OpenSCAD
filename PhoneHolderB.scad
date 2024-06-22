$fn=256;
rotate([-90,0,0])
{
  difference()
  {
    translate([-3,0,0]) cube([108,5,30]);
    translate([76,-2,15]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
    translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
  }
  difference()
  {
    union()
    {
      translate([-7,-2,0]) cube([6,7,30]);
      translate([-4,-4,0]) cylinder(h=30,d=6);
    }
    translate([-4,-4,-2]) cylinder(h=35,d=2);
    translate([-12,-10,-1]) cube([15,10,6.5]);
    translate([-12,-10,9.5]) cube([15,10,6]);
    translate([-12,-10,19.5]) cube([15,10,6]);
  }
}