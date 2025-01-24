$fn=129;
difference()
{
    union()
    {
        cube([10,150,5]);
        cube([10,5,10]);
        translate([0,2.5,10]) rotate([0,90,0]) cylinder(d=5,h=10);
    }
    translate([-5,2.5,10]) rotate([0,90,0]) cylinder(d=2,h=20);
}
translate([0,145,4]) cube([10,1,2]);