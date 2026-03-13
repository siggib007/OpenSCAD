InnerW=115;
InnerD=90;
InnerH=31;
Front=25;
DevFeet=5;
SideCutH=25;
SideCutD=45;
SideCutPosD=25;
SideCutPosH=5;
LipH=4;
Wall=5;
VentH=3;

DW=Wall*2;
BoxFloor=LipH+Wall;
OuterW=InnerW+DW;
OuterD=InnerD+DW;
OuterH=LipH+InnerH+DW+DW;
Buff=1;
DB=Buff*2;
TopVentH=BoxFloor+InnerH+Buff;
BottomVentH=BoxFloor;

difference()
{
  cube([OuterW,OuterD,OuterH]);
  //Main inner Cut
  translate([Wall,Wall,BoxFloor]) cube([InnerW,InnerD,OuterH]); 
  //Front cut
  translate([Wall,-Buff,BoxFloor+DevFeet]) cube([InnerW,DW,Front]);
  //Side Cut
  translate([InnerW+Wall-Buff,SideCutPosD,BoxFloor+SideCutPosH]) cube([DW,SideCutD,SideCutH]); 
  
  // Top vents  
  translate([DW,-Buff,TopVentH]) cube([InnerW/3,OuterD+DW,VentH]);
  translate([((InnerW/3)*2),-Buff,TopVentH]) cube([InnerW/3,OuterD+DW,VentH]);
  translate([-Buff,DW,TopVentH]) cube([OuterW+DW,InnerD/3,DB]);
  translate([-Buff,((InnerD/3)*2),TopVentH]) cube([OuterW+DW,InnerD/3,VentH]);
  
  // Bottom vents  
  translate([DW,-Buff,BottomVentH]) cube([InnerW/3,OuterD+DW,VentH]);
  translate([((InnerW/3)*2),-Buff,BottomVentH]) cube([InnerW/3,OuterD+DW,VentH]);
  translate([-Buff,DW,BottomVentH]) cube([OuterW+DW,InnerD/3,VentH]);
  translate([-Buff,((InnerD/3)*2),BottomVentH]) cube([OuterW+DW,InnerD/3,VentH]);
  
  //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
}