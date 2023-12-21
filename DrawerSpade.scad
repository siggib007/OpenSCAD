$fn=128;
H=140;
W=200;
D=3;
Dia=12;
Buffer=10;
DB=Buffer*2;

cube([H,W,D]);
difference()
{
  cube([10,W,16]);
  translate([8,W+Buffer,9]) rotate([90,0,0]) cylinder(h=W+DB,d=Dia);
}