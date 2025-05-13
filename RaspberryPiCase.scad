Wall=3;
LengthX=91;
WidthY=64;
HightZ=30;
DW=Wall*2;

difference()
{
  cube([LengthX,WidthY,HightZ]); //Base box
  translate([Wall,Wall,Wall]) cube([LengthX-DW,WidthY-DW,HightZ]); //Base cutour
  translate([Wall,Wall,Wall-1]) cube([5,58,6]);
  translate([60,Wall,Wall-1]) cube([10,58,6]);
  translate([85,6,6]) cube([10,55,14]);
  translate([85,25,6]) cube([10,36,18]);
  translate([6,-5,4]) cube([42,10,8]);
  translate([-5,17,5]) cube([10,24,8]);
  translate([-5,22,-5]) cube([10,14,11]);
  translate([-5,5,18]) cube([10,54,3]);
  translate([5,-5,18]) cube([65,75,6]);
  translate([-1,-1,-1]) cube([4,4,6]);
  translate([88,-1,-1]) cube([4,4,6]);
  translate([-1,61,-1]) cube([4,4,6]);
  translate([88,61,-1]) cube([4,4,6]);
  translate([-1,-1,28]) cube([95,2,6]);
  translate([-1,-1,28]) cube([2,66,6]);
  translate([-1,63,28]) cube([95,2,6]);
  translate([90,-1,28]) cube([2,66,6]);
}
