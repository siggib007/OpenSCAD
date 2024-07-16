$fn=256;
PhoneD=163;
PhoneW=75;
PhoneH=9;
Wall=2;
DW=Wall*2;
Lip=1;
DL=Lip*2;

difference()
{
  cube([PhoneW+DW,PhoneD+DW,PhoneH+Wall+Lip]);
  translate([Wall,Wall,Wall]) 
    cube([PhoneW,PhoneD,PhoneH]); // Phone cutout
  translate([Wall+Lip,Wall+Lip,Wall])
    cube([PhoneW-DL,PhoneD-DL,PhoneH+DW]); //Lip
  translate([Wall+1,Wall+1,-1]) cube([42,42,DW]); //Camera
  translate([54+Wall,Wall+3,Wall+4]) rotate([90,0,0]) 
    cylinder(d=4,h=10); //Headphone
  translate([32+Wall,PhoneD+Wall-1,Wall+2])
    cube([15,DW,5]); //Charger
  translate([Wall+5,PhoneD+Wall-1,Wall+3])
    cube([15,DW,Wall]); //speaker
  translate([-1,34,DW]) cube([DW,21,5]); //volume
  translate([-1,61,DW]) cube([DW,16,5]); //power
}