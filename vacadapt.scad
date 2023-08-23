difference()
{
  cylinder(d=39,h=2);
  translate([0,0,-1]) cylinder(d=30,h=4);
  translate([-20,-2,1]) cube([45,4,5]);
  translate([-2,-20,1]) cube([4,45,5]);
  rotate([0,0,46]) translate([-20,-2,1]) cube([45,4,5]);
  rotate([0,0,46]) translate([-2,-20,1]) cube([4,45,5]);
  rotate([0,0,23]) translate([-2,-20,1]) cube([4,45,5]);
  rotate([0,0,23]) translate([-20,-2,1]) cube([45,4,5]);
  rotate([0,0,69]) translate([-2,-20,1]) cube([4,45,5]);
  rotate([0,0,69]) translate([-20,-2,1]) cube([45,4,5]);
}