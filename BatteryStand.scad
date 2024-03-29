BoxZ=70;
BoxY=150;
BoxX=126;
Wall=7;
DW=Wall*2;
QW=Wall*4;

difference()
{
  cube([BoxX+DW,BoxY+DW,BoxZ]);
  translate([Wall,-Wall,-Wall]) cube([BoxX,BoxY+QW,BoxZ]);
  translate([-Wall,Wall,-Wall]) cube([BoxX+QW,BoxY,BoxZ]);
  translate([10,-Wall+1,BoxZ-Wall/2]) cube([Wall+1,DW,DW]);
  translate([BoxX+Wall,-Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
  translate([10,BoxY+Wall+1,BoxZ-Wall/2]) cube([Wall+1,DW,DW]);
  translate([BoxX+Wall,BoxY+Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
}