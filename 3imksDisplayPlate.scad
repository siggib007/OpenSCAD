BoxW=250;
BoxD=50;
BoxH=10;
FromEdge=10;
MountHole=5;
displayHole=4;
ScrewHead=10;
xdist=122;
ydist=11;
xDFE=(BoxW-xdist)/2;
yDFE=(BoxD-ydist)/2;
DrillLen=BoxH*2;

difference()
{
  cube([BoxW,BoxD,BoxH]);
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