BoxH=140;
BoxW=BoxH;
BoxD=20;
cutH=120;
cutW=cutH;
cutD=BoxD+5;

LidH=BoxH+20;
LidD=2;
LidW=cutW+2;

difference()
{
  cube([BoxH,BoxW,BoxD],true);
  cube([cutH,cutW,cutD],true);
  translate([cutD-2,0,2]) cube([LidH+10,LidW,LidD+1],true);
}
