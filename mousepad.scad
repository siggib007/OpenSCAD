difference()
{
  cube([270,250,50]);
  translate([70,-2,2]) cube([320,260,130]);
  translate([-2,-2,-2]) cube([70,260,50]);
  translate([40,30,45]) cylinder(h=15,d=5);
  translate([40,150,45]) cylinder(h=15,d=5);  
}
