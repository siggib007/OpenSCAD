cube([20,27,2]);
difference()
{
    translate([8,6,5]) rotate([0,90,0]) cylinder(h=4,d=10);
    translate([6,6,5]) rotate([0,90,0]) cylinder(h=8,d=6);
    translate([6,6,1]) cube([8,8,2]);
}
difference()
{
    translate([8,15,2]) cube([4,10,6]);
    translate([6,17,2]) cube([8,14,4]);
}