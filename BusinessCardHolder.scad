rotate([0,-15,0])
difference()
{
  cube([20,100,50]);
  translate([2,2,-2]) cube([16,96,60]);
  translate([2,-2,20]) cube([25,105,60]);
}
difference()
{
  translate([-11,0,0]) cube([30,100,20]);
  translate([-4,2,6]) cube([20,96,60]);
  translate([-2,-2,6]) cube([25,105,60]);
}
translate([17,50,10]) 
rotate([75,0,90])
linear_extrude(height=2, convexity=2) 
text("Öruggt Net",9, font="Tahoma", halign="center", valign="middle");
