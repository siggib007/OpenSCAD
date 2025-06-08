WideY=50;
LengthX=100;
HightZ=80;
Wall=5;
DW=Wall*2;
LidZ=3;
Brim=2;
DB=Brim*2;

difference()
{
  cube([LengthX,WideY,HightZ]);
  translate([Wall,Wall,Wall]) cube([LengthX-DW,WideY-DW,HightZ]);
  translate([Brim,Brim,HightZ-LidZ]) cube([LengthX-DB,WideY-DB,LidZ+1]);
}

translate([Brim,WideY+DW,0]) cube([LengthX-DB,WideY-DB,LidZ]);