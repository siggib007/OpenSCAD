include <BusinessCardBoxVars.scad>;



difference()
{
  union()
  {
    cube([FrontHingeLatch,DW*2,LatchH]);
    translate([-FrontHingeLatch,LatchH,0]) cube([FrontHingeW,DW+LatchH,LatchH]);
  }
  translate([0,DW,-Buff]) cube([FrontHingeLatch,FrontHingeW,DW+HingePinDia]);
  translate([-Buff,HingePinDia,HingePinDia]) rotate([0,90,0]) cylinder(d=HingePinDia,h=DW);
}