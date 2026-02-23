include <BusinessCardBoxVars.scad>;
CutOutX= FrontHingeLatch*3;
CutoOutYZ=LockDia*2;
RingDia=4;
RingR=RingDia/2;


difference()
{
  rotate_extrude() translate([RingDia,0,0]) circle(d=LockDia*0.75);
  translate([-CutOutX/2,0,-LockDia/2]) cube([CutOutX,RingDia*2,RingDia]);
}
