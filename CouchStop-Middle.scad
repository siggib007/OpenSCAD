LenX=180;
WidthY=60;
HightZ=40;
Buff=5;
DB=Buff*2;
FeetDia=25;
YSpace=(WidthY-FeetDia)/2;

difference()
{
  cube([LenX,WidthY,HightZ]);
  translate([-Buff,YSpace,-Buff]) cube([FeetDia+Buff,FeetDia,HightZ+DB]);
}
translate([LenX,YSpace,0]) cube([FeetDia,FeetDia,HightZ]);
