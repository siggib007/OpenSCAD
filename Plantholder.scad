$fn=128;
cylinder(h=100,d=3);
translate([11,0,0]) difference()
{
    cylinder(h=5,d=25);
    translate([0,0,-1]) cylinder(h=7,d=21);
    translate([0,0,-1]) cube(20);
}