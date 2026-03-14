InnerW=115;
InnerD=90;
InnerH=0;
LipH=4;
Wall=5;
PoleDistX=90;
PoleDistY=63;
PoleSQ=5;
PoleH=5;

DW=Wall*2;
OuterW=InnerW+DW;
OuterD=InnerD+DW;
OuterH=LipH+InnerH+Wall;
Buff=1;
DB=Buff*2;
PoleZ=PoleH+OuterH;
PoleX1=(OuterW/2)-(PoleDistX/2);
PoleY1=(OuterD/2)-(PoleDistY/2);
PoleX2=(OuterW/2)-(PoleDistX/2)+PoleDistX;
PoleY2=(OuterD/2)-(PoleDistY/2)+PoleDistY;


difference()
{
  cube([OuterW,OuterD,OuterH]);
    //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
}

translate([PoleX1,PoleY1,0]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX2,PoleY1,0]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX1,PoleY2,0]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX2,PoleY2,0]) cube([PoleSQ,PoleSQ,PoleZ]);
