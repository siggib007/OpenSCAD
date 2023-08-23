
$fn = 96;

BoxZ=20;
BoxY=130;
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
  translate([3,3,BoxZ-2]) cylinder(d=4,h=3);
  translate([BoxX-3,3,BoxZ-2]) cylinder(d=4,h=3);
  translate([3,BoxY-3,BoxZ-2]) cylinder(d=4,h=3);
  translate([BoxX-3,BoxY-3,BoxZ-2]) cylinder(d=4,h=3);
}