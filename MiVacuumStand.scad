difference()
{
    union()
    {
        difference()
        {
            cylinder(d=60,h=80);
            translate([0,0,2]) cylinder(d=55,h=80);
            translate([-6,-6,-2]) cube([50,12,90]);
        }
        translate([-38,-10,0]) cube([10,20,80]);
    }
    translate([-40,0,35]) rotate([0,90,0]) cylinder(h=15,d=6);
    translate([-40,0,65]) rotate([0,90,0]) cylinder(h=15,d=6);
}
