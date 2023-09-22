slotH=10;
slotW=167;
slotD=140;
Wall=5;
BoxH=80;
BoxW=slotW+(Wall*2);
BoxD=slotD+(Wall*4);
cutH=BoxH+10;
cutW=BoxW+10;
cutD=BoxD+10;


difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([-Wall,Wall,Wall+slotH]) cube([cutW,cutD,cutH]);
  translate([Wall,Wall*3,Wall*2]) cube([slotW,slotD,slotH]);
}