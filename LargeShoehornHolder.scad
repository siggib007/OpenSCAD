$fn = 96;
difference()
{
  union()
  {
    cylinder(h=35,d=25);
    translate([0,0,35]) cylinder(h=5,d=40);
    translate([-12.5,-20,0]) cube([70,40,5]);
  }
translate([45,10,-5]) cylinder(h=15,d=5);
translate([45,-10,-5]) cylinder(h=15,d=5);
}