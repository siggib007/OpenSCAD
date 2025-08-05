LenX=200;
WidthY=60;
HightZ=45;
ListH=34;
ListD=16;
Buff=5;
DB=Buff*2;
FeetDia=25;
YSpace=(WidthY-FeetDia)/2;

difference()
{
  cube([LenX,WidthY,HightZ]);
  translate([-Buff,-Buff,-Buff]) cube([ListD+Buff,WidthY+DB,ListH+Buff]);
  translate([LenX-FeetDia,YSpace,-Buff]) 
    cube([FeetDia+Buff,FeetDia,HightZ+DB]);
}