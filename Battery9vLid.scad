Type="9 Volt";
BatteryD=27;
BatteryH=48;
BatteryW=18;
Orient=180;
Height=0.3;
Space=5;
BoxFloor=5;
Rows=4;
Col=4;
MagnetD=9;
MagnetH=4;

BatterySpaceY=BatteryD+Space;
BatterySpaceX=BatteryW+Space;
Wall=MagnetD;

BoxZ=(BatteryH*Height)+BoxFloor;
BoxY=(BatterySpaceY*Rows)+(Wall*2);
BoxX=(BatterySpaceX*Col)+(Wall*2);
MagnetR=ceil(MagnetD/2)+1;
Start=Wall+Space/2;


difference()
{
  cube([BoxX,BoxY,BoxZ]);
  for (y=[Start:BatterySpaceY:BoxY-Wall])
  {
    for (x=[Start:BatterySpaceX:BoxX-Wall])
    {
      translate([x,y,BoxFloor]) cube([BatteryW,BatteryD,BatteryH]);
      
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