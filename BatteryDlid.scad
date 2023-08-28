$fn = 96;

BoxZ=25;
BoxY=190;
BoxX=120;
BatteryD=34;
BatteryH=60;
Space=2;
BoxWall=5;
BoxFloor=5;
LabelText="D";
CS=(BatteryD/2)+BoxWall;
MaxX=BoxX;
MaxY=BoxY;

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
  translate([3,3,BoxZ-2]) cylinder(d=5,h=3);
  translate([BoxX-3,3,BoxZ-2]) cylinder(d=5,h=3);
  translate([3,BoxY-3,BoxZ-2]) cylinder(d=5,h=3);
  translate([BoxX-3,BoxY-3,BoxZ-2]) cylinder(d=5, h=3);
}