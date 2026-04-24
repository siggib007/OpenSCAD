include <hEX-hAP-Vars.scad>;

InnerH=35;
InnerSW=130;
OuterSW=InnerSW+DW;
Front=25;
DevFeet=5;
SideCutH=25;
SideCutD=45;
SideCutPosD=25;
SideCutPosH=5;
VentH=3;

BoxFloor=LipH+Wall;
OuterH=LipH+InnerH+DW+DW;
TopVentH=BoxFloor+InnerH+Buff;
BottomVentH=BoxFloor;
LipXwidth=InnerSW-InnerW-(Wall/2);
ExtraBack=61;


difference()
{
  cube([OuterSW,OuterD,OuterH]);
  //Main inner Cut
  translate([Wall,Wall,BoxFloor]) cube([InnerSW,InnerD,InnerH]); 
  //top Cut
  translate([LipXwidth,Wall,BoxFloor]) cube([InnerW,InnerD,OuterH]); 

  //Front cut
  translate([Wall,-Buff,BoxFloor+DevFeet]) cube([InnerSW,DW,Front]);
  //Side Cut
  translate([InnerSW+Wall-Buff,SideCutPosD,BoxFloor+SideCutPosH]) cube([Wall+DB,SideCutD,SideCutH]); 
  //Back Cut
  translate([Wall,Wall,BoxFloor]) cube([InnerSW,OuterD,OuterH-TW]);

  
  // Top vents  
  translate([DW,-Buff,TopVentH]) cube([InnerW/3,OuterD+DB,VentH]);
  translate([((InnerW/3)*2),-Buff,TopVentH]) cube([InnerW/3,OuterD+DB,VentH]);
  translate([-Buff,DW,TopVentH]) cube([OuterSW+DB,InnerD/3,VentH]);
  translate([-Buff,((InnerD/3)*2),TopVentH]) cube([OuterSW+DB,InnerD/3,VentH]);
  
  // Bottom vents  
  translate([DW,-Buff,BottomVentH]) cube([InnerW/3,OuterD+DB,VentH]);
  translate([((InnerW/3)*2),-Buff,BottomVentH]) cube([InnerW/3,OuterD+DB,VentH]);
  translate([-Buff,DW,BottomVentH]) cube([OuterSW+DB,InnerD/3,VentH]);
  translate([-Buff,((InnerD/3)*2),BottomVentH]) cube([OuterSW+DB,InnerD/3,VentH]);
  
  //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterSW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([LipXwidth+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW+(Wall/2),-Buff,-Buff]) cube([LipXwidth+Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterSW+DB+Buff,Wall+DB+Buff,LipH+Buff]);
}
translate([0,OuterD,LipH]) cube([OuterSW,BackStopWall+ExtraBack,Wall]);
translate([0,OuterD+ExtraBack,BoxFloor]) cube([OuterSW,BackStopWall,DW]);