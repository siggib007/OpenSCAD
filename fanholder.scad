BoxH=125;
BoxW=130;
BoxD=35;
Wall=5;
Hole=2;
Space=1;
MagnetD=9;
MagnetH=4;
Filter=7;
FanH=120;
FanW=121;
FanD=26;
Tab=15;
TabLoc=18;

Brim=MagnetD+Wall;
MagnetR=ceil(MagnetD/2)+1;
cs=Hole+Space;
DW=Wall*2;
QW=Wall*4;
DT=Tab*2;
DB=Brim*2;
csWall=cs+Wall;
YPos=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW;
MaxY=BoxD-DW;
HalfTab=Tab/2;
TabWith=BoxW+DT;

difference()
{
  union()
  {
    cube([BoxW,BoxD,BoxH]);
    translate([-Tab,TabLoc,0]) cube([TabWith,Wall,BoxH]);
  }
  translate([Wall,Wall,Wall]) cube([FanW,FanD,FanH+Wall]);

  translate([Brim,-DW,Brim]) cube([48,BoxD+DW+1,35]);
  translate([Brim+55,-DW,Brim]) cube([48,BoxD+DW+1,35]);
  translate([Brim,-DW,Brim+70]) cube([48,BoxD+DW+1,25]);
  translate([Brim+55,-DW,Brim+70]) cube([48,BoxD+DW+1,25]);

  translate([Brim,-DW,Brim+25]) cube([34,BoxD+DW+1,25]);
  translate([Brim+69,-DW,Brim+25]) cube([34,BoxD+DW+1,25]);
  translate([Brim,-DW,69]) cube([34,BoxD+DW+1,20]);
  translate([Brim+69,-DW,69]) cube([34,BoxD+DW+1,20]);

  translate([MagnetR,MagnetH-1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,MagnetH-1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  translate([MagnetR,MagnetH-1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,MagnetH-1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  translate([-HalfTab,TabLoc-5,(BoxH/2)+(BoxH/4)]) rotate([0,90,90]) cylinder(h=15,d=5);
  translate([-HalfTab,TabLoc-5,(BoxH/2)-(BoxH/4)]) rotate([0,90,90]) cylinder(h=15,d=5);
  translate([BoxW+HalfTab,TabLoc-5,(BoxH/2)+(BoxH/4)]) rotate([0,90,90]) cylinder(h=15,d=5);
  translate([BoxW+HalfTab,TabLoc-5,(BoxH/2)-(BoxH/4)]) rotate([0,90,90]) cylinder(h=15,d=5);
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