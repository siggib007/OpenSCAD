WideX=100;
DepthY=80;
HightY=10;
SlotThick=2;
SlotH=8;
Buff=1;
HangAdd=6;
HangCut=4;
BrimThick=5;
BrimH=25;
DB=Buff*2;

cube([WideX,DepthY,HightY]);
cube([WideX,BrimThick,BrimH]);
difference()
{
  translate([0,DepthY,0]) cube([WideX,HangAdd,HightY]);
  translate([-Buff,DepthY+SlotThick,-Buff]) cube([WideX+DB,SlotThick,SlotH]);
  translate([-Buff,DepthY+Buff+SlotThick,-Buff]) cube([WideX+DB,HangAdd,HangCut]);
}