include <BusinessCardBoxVars.scad>;

difference()
{
  cube([LengthX,WidthY,HightZ]); //Base box
  translate([Wall,Wall,Wall]) cube([LengthX-DW,WidthY-DW,HightZ]); //Base cutour
  translate([Wall,-Wall,Wall]) cube([LengthX-DW,WidthY,HightZ]);
}
difference()
{
  union()
  {
    translate([0,WidthY-2,HightZ+1]) rotate([0,90,0]) cylinder(d=5,h=LengthX/3);
    translate([(LengthX/3)*2,WidthY-2,HightZ+1]) rotate([0,90,0]) cylinder(d=5,h=LengthX/3);
  }
  translate([-1,WidthY-2,HightZ+1]) rotate([0,90,0]) cylinder(d=2,h=LengthX+DW);
}