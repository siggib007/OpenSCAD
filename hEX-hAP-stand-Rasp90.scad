InnerW=115;
InnerD=90;
InnerH=0;
LipH=4;
Wall=5;
PoleDistY=90;
PoleDistX=63;
PoleSQ=5;
PoleH=5;

DW=Wall*2;
OuterW=InnerW+DW;
OuterD=InnerD+DW;
OuterH=LipH+InnerH+Wall;
Buff=1;
DB=Buff*2;
PoleZ=PoleH;
PoleX1=(OuterW/2)-(PoleDistX/2);
PoleY1=((OuterD-Wall)/2)-(PoleDistY/2);
PoleX2=(OuterW/2)-(PoleDistX/2)+PoleDistX;
PoleY2=((OuterD-Wall)/2)-(PoleDistY/2)+PoleDistY;


difference()
{
  cube([OuterW,OuterD,OuterH]);
    //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
}

translate([PoleX1,PoleY1,OuterH]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX2,PoleY1,OuterH]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX1,PoleY2,OuterH]) cube([PoleSQ,PoleSQ,PoleZ]);
translate([PoleX2,PoleY2,OuterH]) cube([PoleSQ,PoleSQ,PoleZ]);

translate([20,-Buff,LipH]) cube([Wall,OuterD+DB,Wall]);
translate([OuterW-20,-Buff,LipH]) cube([Wall,OuterD+DB,Wall]);
