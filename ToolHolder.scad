difference()
{
    cube([65,50,50]);
    translate([5,10,-5]) cube([70,30,35]);
    translate([5,-5,10]) cube([50,60,60]);
    translate([5,-5,30]) cube([65,60,60]);
    translate([-2,25,40]) rotate([0,90,0]) cylinder(d=6,h=10);
}