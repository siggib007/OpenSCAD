$fn = 124;

BoxZ=40;
BoxY=147;
BoxX=111;
Wall=5;
BatteryD=15;
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