include <hEX-hAP-Vars.scad>;
OuterH=LipH+Wall;


difference()
{
  cube([OuterW,OuterD,OuterH]);
    //Stacking lip
  translate([-Buff,-Buff,-Buff]) cube([OuterW+DB+Buff,Wall+Buff,LipH+Buff]);
  translate([-Buff,-Buff,-Buff]) cube([Wall+Buff,OuterD+DB,LipH+Buff]);
  translate([OuterW-Wall,-Buff,-Buff]) cube([Wall+Buff,OuterD+Buff,LipH+Buff]);
  translate([-Buff,OuterD-Wall,-Buff]) cube([OuterW+DW+Buff,Wall+DB+Buff,LipH+Buff]);
  // Prytabs
  translate([TabX,-Buff,LipH-Buff]) cube([Wall,Wall,DB]);
  translate([OuterW-TabX,-Buff,LipH-Buff]) cube([Wall,Wall,DB]);
  translate([TabX,InnerD+Wall+Buff,LipH-Buff]) cube([Wall,Wall,DB]);
  translate([OuterW-TabX,InnerD+Wall+Buff,LipH-Buff]) cube([Wall,Wall,DB]);
}
