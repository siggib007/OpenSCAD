difference()
{
    union()
    {
        cube([10,150,5]);
        cube([10,5,15]);
    }
    translate([-5,2,13]) rotate([0,90,0]) cylinder(d=2,h=20);
}
