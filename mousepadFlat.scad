$fn = 64;
WideX=250;
ThickZ=20;
DeepY=210;
Buff=1;
ScrewDia=5;
ScrewheadDia=20;
ScrewHeadR=ScrewheadDia/2;
HoleDist=120;
DB=Buff*2;
Hole1=DeepY-ScrewHeadR-DB-DB;
Hole2=Hole1-HoleDist;

HalfThick=ThickZ/2;

difference()
{
  cube([WideX,DeepY,ThickZ]);
  translate([ScrewHeadR+DB,Hole1,-Buff]) rotate([0,0,0]) cylinder(h=ThickZ+DB,d=ScrewDia);
  translate([ScrewHeadR+DB,Hole2,-Buff])rotate([0,0,0]) cylinder(h=ThickZ+DB,d=ScrewDia);  
  translate([ScrewHeadR+DB,Hole1,HalfThick]) rotate([0,0,0]) cylinder(h=HalfThick+DB,d=ScrewheadDia);
  translate([ScrewHeadR+DB,Hole2,HalfThick])rotate([0,0,0]) cylinder(h=HalfThick+DB,d=ScrewheadDia);  
}
