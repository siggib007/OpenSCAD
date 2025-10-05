difference()
{
  cube([40,40,12]);
  translate([10,10,4]) cube([40,40,4]);
  translate([20,20,2]) rotate([0,0,0]) cylinder(h=16,d=15);
  translate([20,20,-2]) rotate([0,0,0]) cylinder(h=16,d=5);
  
}