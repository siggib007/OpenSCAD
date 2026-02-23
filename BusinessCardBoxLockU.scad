include <BusinessCardBoxVars.scad>;


difference()
{
  translate([0,0,0]) cube([FrontHingeW,5,2]);
  translate([2,-Buff,-Buff]) cube([FrontHingeLatch,4,DW]);
}
