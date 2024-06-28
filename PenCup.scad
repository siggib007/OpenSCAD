$fn=256;
BoxH=70;
BoxD=65;
Wall=3;
DW=Wall*2;
LabelH=60;
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
