$fn = 96;

BoxZ=40;
BoxY=150;
BoxX=120;
Wall=4;
BatteryD=26;
BatteryH=50;
Space=3;
BoxFloor=5;
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
}