BoxZ=60;
BoxY=150;
BoxX=120;
Wall=5;
DW=Wall*2;
QW=Wall*4;

difference()
{
  cube([BoxX+DW,BoxY+DW,BoxZ+Wall]);
  translate([Wall,-Wall,-Wall]) cube([BoxX,BoxY+QW,BoxZ]);
  translate([-Wall,Wall,-Wall]) cube([BoxX+QW,BoxY,BoxZ]);
}