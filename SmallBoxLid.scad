Wall=3;
DW=Wall*2;
LengthX=125+DW;
WidthY=55+DW;
BoxH=5;
Brim=1;
DB=Brim*2;

difference()
{
  cube([LengthX,WidthY,BoxH]);
  translate([Brim,Brim,Wall]) cube([LengthX-DB,WidthY-DB,BoxH+DB]);  
}