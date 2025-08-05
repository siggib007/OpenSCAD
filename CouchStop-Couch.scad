LenX=170;
WidthY=60;
HightZ=40;
Buff=5;
DB=Buff*2;
FeetDia=25;
YSpace=(WidthY-FeetDia)/2;
LipH=10;
Feet2Lip=15;
LipLen=Feet2Lip+FeetDia+Buff;

difference()
{
  cube([LenX,WidthY,HightZ]);
  translate([-Buff,YSpace,-Buff]) cube([FeetDia+Buff,FeetDia,HightZ+DB]);
  translate([-Buff,-Buff,LipH]) cube([LipLen,WidthY+DB,HightZ]);
}
translate([LenX,YSpace,0]) cube([FeetDia,FeetDia,HightZ]);
