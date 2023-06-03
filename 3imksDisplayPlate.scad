BoxW=200;
BoxD=50;
BoxH=8;
FromEdge=10;
MountHole=5;
displayHole=4;
ScrewHead=10;

difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([10,10,-5]) cylinder(h=15,d=5);
  translate([190,10,-5]) cylinder(h=15,d=5);   
  translate([10,40,-5]) cylinder(h=15,d=5);
  translate([190,40,-5]) cylinder(h=15,d=5);   

  translate([39,19,-5]) cylinder(h=15,d=3);
  translate([161,19,-5]) cylinder(h=15,d=3);   
  translate([39,30,-5]) cylinder(h=15,d=3);
  translate([161,30,-5]) cylinder(h=15,d=3);   
  
  translate([39,19,5]) cylinder(h=15,d=10);
  translate([161,19,5]) cylinder(h=15,d=10);   
  translate([39,30,5]) cylinder(h=15,d=10);
  translate([161,30,5]) cylinder(h=15,d=10);   

}