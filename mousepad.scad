$fn = 64;
difference()
{
  cube([240,35,200]);
  translate([40,20,-2]) cube([320,30,210]);
  translate([-6,-6,-2]) cube([25,20,260]);
  translate([10,27,45]) rotate([90,90,0]) cylinder(h=15,d=5);
  translate([10,27,165])rotate([90,90,0]) cylinder(h=15,d=5);  
  translate([10,37,45]) rotate([90,90,0]) cylinder(h=15,d=20);
  translate([10,37,165])rotate([90,90,0]) cylinder(h=15,d=20);  
}
