BoxX = 65;
BoxY = 30;
BoxZ = 2;
HalfX = BoxX/2;
HalfY = BoxY/2;
UnitList2 = ["203","202","201"];
UnitList = ["104","103","102","101"];
UnitList0 = ["004","003","002","001"];


for (i=[0:len(UnitList)-1])
{
    Unit=UnitList[i];
    NewX = 0;
    NewY=(BoxY+5)*i;

    translate([NewX,NewY,0])
    {
        cube([BoxX,BoxY,BoxZ],true);
        linear_extrude(height=2, convexity=2) text(Unit,16, font="Tahoma", halign="center", valign="center");
    }
}