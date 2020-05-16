difference()
{
    cylinder(d=35,h=8);
    translate([0,0,-5]) cylinder(d=22,h=15);
}
translate([30,0,0]) difference()
{
    cylinder(d=35,h=8);
    translate([0,0,-5]) cylinder(d=22,h=15);
}
*translate([30,0,0])cylinder(d=2,h=8);
translate([-17,28,0]) difference()
{
    cylinder(d=35,h=8);
    cylinder(d=5,h=8);
    translate([0,0,-5]) cylinder(d=22,h=15);
}
*translate([-17,28,0])cylinder(d=2,h=8);
translate([-17,-25,0]) difference()
{
    cylinder(d=35,h=8);
    translate([0,0,-5]) cylinder(d=22,h=15);
}
*translate([-17,-25,0])cylinder(d=2,h=8);
*translate([30,1,8]) rotate([0,0,-152])cube([55,2,2]);
*translate([30,1,8]) rotate([0,0,149])cube([55,2,2]);
*translate([-16,-26,8]) rotate([0,0,90])cube([55,2,2]);