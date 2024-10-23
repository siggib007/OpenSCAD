cube([90,25,2]);
translate([45,5,1]) 
linear_extrude(height=2, convexity=2) 
text("Almennt",16, font="Tahoma", halign="center", valign="middle");
translate([0,30,0]) 
{
  cube([90,25,2]);
  translate([45,5,1]) 
  linear_extrude(height=2, convexity=2) 
  text("Pappir",16, font="Tahoma", halign="center", valign="middle");
}
translate([0,60,0]) 
{
  cube([90,25,2]);
  translate([45,5,1]) 
  linear_extrude(height=2, convexity=2) 
  text("Plast",16, font="Tahoma", halign="center", valign="middle");
}