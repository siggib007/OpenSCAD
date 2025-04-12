difference()
{
  cube([30,20,25]);
  translate([5,10,1]) cube([20,1,30]);
}
*translate([15,0,17]) rotate([90,0,0])
linear_extrude(height=0.5, convexity=2) 
text("H=25 mm",4, font="Tahoma", halign="center", valign="center");
*translate([15,0,9]) rotate([90,0,0])
linear_extrude(height=0.5, convexity=2) 
text("W=30 mm",4, font="Tahoma", halign="center", valign="center");