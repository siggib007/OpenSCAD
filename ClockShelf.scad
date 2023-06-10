BoxH=80;
BoxW=150;
BoxD=80;
cutH=BoxH+10;
cutW=BoxW+10;
cutD=BoxD+10;
slotH=3;
slotW=80;
slotD=40;

difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([-5,5,-15]) cube([cutW,cutD,cutH]);
  translate([(BoxW/2)-(slotW/2),(BoxD/2)-(slotD/2)+5,BoxH-slotH+1]) cube([slotW,slotD,slotH]);
}