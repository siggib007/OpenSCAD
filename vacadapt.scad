PegH=4;
RingH=1;
OuterD=40;
OuterR=OuterD/2;
InnerD=25;
Channel=4;
Buffer=2;
difference()
{
  cylinder(d=OuterD,h=PegH);
  translate([0,0,-Buffer]) cylinder(d=InnerD,h=PegH*3);
  translate([-OuterR,-Buffer,RingH]) cube([OuterD+Buffer,Channel,PegH+Buffer]);
  translate([-Buffer,-OuterR,RingH]) cube([Channel,OuterD+Buffer,PegH+Buffer]);
  rotate([0,0,46]) translate([-OuterR,-Buffer,RingH]) cube([OuterD+Buffer,Channel,PegH+Buffer]);
  rotate([0,0,46]) translate([-Buffer,-OuterR,RingH]) cube([Channel,OuterD+Buffer,PegH+Buffer]);
  rotate([0,0,23]) translate([-Buffer,-OuterR,RingH]) cube([Channel,OuterD+Buffer,PegH+Buffer]);
  rotate([0,0,23]) translate([-OuterR,-Buffer,RingH]) cube([OuterD+Buffer,Channel,PegH+Buffer]);
  rotate([0,0,69]) translate([-Buffer,-OuterR,RingH]) cube([Channel,OuterD+Buffer,PegH+Buffer]);
  rotate([0,0,69]) translate([-OuterR,-Buffer,RingH]) cube([OuterD+Buffer,Channel,PegH+Buffer]);
}