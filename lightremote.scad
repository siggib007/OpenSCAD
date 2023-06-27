RemoteX=57;
RemoteY=45;
RemoteZ=25;
Wall=2;
Lip=15;
DW=Wall*2;
DL=Lip*2;
difference()
{
  cube([RemoteX+DW,RemoteY+DW,RemoteZ+DW]);
  translate([Wall,Wall,Wall]) cube([RemoteX,RemoteY+DW+DW,RemoteZ]);
  translate([Lip+Wall,-Wall,-Wall]) cube([RemoteX-DL,RemoteY+DW+DW,RemoteZ]);
}

