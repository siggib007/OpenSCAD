difference()
{
  cube([200,31,8]);
  translate([10,10,-5]) cylinder(h=15,d=5);
  translate([190,10,-5]) cylinder(h=15,d=5);   
  translate([10,21,-5]) cylinder(h=15,d=5);
  translate([190,21,-5]) cylinder(h=15,d=5);   

  translate([39,10,-5]) cylinder(h=15,d=3);
  translate([161,10,-5]) cylinder(h=15,d=3);   
  translate([39,21,-5]) cylinder(h=15,d=3);
  translate([161,21,-5]) cylinder(h=15,d=3);   
  
  translate([39,10,5]) cylinder(h=15,d=10);
  translate([161,10,5]) cylinder(h=15,d=10);   
  translate([39,21,5]) cylinder(h=15,d=10);
  translate([161,21,5]) cylinder(h=15,d=10);   

}