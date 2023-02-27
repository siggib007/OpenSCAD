Hole=2;
Space=1;
cs=(Hole/2)+Space;
BoxH=50;
BoxW=50;
BoxD=20;
Wall=2;
DW=Wall*2;
TopX=cs+Wall;
TopY=BoxD+DW;
TopZ=BoxH-cs;
MaxX=BoxW-DW-cs;
difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([Wall,Wall,Wall]) cube([BoxW-DW,BoxD-DW,BoxH]);
  translate([TopX,TopY,TopZ]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
  translate([TopX+cs,TopY,TopZ]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
  translate([TopX+cs*2,TopY,TopZ]) rotate([90,90,0]) cylinder(h=BoxD+DW+DW,d=Hole);
}