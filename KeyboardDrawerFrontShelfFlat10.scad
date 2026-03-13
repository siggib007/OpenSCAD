WideX=100;
DepthY=40;
HightY=10;
SlotThick=2;
SlotH=8;
Buff=1;
HangAdd=6;
HangCut=4;
DB=Buff*2;

cube([WideX,DepthY,10]);
difference()
{
  translate([0,DepthY,0]) cube([WideX,HangAdd,HightY]);
  translate([-Buff,DepthY+SlotThick,-Buff]) cube([WideX+DB,SlotThick,SlotH]);
  translate([-Buff,DepthY+Buff+SlotThick,-Buff]) cube([WideX+DB,HangAdd,HangCut]);
}