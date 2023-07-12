$fn = 128;
difference()
{
    union()
    {
        difference()
        {
            cylinder(d=61,h=80);
            translate([0,0,2]) cylinder(d=56,h=80);
            translate([-6,-6,-2]) cube([50,12,90]);
        }
        translate([-38,-12,0]) cube([10,24,80]);
    }
    translate([-40,0,35]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([-40,0,65]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([-34,0,65]) rotate([0,90,0]) cylinder(h=7,d=10);
    translate([-34,0,35]) rotate([0,90,0]) cylinder(h=7,d=10);
}
