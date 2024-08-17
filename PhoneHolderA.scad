$fn=256;
rotate([-90,0,0])
{
  difference()
  {
    cube([105,6,30]);
    translate([76,-2,22]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([23,10,30]);
    
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
}
translate([5,14,-1]) 
linear_extrude(height=2, convexity=2) 
text("Öruggt Net",9, font="Tahoma", halign="left", valign="bottom");
translate([0,3,-1]) 
linear_extrude(height=2, convexity=2) 
text("Auðveldum netöryggi",6, font="Tahoma", halign="left", valign="bottom");
