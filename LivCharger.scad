difference()
{
    cube([90,41,35]);
    translate([5,5,5]) cube([80,31,35]);
    translate([-5,10,15]) cube([99,21,35]);
    translate([25,5,5]) cube([40,50,35]);
    translate([30,10,20]) rotate([90,90,0]) cylinder(h=15,d=5);
    translate([60,10,20]) rotate([90,90,0]) cylinder(h=15,d=5);
    translate([30,6,20]) rotate([90,90,0]) cylinder(h=4,d=9);
    translate([60,6,20]) rotate([90,90,0]) cylinder(h=4,d=9);    
}
