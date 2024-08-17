difference()
{
    cube([180,55,35]);
    translate([5,5,5]) cube([170,45,35]);
    translate([99,15,20]) cube([99,25,35]);
    translate([15,15,5]) cube([150,50,35]);
    translate([45,10,20]) rotate([90,90,0]) cylinder(h=15,d=5);
    translate([135,10,20]) rotate([90,90,0]) cylinder(h=15,d=5);
    translate([45,6,20]) rotate([90,90,0]) cylinder(h=4,d=9);
    translate([135,6,20]) rotate([90,90,0]) cylinder(h=4,d=9);    
}
