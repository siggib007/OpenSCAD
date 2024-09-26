Dia=62;
Height=100;
$fn=128;
Wall=5;
Buffer=10;
Slot=20;
OuterDia=Dia+(Wall*2);
HB=Height+Buffer;
WB=OuterDia+(Wall*2);
HalfWB=WB/2;
HalfSlot=Slot/2;
difference()
{
  cylinder(h=Height,d=OuterDia);
  translate([0,0,Wall]) cylinder(h=HB,d=Dia);
  translate([-HalfWB,-HalfSlot,Wall]) cube([WB,Slot,HB]);
  translate([-HalfSlot,-HalfWB,Wall]) cube([Slot,WB,HB]);
}