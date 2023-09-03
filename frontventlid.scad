BoxH=150;
BoxW=72;
BoxD=6;
MagnetD=9;
MagnetH=4;
MagnetR=ceil(MagnetD/2)+1;
KnobH=10;
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
translate([BoxW/2-KnobW/2,-KnobD,BoxH/2]) cube([KnobW,KnobD,KnobH]);