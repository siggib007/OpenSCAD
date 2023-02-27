BoxH=170;
BoxW=110;
BoxD=50;
Wall=4;
Hole=2;
Space=1;

$fn = 32;
cs=(Hole/2)+Space;
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
      translate([x,YPos,z]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
    }
  }
  for (z=[csWall:cs:TopZ])
  {
    for (y=[csWall:cs:MaxY])
    {
      translate([Wall,y,z]) rotate([0,90,0]) cylinder(h=BoxW+DW,d=Hole);
    }
  }
}