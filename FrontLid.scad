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

translate([BoxW+10,0,0]) cube([xLid,yLid,BoxH-10]);
translate([BoxW+(xLid/2),yLid,BoxH-30])cube([20,10,10]);