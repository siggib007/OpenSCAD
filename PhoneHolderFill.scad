Width=170;
difference()
{
    union()
    {
      translate([9,0,13]) cube([30,Width,30]);
      translate([13,0,0]) rotate([0,-25,0]) cube([15,Width,30]);
    }
    translate([0,-1,24]) cube([55,Width+5,35]);
}