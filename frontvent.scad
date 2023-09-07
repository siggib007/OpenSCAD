BoxH=150;
BoxW=72;
BoxD=10;
Wall=6;
Hole=2;
Space=1;

MagnetD=9;
MagnetH=4;
MagnetR=ceil(MagnetD/2)+1;

$fn = 32;
cs=(Hole/2)+Space;
DW=Wall*2;
csWall=cs+Wall;
YPos=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW;


difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([Wall,Wall,Wall]) cube([BoxW-DW,BoxD-DW,BoxH]);
  for (z=[DW:cs:TopZ])
  {
    for (x=[DW:cs:MaxX])
    {
      translate([x,YPos,z]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
    }
  }
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
  translate([0,-5,-20]) cube([BoxW+10,5,BoxH+40]);
  #translate([-8,-10,5]) cube([BoxW,15,BoxH-10]);
}

