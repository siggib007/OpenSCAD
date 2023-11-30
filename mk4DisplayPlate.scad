BoxW=190;
BoxD=55;
BoxH=10;
FromEdge=10;
MountHole=5;
displayHole=4;
ScrewHead=10;
xdist=120;
ydist=11;
xDFE=(BoxW-xdist)/2;
yDFE=(BoxD-ydist)/2;
DrillLen=BoxH*2;

difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([BoxW/2-10,BoxD/2,-1]) cube([20,BoxD,BoxH+2]);
  translate([BoxW/2-12,BoxD/2,BoxH/2]) cube([24,BoxD,2]);
  translate([FromEdge,FromEdge,-5]) cylinder(h=DrillLen,d=MountHole);
  translate([BoxW-FromEdge,FromEdge,-5]) cylinder(h=DrillLen,d=MountHole);   
  translate([FromEdge,BoxD-FromEdge,-5]) cylinder(h=DrillLen,d=MountHole);
  translate([BoxW-FromEdge,BoxD-FromEdge,-5]) cylinder(h=DrillLen,d=MountHole);   

  translate([xDFE,yDFE,-5]) cylinder(h=DrillLen,d=displayHole);
  translate([xDFE+xdist,yDFE,-5]) cylinder(h=DrillLen,d=displayHole);   
  translate([xDFE,yDFE+ydist,-5]) cylinder(h=DrillLen,d=displayHole);
  translate([xDFE+xdist,yDFE+ydist,-5]) cylinder(h=DrillLen,d=displayHole);
  
  translate([xDFE,yDFE,5]) cylinder(h=DrillLen,d=ScrewHead);
  translate([xDFE+xdist,yDFE,5]) cylinder(h=DrillLen,d=ScrewHead);   
  translate([xDFE,yDFE+ydist,5]) cylinder(h=DrillLen,d=ScrewHead);
  translate([xDFE+xdist,yDFE+ydist,5]) cylinder(h=DrillLen,d=ScrewHead);   

}