include <BusinessCardBoxVars.scad>;

LidY = WidthY-Wall;
TopRHingeX = (LengthX/NumHinge)*PenUHinge;

cube([LengthX,LidY,Wall]);
difference()
{
  union()
  {
    translate([LengthX/NumHinge,LidY+HW,HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([LengthX/NumHinge,LidY,0]) cube([LengthX/NumHinge,HW,Wall]);
    translate([(LengthX/NumHinge)*AntPenUHinge,LidY+HW,HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([(LengthX/NumHinge)*AntPenUHinge,LidY,0]) cube([LengthX/NumHinge,HW,Wall]);

  }
  translate([-Buff,LidY+HW,HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX+DW);
}
difference()
{
  union()
  {
    translate([0,-HW,HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([0,-HW,0]) cube([LengthX/NumHinge,HW,Wall]);
    translate([TopRHingeX,-HW,HW]) rotate([0,90,0]) cylinder(d=Wall,h=LengthX/NumHinge);
    translate([TopRHingeX,-HW,0]) cube([LengthX/NumHinge,HW,Wall]);
  }
  translate([-Buff,-HW,HW]) rotate([0,90,0]) cylinder(d=HingePinDia,h=LengthX+DW);
}