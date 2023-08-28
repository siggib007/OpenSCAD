$fn = 96;

BoxZ=25;
BoxY=150;
BoxX=120;
BatteryD=26;
BatteryH=50;
Space=3;
BoxFloor=5;
MagnetD=5;
MagnetH=3;
MagnetR=ceil(MagnetD/2)+1;
LabelText="C";
CS=(BatteryD/2)+Space;
MaxX=BoxX-CS;
MaxY=BoxY-CS;

difference()
{
  cube([BoxX,BoxY,BoxZ]);
  for (y=[CS:BatteryD+Space:MaxY])
  {
    for (x=[CS:BatteryD+Space:MaxX])
    {
      translate([x,y,BoxFloor]) cylinder(h=BatteryH,d=BatteryD);
      
    }
  }
  translate([BoxX/2,1,BoxZ/2]) rotate([90,180,0]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
  translate([BoxX-1,BoxY/2,BoxZ/2]) rotate([90,180,90]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
  translate([BoxX/2,BoxY-1,BoxZ/2]) rotate([90,180,180]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
  translate([1,BoxY/2,BoxZ/2]) rotate([90,180,270]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
  translate([MagnetR,MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([BoxX-MagnetR,MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([MagnetR,BoxY-MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD,h=MagnetH);
  translate([BoxX-MagnetR,BoxY-MagnetR,BoxZ-MagnetH+1]) cylinder(d=MagnetD, h=MagnetH);
}