difference()
{
    cube([55,30,50]);
    translate([5,5,-5]) cube([60,18,60]);
    translate([5,-5,5]) cube([45,40,60]);
    translate([5,-5,24]) cube([65,60,60]);
    translate([-2,15,40]) rotate([0,90,0]) cylinder(d=5,h=10);
}