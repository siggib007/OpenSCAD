Height=8;
TotalDia=60;
CanDia=54; // Narrow EU cans 52. Wide US cans 54.
TopHeigh=4;
InnerHeight=2;
Rim=2;
InnerDia=CanDia-(Rim*2);

difference()
{
  cylinder(h=Height,d=TotalDia);
  translate([0,0,TopHeigh]) cylinder(h=Height,d=CanDia);
}

difference()
{
  translate([0,0,TopHeigh]) cylinder(h=InnerHeight,d=InnerDia);
  translate([0,0,TopHeigh+1]) cylinder(h=Height,d=InnerDia-2);
}

union() //Tabs
{
  translate([28,-5,0]) cube([6,10,4]);
  translate([34,0,0]) cylinder(h=4,d=10);
}