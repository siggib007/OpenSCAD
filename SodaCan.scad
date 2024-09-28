$fn=128;
Height=10;
TotalDia=60;
CanDia=54; // Narrow EU cans 52. Wide US cans 54.
TopHeigh=4;
InnerHeight=2;
Rim=2;
InnerDia=CanDia-(Rim*2);
OuterRadius=TotalDia/2;
CanRadius=CanDia/2;
//echo(TotalDia > CanDia + 1 ? TotalDia : CanDia +2);
//OuterDia = TotalDia > CanDia + 1 ? TotalDia : CanDia +2;

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
  translate([OuterRadius-2,-5,0]) cube([6,10,4]);
  translate([OuterRadius+4,0,0]) cylinder(h=4,d=10);
}

translate([CanRadius-1,-2,TopHeigh+3]) cube([1,4,1]);
translate([-CanRadius,-2,TopHeigh+3]) cube([1,4,1]);