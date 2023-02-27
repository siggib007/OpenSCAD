$fn = 64;
difference()
{
  cube([240,50,200]);
  translate([40,6,-2]) cube([320,60,210]);
  translate([-6,-6,-2]) cube([40,50,260]);
  translate([10,55,45]) rotate([90,90,0]) cylinder(h=15,d=5);
  translate([10,55,165])rotate([90,90,0]) cylinder(h=15,d=5);  
}
