$fn=256;
rotate([-90,0,0])
{
  difference()
  {
    translate([0,0,0]) cube([105,6,30]);
    translate([76,-2,20]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([23,10,30]);
    
  }
  difference()
  {
    union()
    {
      translate([-8,-2,0]) cube([8,8,30]);
      translate([-5,-4,0]) cylinder(h=30,d=6);
    }
    translate([-5,-4,-2]) cylinder(h=35,d=2);
    translate([-12,-10,-1]) cube([15,10,6]);
    translate([-12,-10,10]) cube([15,10,5]);
    translate([-12,-10,20]) cube([15,10,5]);
  }
}

