$fn = 96;

Type="D";
BatteryD=34;
BatteryH=62;
Orient=180;
Height=0.3;
Space=2;
BoxFloor=5;
Rows=5;
Col=3;
MagnetD=9;
MagnetH=4;

BatterySpace=BatteryD+Space;
Wall=MagnetD-Space;

BoxZ=(BatteryH*Height)+BoxFloor;
BoxY=(BatterySpace*Rows)+(Wall*2);
BoxX=(BatterySpace*Col)+(Wall*2);

MagnetR=ceil(MagnetD/2)+1;
Start=ceil(BatteryD/2)+Wall;


difference()
{
  cube([BoxX,BoxY,BoxZ]);
  for (y=[Start:BatterySpace:BoxY])
  {
    for (x=[Start:BatterySpace:BoxX])
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