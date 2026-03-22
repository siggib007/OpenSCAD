WideX=240;
DepthY=190;
ThickZ=2;
Buff=1;
SlottH=8;
ConnY=10;
BeamX=10;
DB=Buff*2;
ConnZ=ThickZ*3;

cube([WideX,DepthY,ThickZ]);
difference()
{
  cube([WideX,ConnY,ConnZ]);
  translate([-Buff,-Buff,ThickZ]) cube([WideX+DB,SlottH,ThickZ]);
}
translate([(WideX/2)-(BeamX/2),ConnY,0]) cube([BeamX,DepthY-ConnY,ConnZ]);
translate([0,DepthY-Buff,ThickZ]) cube([WideX,SlottH,ThickZ]);