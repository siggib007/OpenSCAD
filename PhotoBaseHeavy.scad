include <PhotoVars.scad>;

difference()
{
  cube([WideX,BoxDepthY,BaseHeightZ]);
  translate([-Buff,Thick,Thick]) cube([WideX+DB,Thick,BaseHeightZ]);
}
translate([0,ConnZ,0]) difference()
{
  cube([WideX,BoxDepthY-ConnZ,BoxH]);
  translate([Wall,Wall,Wall]) cube([WideX-DW,BoxDepthY-DW-ConnZ,BoxH]);
  translate([Brim,Brim,BoxH-LidZ]) cube([LidX,LidY,LidZ+Buff]);
}
