include <PhotoVars.scad>;

difference()
{
  cube([WideX,BaseDepthY,BaseHeightZ]);
  translate([-Buff,Thick,Thick]) cube([WideX+DB,Thick,BaseHeightZ]);
}