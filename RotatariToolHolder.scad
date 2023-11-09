$fn=128;
XStart=80;
YStart=10;
XStart2=10;
YStart2=200;
XStart3=40;
YStart3=170;


Space=10;
BoxX=144;
BoxY=190;
BoxZ=30;
BoxFloor=10;
difference()
{
  cube([BoxX,BoxY,BoxZ]);
  translate([138,175,-1]) cube([2,9,35]);
  translate([7,13,20]) cube([26,30,15]);
  translate([20,130,30]) rotate([90,0,0]) cylinder(d=24,h=120);
  translate([20,180,30]) rotate([90,0,0]) cylinder(d=18,h=51);
  translate([55,65,30])  rotate([90,0,0]) cylinder(d=30,h=55);
  translate([55,125,30]) rotate([90,0,0]) cylinder(d=27,h=61);
  translate([55,165,30]) rotate([90,0,0]) cylinder(d=18,h=41);
  for (y=[YStart:Space:BoxY-Space])
  {
    for (x=[XStart:Space:BoxX-Space])
    {
      translate([x,y,BoxFloor]) cylinder(h=30,d=4);
      
    }
  }
  for (y=[YStart2:Space:BoxY-Space])
  {
    for (x=[XStart2:Space:BoxX-Space])
    {
      translate([x,y,BoxFloor]) cylinder(h=30,d=4);
      
    }
  }
  for (y=[YStart3:Space:BoxY-Space])
  {
    for (x=[XStart3:Space:BoxX-Space])
    {
      translate([x,y,BoxFloor]) cylinder(h=30,d=4);
      
    }
  }
}