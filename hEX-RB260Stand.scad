include <hEX-hAP-Vars.scad>;

InnerH=31;

BoxFloor=LipH+Wall;
OuterH=LipH+InnerH+DW+DW;
Front=25;
DevFeet=5;
ExtraBack=43;
BackStopWall=2;

difference()
{
  cube([OuterW,OuterD,OuterH]);
  //Main inner Cut
  translate([Wall,Wall,BoxFloor]) cube([InnerW,InnerD,OuterH+DW]); 
  //Front cut
  translate([Wall,-Buff,BoxFloor+DevFeet]) cube([InnerW,DW,Front]);
  //Side Cut
  translate([-Buff,Wall+20,BoxFloor]) cube([OuterW+DB,InnerD-20,OuterH-TW]);
  //Back Cut
  translate([Wall,Wall,BoxFloor]) cube([InnerW,OuterD,OuterH-TW]);
   //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
  //Backext
}
translate([0,OuterD,LipH]) cube([OuterW,BackStopWall+ExtraBack,Wall]);
translate([0,OuterD+ExtraBack,BoxFloor]) cube([OuterW,BackStopWall,DW]);