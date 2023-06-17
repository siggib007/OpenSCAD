$fn = 96;

BoxZ=50;
BoxY=190;
BoxX=120;
BatteryD=34;
BatteryH=60;
Space=2;
BoxWall=5;
BoxFloor=5;
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
}