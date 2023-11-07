BoxX=135;
BoxY=190;
BoxZ=65;
Space=10;
Start=10;

difference()
{
  cube([BoxX,BoxY,BoxZ]);
  translate([6,10,-1]) cube([120,170,30]);
  translate([6,-10,-1]) cube([120,210,30]);
  translate([-6,10,-1]) cube([150,170,30]);
  for (y=[5:46:BoxY-40])
  {
    for (x=[5:43:BoxX-25])
    {
      translate([x,y,35]) cube([38,41,35]);
      
    }
  }
  
}