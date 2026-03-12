InnerW=115;
InnerD=90;
InnerH=31;
Front=25;
DevFeet=5;
SideCutH=20;
SideCutD=45;
SideCutPosD=25;
SideCutPosH=5;
LipH=4;
Wall=5;
DW=Wall*2;
BoxFloor=LipH+Wall;
OuterW=InnerW+DW;
OuterD=InnerD+DW;
OuterH=LipH+InnerH+DW+DW;
Buff=1;
DB=Buff*2;
TopVentH=BoxFloor+InnerH+DevFeet;
BottomVentH=BoxFloor+Buff;

difference()
{
  cube([OuterW,OuterD,OuterH]);
  translate([Wall,Wall,BoxFloor]) cube([InnerW,InnerD,OuterH]); //Main inner Cut
  translate([Wall,-Buff,BoxFloor+DevFeet]) cube([InnerW,DW,Front]); //Front cut
  translate([InnerW+Wall-Buff,SideCutPosD,BoxFloor+SideCutPosH]) cube([DW,SideCutD,SideCutH]); //Side Cut
  
  // Top vents  
  translate([DW,-Buff,TopVentH]) cube([InnerW/3,OuterD+DW,DB]);
  translate([((InnerW/3)*2),-Buff,TopVentH]) cube([InnerW/3,OuterD+DW,DB]);
  translate([-Buff,DW,TopVentH]) cube([OuterW+DW,InnerD/3,DB]);
  translate([-Buff,((InnerD/3)*2),TopVentH]) cube([OuterW+DW,InnerD/3,DB]);
  // Bottom vents  
  translate([DW,-Buff,BottomVentH]) cube([InnerW/3,OuterD+DW,DB]);
  translate([((InnerW/3)*2),-Buff,BottomVentH]) cube([InnerW/3,OuterD+DW,DB]);
  translate([-Buff,DW,BottomVentH]) cube([OuterW+DW,InnerD/3,DB]);
  translate([-Buff,((InnerD/3)*2),BottomVentH]) cube([OuterW+DW,InnerD/3,DB]);
  //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB,Wall,LipH]);
  translate([-Buff,-Buff,-Buff]) cube([Wall,OuterD+DB,LipH]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD,LipH]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW,Wall+DB,LipH]);
}