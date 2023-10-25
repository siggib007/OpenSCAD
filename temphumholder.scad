difference()
{
  cube([46,46,25],center=true);
  translate([0,0,-9]) cylinder(d=42,h=25);
  translate([0,0,-7]) cube([60,35,5],center=true);
  translate([0,0,-7]) cube([35,60,5],center=true);
  rotate([0,0,30]) translate([0,0,15]) cube([6,44,25],center=true);
  translate([0,-22,5]) rotate([90,0,0]) linear_extrude(height=2, convexity=2) text("Version 2",3, font="Tahoma", halign="center", valign="center");

}