BoxH=150;
BoxW=72;
Wall=5;
Hole=2;
Space=1;
MagnetD=9;
MagnetH=4;
Filter=7;
Tab=15;
TabLoc=10;

MagnetR=ceil(MagnetD/2)+1;
cs=Hole+Space;
DW=Wall*2;
QW=Wall*4;
DT=Tab*2;
BoxD=10+DW+Filter;
csWall=MagnetD+Space;
YPos=BoxD+DW;
TopZ=BoxH-MagnetD-Wall;
MaxX=BoxW-DW;
MaxY=BoxD-DW;


difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([Wall,Wall+10,Wall]) cube([BoxW-DW,Filter,BoxH]);
  for (z=[csWall:cs:TopZ])
  {
    for (x=[csWall:cs:MaxX])
    {
      translate([x,-cs,z]) cube([Hole,BoxD+DW,Hole]);
    }
  }
  translate([MagnetR,MagnetH-1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,MagnetH-1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([MagnetR,MagnetH-1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,MagnetH-1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
}
difference()
{
  translate([0,TabLoc,0]) cube([BoxW+Tab,Wall,BoxH+Tab]);
  translate([-1,TabLoc-1,-1]) cube([BoxW+1,Tab,BoxH+1]);
}

