include <BusinessCardBoxVars.scad>;
FrontLatchX = FrontHingeLatch*1.5;


difference()
{
  union()
  {
    translate([(FrontHingeW/2) - (FrontHingeLatch/2),FrontHingeLatch,0]) cube([FrontHingeLatch,DW,LatchH]);
    translate([2,HingePinDia,HingePinDia]) rotate([0,90,0]) cylinder(d=LatchH,h=FrontHingeLatch);
    translate([0,LatchH,0]) cube([FrontHingeW,DW+DW,LatchH]);
  }
  translate([(FrontHingeW/2)-(FrontLatchX/2),DW,-Buff]) cube([FrontLatchX,TW,TW]);
  translate([-Buff,HingePinDia,HingePinDia]) rotate([0,90,0]) cylinder(d=HingePinDia,h=DW);
}