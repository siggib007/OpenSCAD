BoxH=170;
BoxW=110;
BoxD=50;
Wall=4;
Hole=2;
Space=1;

$fn = 32;
cs=Hole+Space;
DW=Wall*2;
csWall=cs+Wall;
YPos=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW;
MaxY=BoxD-DW;
difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([Wall,Wall,Wall]) cube([BoxW-DW,BoxD-DW,BoxH]);
  for (z=[csWall:cs:TopZ])
  {
    for (x=[csWall:cs:MaxX])
    {
      translate([x,-cs,z]) cube([Hole,BoxD+DW,Hole]);
    }
  }
  for (z=[csWall:cs:TopZ])
  {
    for (y=[csWall:cs:MaxY])
    {
      translate([-Wall,y,z]) cube([BoxW+DW,Hole,Hole]);
    }
  }
}