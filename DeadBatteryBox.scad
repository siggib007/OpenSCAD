$fn=128;
BoxH=100;
BoxW=150;
BoxD=150;
Wall=5;
DW=Wall*2;

difference()
{
    cube([BoxW,BoxD,BoxH]);
    translate([Wall,Wall,Wall]) cube([BoxW-DW,BoxD-DW,BoxH]);
}
translate([0,0,BoxH]) rotate([90,0,90])
{
    difference()
    {
        union()
        {
          translate([0,0,0]) cube([5,6,BoxW]);
          translate([2,5,0]) cylinder(h=BoxW,d=6);
        }
        for(x=[5:10:BoxD])
        {
            translate([-5,0,x]) cube([15,10,5]);
        }
        translate([2,5,-Wall]) cylinder(h=BoxW+DW,d=2);
    }
}
