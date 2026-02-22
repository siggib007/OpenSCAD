include <BusinessCardBoxVars.scad>;

LidY = HightZ-Wall;
HingeY = (HightZ+HW-Wall);
LockW = FrontHingeLatch;
LockDia = 3;
DLD = LockDia+4;


cube([LengthX,LidY,Wall]);

difference()
{
  union()
  {
    translate([LengthX/NumHinge,HingeY,HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([LengthX/NumHinge,LidY,0]) cube([LengthX/NumHinge,HW,Wall]);
  }
  translate([-Buff,HingeY,HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX+DW);
}
difference()
{
  translate([(HL)-HFHL,Wall,Wall]) cube([LockW,DLD,DLD+LatchH]);
  translate([(HL)-HW,Wall+DLD/2,Wall+DLD/2+LatchH]) rotate([0,90,0]) cylinder(d=LockDia,h=DW);
}