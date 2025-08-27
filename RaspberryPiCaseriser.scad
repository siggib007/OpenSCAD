BoxH=5;
BoxW=91;
BoxD=64;

Wall=4;
Hole=2;
Space=1;
cs=Hole+Space;
DW=Wall*2;
csWall=cs+Wall;
TopY=BoxD-DW;
MaxX=BoxW-DW;

difference()
{
  union()
  {
    cube([95,68,5]);
    translate([0,0,0]) cube([5,5,13]);
    translate([90,0,0]) cube([5,5,13]);
    translate([0,63,0]) cube([5,5,13]);
    translate([90,63,0]) cube([5,5,13]);
  }
  translate([3,3,-1]) cube([89,62,6.1]);
}
