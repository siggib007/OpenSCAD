$fn=256;
BoxH=70;
BoxD=60;
Wall=3;
DW=Wall*2;

difference()
{
  cylinder(h=BoxH,d=BoxD);
  translate([0,0,Wall]) cylinder(h=BoxH+DW,d=BoxD-DW);
}