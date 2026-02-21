include <BusinessCardBoxVars.scad>;
HightZ = LidH;
HingeY = (WidthY-LidH/2)-1;
LidY = WidthY-LidH-2;

cube([LengthX,LidY,HightZ]);
translate([LengthX/3,LidY,0]) cube([LengthX/3,2,HightZ]);
difference()
{
  translate([LengthX/3,HingeY,HightZ/2]) rotate([0,90,0]) cylinder(d=LidH,h=LengthX/3);
  translate([-1,HingeY,HightZ/2]) rotate([0,90,0]) cylinder(d=2,h=LengthX+DW);
}