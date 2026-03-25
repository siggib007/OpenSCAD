InnerW=115;
InnerD=90;
InnerH=0;
LipH=4;
Wall=5;

DW=Wall*2;
OuterW=InnerW+DW;
OuterD=InnerD+DW;
OuterH=LipH+InnerH+Wall;
Buff=1;
DB=Buff*2;


difference()
{
  cube([OuterW,OuterD,OuterH]);
    //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
  translate([20,-Buff,LipH]) cube([Wall,OuterD+DB,Buff]);
  translate([OuterW-20,-Buff,LipH]) cube([Wall,OuterD+DB,Buff]);
}
