Wall=3;
DW=Wall*2;
LengthX=125+DW;
WidthY=55+DW;
HightZ=60;
Brim=1;
DB=Brim*2;


difference()
{
  cube([LengthX,WidthY,HightZ]); //Base box
  translate([Wall,Wall,Wall]) cube([LengthX-DW,WidthY-DW,HightZ]); //Base cutour
  translate([-1,-1,HightZ-DB]) cube([LengthX+DW,DB,DB+1]);
  translate([-1,-1,HightZ-DB]) cube([2,WidthY+DW,DB+1]);
  translate([-1,WidthY-Brim,HightZ-DB]) cube([LengthX+DW,DB,DB+1]);
  translate([LengthX-Brim,-1,HightZ-DB]) cube([DB,WidthY+DW,DB+1]);
}
