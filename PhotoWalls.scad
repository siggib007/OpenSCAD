include <PhotoVars.scad>;

cube([WideX,DepthY,Thick]);
difference()
{
  cube([WideX,ConnY,ConnZ]);
  translate([-Buff,-Buff,Thick]) cube([WideX+DB,SlottH,Thick]);
}
translate([(WideX/2)-(BeamX/2),ConnY,0]) cube([BeamX,DepthY-ConnY,ConnZ]);
translate([0,DepthY-Buff,Thick]) cube([WideX,SlottH,Thick]);