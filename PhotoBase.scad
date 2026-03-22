WideX=245;
DepthY=70;
HeightZ=10;
Thick=2;
Buff=1;
SlottH=8;
ConnY=10;
BeamX=10;
DB=Buff*2;
ConnZ=Thick*3;

difference()
{
  cube([WideX,DepthY,HeightZ]);
  translate([-Buff,Thick,Thick]) cube([WideX+DB,Thick,HeightZ]);
}