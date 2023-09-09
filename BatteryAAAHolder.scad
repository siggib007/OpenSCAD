$fn = 96;

Type="AAA";
BatteryD=11;
BatteryH=45;
Orient=0;
Height=0.7;
Space=2;
BoxFloor=5;
Rows=8;
Col=6;
MagnetD=9;
MagnetH=4;

BatterySpace=BatteryD+Space;
Wall=MagnetD-Space;

BoxZ=(BatteryH*Height)+BoxFloor;
BoxY=(BatterySpace*Rows)+(Wall*2);
BoxX=(BatterySpace*Col)+(Wall*2);

MagnetR=ceil(MagnetD/2)+0.5;
Start=ceil(BatterySpace/2)+Wall;


difference()
{
  cube([BoxX,BoxY,BoxZ]);
  for (y=[Start:BatterySpace:BoxY-Space])
  {
    for (x=[Start:BatterySpace:BoxX-Space])
    {
      translate([x,y,BoxFloor]) cylinder(h=BatteryH,d=BatteryD);
      
    }
  }
  translate([BoxX/2,1,BoxZ/2]) rotate([90,Orient,0]) linear_extrude(height=2, convexity=2) text(Type,5, font="Tahoma", halign="center", valign="center");
  translate([BoxX-1,BoxY/2,BoxZ/2]) rotate([90,Orient,90]) linear_extrude(height=2, convexity=2) text(Type,5, font="Tahoma", halign="center", valign="center");
  translate([BoxX/2,BoxY-1,BoxZ/2]) rotate([90,Orient,180]) linear_extrude(height=2, convexity=2) text(Type,5, font="Tahoma", halign="center", valign="center");
  translate([1,BoxY/2,BoxZ/2]) rotate([90,Orient,270]) linear_extrude(height=2, convexity=2) text(Type,5, font="Tahoma", halign="center", valign="center");
  translate([MagnetR,MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([BoxX-MagnetR,MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([MagnetR,BoxY-MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([BoxX-MagnetR,BoxY-MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD, h=MagnetH);
}