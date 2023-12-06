BoxH=125;
BoxW=130;
BoxD=6;
MagnetD=9;
MagnetH=4;
MagnetR=ceil(MagnetD/2)+1;
KnobW=20;
KnobD=10;
difference()
{
  cube([BoxW,BoxD,BoxH]);
  translate([MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,BoxH-MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);
  translate([MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD,h=MagnetH);
  translate([BoxW-MagnetR,BoxD+1,MagnetR]) rotate([90,0,0])
    cylinder(d=MagnetD, h=MagnetH);  
}
translate([BoxW,0,BoxH/2-KnobW/2]) cube([KnobD,BoxD,KnobW]);