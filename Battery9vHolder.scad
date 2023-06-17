$fn = 96;

BoxZ=40;
BoxY=160;
BoxX=130;
BatteryW=26;
BatteryD=17;
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