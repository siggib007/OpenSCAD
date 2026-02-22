include <BusinessCardBoxVars.scad>;
FrontLatchX = FrontHingeLatch*1.5;
PegLen=DLD*1.5;
LatchLen=PegLen*1.35;

difference()
{
  union()
  {
    translate([(FrontHingeW/2)-(FrontHingeLatch/2),FrontHingeLatch,0]) cube([FrontHingeLatch,DW,LatchH]);
    translate([2,HingePinDia,HingePinDia]) rotate([0,90,0]) cylinder(d=LatchH,h=FrontHingeLatch);
    translate([0,LatchH,0]) cube([FrontHingeW,LatchLen,LatchH]);
  }
  translate([(FrontHingeW/2)-(FrontLatchX/2),DW,-Buff]) cube([FrontLatchX,PegLen,LatchH+DB]);
  translate([-Buff,HingePinDia,HingePinDia]) rotate([0,90,0]) cylinder(d=HingePinDia,h=DW);
}