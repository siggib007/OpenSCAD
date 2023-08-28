InnerX=200;
InnerY=150;
Height=50;
Wall=20;
Buffer=5;
difference()
{
  cube([InnerX+Wall,InnerY+Wall,Height]);
  translate([Wall/2,Wall/2,-Buffer]) cube([InnerX,InnerY,Height+(Buffer*2)]);
}