$fn = 96;

BoxZ=40;
BoxY=160;
BoxX=115;
BatteryD=26;
BatteryW=17;
BatteryH=45;
Space=5;
BoxWall=5;
BoxFloor=5;
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
}