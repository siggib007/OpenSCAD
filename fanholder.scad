BoxH=150;
BoxW=72;
BoxD=10;
Wall=6;
Hole=2;
Space=1;

MagnetD=9;
MagnetH=4;
MagnetR=ceil(MagnetD/2)+1;
Filter=7;

difference()
{
  union()
  {
    cube([35,130,120]);
    translate([15,-15,0]) cube([5,160,120]);
  }
  translate([5,5,5]) cube([25,120,150]);
  translate([-10,10,10]) cube([50,110,120]);
  translate([MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  translate([MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  
}
difference()
{
  translate([35,0,0]) cube([Filter+Wall,130,120]);
  translate([37,5,5]) cube([Filter,120,150]);
  translate([25,10,10]) cube([60,110,120]);  
}