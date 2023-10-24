TabW=15;
TabD=5;
TabLoc=0;
BoxH=50;
BoxW=40;
BoxD=15;
Offset=5;
HoleDia=5;
PSW=33;
PSFlangW=36;
PSFlangD=3;
Wall=5;

PSCenter=(BoxW-PSW)/2;
HoleL=TabD+Offset*2;
DT=TabW*2;
HalfTab=TabW/2;
TabWith=BoxW+DT;
FlangCenter=(BoxW-PSFlangW)/2;

difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([PSCenter,Wall,Wall]) cube([PSW,BoxD,BoxH+Offset]);
  translate([FlangCenter,Wall,Wall]) cube([PSFlangW,PSFlangD,BoxH+Offset]);
}
difference()
{
  translate([-TabW,TabLoc,0]) cube([TabWith,TabD,BoxH]);
  translate([-HalfTab,TabLoc-Offset,(BoxH/2)+(BoxH/4)]) rotate([0,90,90]) cylinder(h=HoleL,d=HoleDia);
  translate([-HalfTab,TabLoc-Offset,(BoxH/2)-(BoxH/4)]) rotate([0,90,90]) cylinder(h=HoleL,d=HoleDia);
  translate([BoxW+HalfTab,TabLoc-Offset,(BoxH/2)+(BoxH/4)]) rotate([0,90,90]) cylinder(h=HoleL,d=HoleDia);
  translate([BoxW+HalfTab,TabLoc-Offset,(BoxH/2)-(BoxH/4)]) rotate([0,90,90]) cylinder(h=HoleL,d=HoleDia);
}