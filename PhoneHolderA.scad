$fn=128;
rotate([-90,0,0])
{
  difference()
  {
    cube([105,6,30]);
    translate([76,-2,15]) cube([30,10,30]);
    translate([80,-2,5]) rotate([0,-25,0]) cube([15,10,30]);
    translate([105,-2,0]) rotate([0,-25,0]) cube([15,10,30]);
  }
  translate([-5,3,0]) cylinder(h=10,d=6);
  translate([-5,3,0]) cylinder(h=30,d=3.0);
  translate([-5,0,0]) cube([5,6,10]);

  translate([0,30,0])
  {
    
  }
}
translate([5,14,-1]) 
linear_extrude(height=2, convexity=2) 
text("Öruggt Net",9, font="Tahoma", halign="left", valign="bottom");
translate([0,3,-1]) 
linear_extrude(height=2, convexity=2) 
text("Auðveldum netöryggi",6, font="Tahoma", halign="left", valign="bottom");
//translate([25,8,-1]) //rotate([90,0,0])
//linear_extrude(height=2)
//import("ÖruggtNet-wide-slogan.svg",dpi=1);