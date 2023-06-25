BoxZ=80;
BoxY=150;
BoxX=130;
Wall=10;
DW=Wall*2;
QW=Wall*4;

difference()
{
  cube([BoxX+DW,BoxY+DW,BoxZ]);
  translate([Wall,-Wall,-Wall]) cube([BoxX,BoxY+QW,BoxZ]);
  translate([-Wall,Wall,-Wall]) cube([BoxX+QW,BoxY,BoxZ]);
  translate([-Wall,-Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
  translate([BoxX+Wall,-Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
  translate([-Wall,BoxY+Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
  translate([BoxX+Wall,BoxY+Wall,BoxZ-Wall/2]) cube([DW,DW,DW]);
}