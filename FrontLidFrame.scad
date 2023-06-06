BoxD=20;
BoxW=120;
BoxH=200;
cutH=85;
cutW=25;
cutD=10;
Edge=20;
xOpen=BoxW-(Edge*2);
zOpen=BoxH-(Edge*2);
xLid=xOpen+2;
yLid=2;
zLid=zOpen+2;


*translate([0,0,BoxD]) rotate([-90,0,0]);
difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([-5,-5,cutH]) cube([cutW+5,cutD+5,BoxH]);
  translate([Edge+7,-5,Edge*2]) cube([xOpen,BoxD+15,BoxH-Edge*3]);
  translate([Edge+5,(BoxD/2),(Edge*2)-2]) cube([xLid+2,yLid+1,BoxH+5]);
}
