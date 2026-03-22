WideX=245;
DepthY=40;
HeightZ=10;
Thick=2;
Buff=1;
BoxH=30;
Wall=5;
Brim=2;
DBR=Brim*2;
Conn=Thick*3;

LidZ=3;
LidX=WideX-DBR;
LidY=DepthY-DBR-Conn;

DW=Wall*2;
DB=Buff*2;

difference()
{
  cube([WideX,DepthY,HeightZ]);
  translate([-Buff,Thick,Thick]) cube([WideX+DB,Thick,HeightZ]);
}
translate([0,Conn,0]) difference()
{
  cube([WideX,DepthY-Conn,BoxH]);
  translate([Wall,Wall,Wall]) cube([WideX-DW,DepthY-DW-Conn,BoxH]);
  translate([Brim,Brim,BoxH-LidZ]) cube([LidX,LidY,LidZ+Buff]);
}
