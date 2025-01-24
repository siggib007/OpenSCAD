$fn=128;
difference()
{
    cube([200,100,17]);
    translate([95,39,3]) cube([10,10,20]);
    translate([50,-1,3]) cube([100,50,7]);
    translate([-1,-1,3]) cube([210,40,20]);
    translate([-1,-3.5,3]) cube([210,50,6.5]);
    translate([-1,75,3]) cube([210,40,20]);
    translate([-1,55,3]) cube([210,50,7]);
}
difference()
{
    translate([85,100,0]) cube([30,10,3]);
    translate([95,100,-2]) cube([10,19,10]);
    translate([80,107,1.5]) rotate([90,0,90]) cylinder(d=2,h=40);
}