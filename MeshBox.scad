Hole=2;
Space=1;
cs=(Hole/2)+Space;
BoxH=50;
BoxW=50;
BoxD=20;
Wall=2;
DW=Wall*2;
MinX=cs+Wall;
MinZ=cs+Wall;
YPos=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW;
echo(MinX=MinX,TopZ=TopZ,MaxX=MaxX,YPos=YPos,cs=cs);
difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([Wall,Wall,Wall]) cube([BoxW-DW,BoxD-DW,BoxH]);
  for (z=[MinZ:cs:TopZ])
  {
    for (x=[MinX:cs:MaxX])
    {
      translate([x,YPos,z]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
    }
  }
  # translate([-2,MinX,MinX]) rotate([0,90,0]) cylinder(h=BoxW+DW,d=Hole);
  # translate([-2,MinX+cs,MinX]) rotate([0,90,0]) cylinder(h=BoxW+DW,d=Hole);
}