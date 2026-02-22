include <BusinessCardBoxVars.scad>;

LidY = HightZ;
HingeY = (HightZ+HW);
LockW = 2;
LockDia = 3;


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
  translate([(HL)-Buff,Wall,Wall]) cube([LockW,DW,DW]);
  translate([(HL)-HW,DW,DW]) rotate([0,90,0]) cylinder(d=LockDia,h=DW);
}