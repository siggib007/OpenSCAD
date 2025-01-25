$fn=128;
difference()
{
    cube([20,30,25]);
    translate([-1,-1,-5]) cube([15,32,23]);
    translate([16,-1,2]) cube([2,32,21]);
    translate([-3,-1,8]) cube([20,32,15]);
}
difference()
{
    translate([7,0,25]) cube([5,30,15]);
    translate([6,10,25]) cube([7,10,18]);
    translate([9.5,-10,37]) rotate([-90,0,0]) cylinder(d=2,h=45);
}