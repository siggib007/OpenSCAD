BoxH=140;
BoxW=BoxH;
BoxD=15;
cutH=120;
cutW=cutH;
cutD=20;

LidH=BoxH+20;
LidD=2;
LidW=cutW+2;

difference()
{
  cube([BoxH,BoxW,BoxD],true);
  cube([cutH,cutW,cutD],true);
  translate([cutD-2,0,0]) cube([LidH,LidW,LidD],true);
}
