rotate([0,-15,0])
difference()
{
  cube([20,90,50]);
  translate([2,2,-2]) cube([16,86,60]);
  translate([2,-2,20]) cube([25,95,60]);
}
difference()
{
  translate([-11,0,0]) cube([30,90,20]);
  translate([-4,2,6]) cube([20,86,60]);
  translate([-2,-2,6]) cube([25,95,60]);
}
translate([17,45,10]) 
rotate([75,0,90])
linear_extrude(height=2, convexity=2) 
text("Öruggt Net",9, font="Tahoma", halign="center", valign="middle");
