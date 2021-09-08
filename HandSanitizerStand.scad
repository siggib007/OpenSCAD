difference()
{
    cube([74,74,100]);
    translate([2,2,2]) cube([70,70,110]);
    translate([-2,28,20]) cube([10,12,50]);
    translate([65,37,35]) rotate([0,90,0]) cylinder(h=15,d=6);
    translate([65,37,65]) rotate([0,90,0]) cylinder(h=15,d=6);
}
