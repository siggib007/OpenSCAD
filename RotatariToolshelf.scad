BoxX=150;
BoxY=190;
BoxZ=80;
Space=5;
Start=10;
Wall=3;
Floor=5;
Raise=30;
Buffer=5;
CubbyX=43;
CubbyY=41;
CXSpace=CubbyX+Space;
CYSpace=CubbyY+Space;
DW=Wall*2;
Legs=BoxZ-Raise;
DB=Buffer*2;

difference()
{
  cube([BoxX,BoxY,BoxZ]);
  translate([Wall,-Buffer,-Buffer]) cube([BoxX-DW,BoxY+DB,Legs]);
  for (y=[Space:CYSpace:BoxY-CubbyY])
  {
    for (x=[Space:CXSpace:BoxX-CubbyX])
    {
      translate([x,y,Legs+Floor]) cube([CubbyX,CubbyY,Legs+Floor]);
      
    }
  }
  
}