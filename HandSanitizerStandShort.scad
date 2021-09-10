difference()
{
    cube([76,74,50]);
    translate([2,2,2]) cube([70,70,110]);
    translate([-2,30,10]) cube([10,17,30]);
    translate([65,37,15]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([65,37,35]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([71,37,35]) rotate([0,90,0]) cylinder(h=3,d=8);
    translate([71,37,15]) rotate([0,90,0]) cylinder(h=3,d=8);
}