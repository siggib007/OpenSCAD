$fn = 96;
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
        translate([-33,-10,0]) cube([5,20,80]);
    }
    translate([-40,0,35]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([-40,0,65]) rotate([0,90,0]) cylinder(h=15,d=5);
    translate([-30,0,65]) rotate([0,90,0]) cylinder(h=3,d=8);
    translate([-30,0,35]) rotate([0,90,0]) cylinder(h=3,d=8);
}
