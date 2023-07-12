$fn = 124;

BoxZ=35;
BoxY=115;
BoxX=87;
Wall=5;
BatteryD=11;
BatteryH=45;
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