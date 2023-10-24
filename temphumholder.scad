difference()
{
  cube([46,46,25],center=true);
  translate([0,0,-9]) cylinder(d=42,h=25);
  translate([0,0,-7]) cube([60,35,5],center=true);
  translate([0,0,-7]) cube([35,60,5],center=true);
  rotate([0,0,27]) translate([0,0,15]) cube([6,44,25],center=true);
}