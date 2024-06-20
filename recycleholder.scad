InnerX=180;
InnerY=140;
Height=50;
Wall=20;
Buffer=5;
HalfX=(InnerX+Wall)/2;
HolePos1=HalfX/2;
HolePos2=HalfX+(HalfX/2);
difference()
{
  cube([InnerX+Wall,InnerY+Wall,Height]);
  translate([Wall/2,Wall/2,-Buffer]) cube([InnerX,InnerY,Height+(Buffer*2)]);
}
difference()
{
  cube([InnerX+Wall,5,Height+20]);
  translate([HolePos1,7,Height+10]) rotate([90,0,0]) cylinder(h=10,d=5);
  translate([HolePos2,7,Height+10]) rotate([90,0,0]) cylinder(h=10,d=5);
}