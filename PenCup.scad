$fn=256;
BoxH=35;
LabelH=25;
BoxD=35;
Wall=2;
DW=Wall*2;
LabelCenter=(BoxH-LabelH)/2;
BM=LabelCenter;
TM=BoxH-LabelCenter;
MarkH=0.5;

difference()
{
  union()
  {
    cylinder(h=BoxH,d=BoxD);
    translate([0,0,TM]) cylinder(h=MarkH,d=BoxD+MarkH);
    translate([0,0,BM]) cylinder(h=MarkH,d=BoxD+MarkH);
  }
  translate([0,0,Wall]) cylinder(h=BoxH+DW,d=BoxD-DW);
}
translate([(BoxD/2)-MarkH,0,0]) cube([1,1,BoxH]);
