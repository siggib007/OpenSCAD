include <BusinessCardBoxVars.scad>;

PenUHinge = NumHinge-1;
FrontHingeW = 6;
HFH = FrontHingeW/2;
FrontHingeLatch = 2;
HFHL = FrontHingeLatch/2;

difference()
{
  cube([LengthX,WidthY,HightZ]); //Base box
  translate([Wall,Wall,Wall]) cube([LengthX-DW,WidthY-DW,HightZ]); //Base cutout
  translate([Wall,-Wall,Wall]) cube([LengthX-DW,WidthY,HightZ]);
}
difference()
{
  union()
  {
    translate([0,WidthY-HW,HightZ+HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([(LengthX/NumHinge)*PenUHinge,WidthY-HW,HightZ+HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([0,WidthY-Wall,HightZ]) cube([LengthX/NumHinge,Wall,HW]);
    translate([(LengthX/NumHinge)*PenUHinge,WidthY-Wall,HightZ]) cube([LengthX/NumHinge,Wall,HW]);
  }
  translate([-Buff,WidthY-HW,HightZ+HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX+DW);
}
difference()
{
  union()
  {
    translate([HL-HFH,-HW,HW]) rotate([0,90,0]) cylinder(d=Wall,h=FrontHingeW);
    translate([HL-HFH,-HW,0]) cube([FrontHingeW,HW,Wall]);
  }
  translate([-Buff,-HW,HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX+DW);
  translate([HL-HFHL,-DW,-HFHL]) cube([FrontHingeLatch,DW,DW]);
}