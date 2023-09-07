BoxH=120;
BoxW=130;
BoxD=35;
Wall=5;
Hole=2;
Space=1;
MagnetD=9;
MagnetH=4;
Filter=7;
FanH=120;
FanW=120;
FanD=25;
Tab=15;
TabLoc=18;

MagnetR=ceil(MagnetD/2)+1;
cs=Hole+Space;
DW=Wall*2;
QW=Wall*4;
DT=Tab*2;
csWall=cs+Wall;
YPos=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW;
MaxY=BoxD-DW;

difference()
{
  union()
  {
    cube([BoxW,BoxD,BoxH]);
    translate([-Tab,TabLoc,0]) cube([BoxW+DT,Wall,BoxH]);
  }
  translate([Wall,Wall,Wall]) cube([FanW,FanD,FanH]);
  translate([DW,-DW,DW]) cube([BoxW-QW,BoxD+DW+1,BoxH]);
  translate([MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  translate([MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  
}
translate([0,BoxD,0])
difference()
{
  cube([BoxW,Filter+DW,BoxH]);
  translate([Wall,Wall,Wall]) cube([BoxW-DW,Filter,BoxH]);
  for (z=[csWall:cs:TopZ])
  {
    for (x=[csWall:cs:MaxX])
    {
      translate([x,-cs,z]) cube([Hole,BoxD+DW,Hole]);
    }
  }
}