BoxH=5;
BoxW=91;
BoxD=64;

Wall=4;
Hole=2;
Space=1;
cs=Hole+Space;
DW=Wall*2;
csWall=cs+Wall;
TopY=BoxD-DW;
MaxX=BoxW-DW;

difference()
{
  cube([91,64,5]);
  translate([1,1,2]) cube([89,62,6]);
  for (y=[csWall:cs:TopY])
  {
    for (x=[csWall:cs:MaxX])
    {
      translate([x,y,-DW]) cube([Hole,Hole,BoxH+DW]);
    }
  }
  
}