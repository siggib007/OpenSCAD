$fn = 124;

BoxZ=20;
BoxY=115;
BoxX=87;
Wall=5;
BatteryD=11;
BatteryH=45;
Space=3;
BoxFloor=5;
LabelText="AAA";
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
   translate([3,3,BoxZ-2]) cylinder(d=5,h=3);
   translate([BoxX-3,3,BoxZ-2]) cylinder(d=5,h=3);
   translate([3,BoxY-3,BoxZ-2]) cylinder(d=5,h=3);
   translate([BoxX-3,BoxY-3,BoxZ-2]) cylinder(d=5, h=3);
}