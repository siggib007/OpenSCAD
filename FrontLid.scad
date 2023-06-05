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


translate([0,0,BoxD]) rotate([-90,0,0]) difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([-5,-5,cutH]) cube([cutW+5,cutD+5,BoxH]);
  translate([Edge,-5,Edge*2]) cube([xOpen,BoxD+15,BoxH-Edge*3]);
  translate([Edge-1,BoxD/2,(Edge*2)-1]) cube([xLid,yLid,BoxH+5]);
}

translate([0,BoxH,0]) rotate([90,0,0])
{
  translate([BoxW+10,0,0]) cube([xLid,yLid,BoxH]);
  translate([BoxW+(xLid/2),yLid,BoxH-10])cube([20,10,10]);
}