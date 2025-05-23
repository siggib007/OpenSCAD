$fn=128;
BoxW=150;
BoxD=150;
HoleD=40;
Wall=5;
StartHoleD=(BoxD/2);
StartHoleW=(BoxW/2);

difference()
{
    cube([BoxW,BoxD-Wall,5]);
    translate([StartHoleW,StartHoleD,-5]) cylinder(h=15, d=HoleD);
}
translate([BoxW/2,BoxD-24,4]) linear_extrude(height=2, convexity=2) text("Dead Batteries",16, font="Tahoma",halign="center");
translate([BoxW/2,10,4]) linear_extrude(height=2, convexity=2) text("Öruggt Net",6, font="Tahoma",halign="center");
translate([0,BoxD,0]) rotate([90,0,90])
{
    difference()
    {
        union()
        {
          translate([1,2.5,0]) cylinder(h=BoxW,d=5);
          translate([-5,0,0]) cube([5,5,BoxW]);
        }
        for(x=[5:10:BoxD])
        {
            translate([-5,-2,x]) cube([15,10,5]);
        }
        translate([1,2.5,-2]) cylinder(h=BoxW+5,d=2);
    }
}
