include <BusinessCardBoxVars.scad>;
CutOutX= FrontHingeLatch*1.5;
CutoOutYZ=LockDia*2;
RingDia=8;
RingR=RingDia/2;

difference()
{
  rotate_extrude() translate([RingDia,0,0]) circle(r=LockDia*0.75);
  translate([-CutOutX/2,RingR,-LockDia]) cube([CutOutX,RingDia,RingDia]);
}
