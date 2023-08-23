BoxZ=40;
BoxY=130;
BoxX=115;
BatteryD=26;
BatteryW=17;
BatteryH=45;
Space=5;
BoxWall=5;
BoxFloor=5;
LabelText="9 Volt";
CS=(BatteryD/2)+BoxWall;
MaxX=BoxX-BatteryW-BoxWall;
MaxY=BoxY-BatteryD-BoxWall;

difference()
{
  cube([BoxX,BoxY,BoxZ]);
  for (y=[BoxWall:BatteryD+Space:MaxY])
  {
    for (x=[BoxWall:BatteryW+Space:MaxX])
    {
      translate([x,y,BoxFloor]) cube([BatteryW,BatteryD,BatteryH]);
    }
   }
   translate([BoxX/2,1,BoxZ/2]) rotate([90,0,0]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
   translate([BoxX,BoxY/2,BoxZ/2]) rotate([90,0,90]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
   translate([BoxX/2,BoxY-1,BoxZ/2]) rotate([90,0,180]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
   translate([1,BoxY/2,BoxZ/2]) rotate([90,0,270]) linear_extrude(height=2, convexity=2) text(LabelText,5, font="Tahoma", halign="center", valign="center");
   translate([3,3,BoxZ-2]) cylinder(d=4,h=3);
   translate([BoxX-3,3,BoxZ-2]) cylinder(d=4,h=3);
   translate([3,BoxY-3,BoxZ-2]) cylinder(d=4,h=3);
   translate([BoxX-3,BoxY-3,BoxZ-2]) cylinder(d=4,h=3);
}