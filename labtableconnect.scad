$fn=128;
difference()
{
    cube([15,30,25]);
    translate([-1,-1,-5]) cube([10,32,23]);
    translate([11,-1,2]) cube([2,32,21]);
    translate([-3,-1,8]) cube([15,32,15]);
}
difference()
{
    translate([5,0,25]) cube([5,30,5]);
    translate([4,10,25]) cube([7,10,8]);
    translate([7.5,-10,27]) rotate([-90,0,0]) cylinder(d=2,h=45);
}