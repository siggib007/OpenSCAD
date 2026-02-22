include <BusinessCardBoxVars.scad>;

PenUHinge = NumHinge-1;
FrontHingeY = 6;
FrontHingeCutStart= -(FrontHingeY+(FrontHingeY/2));


difference()
{
  cube([LengthX,WidthY,HightZ]); //Base box
  translate([Wall,-Wall,Wall]) cube([LengthX-DW,WidthY,HightZ]);//Base cutout
}
difference() //Top Hinge
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

difference() //Front Hinge
{
  union()
  {
    translate([HL-HFH,-FrontHingeY,HW]) rotate([0,90,0]) cylinder(d=Wall,h=FrontHingeW);
    translate([HL-HFH,-FrontHingeY,0]) cube([FrontHingeW,FrontHingeY,Wall]);
  }
  translate([Wall,-FrontHingeY,HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX);
  translate([HL-HFHL,FrontHingeCutStart,-HFHL]) cube([FrontHingeLatch,FrontHingeY,DW]);
}
