LenX=195;
WidthY=25;
HeightZ=3;

cube([LenX,WidthY,HeightZ]);
for(x=[1:1:LenX-5])
{
  translate([x,0,0]) cube([0.3,3,3.5]);
}

for(x=[5:5:LenX-5])
{
  translate([x,0,0]) cube([0.5,5,3.5]);
  translate([x-1,6,2]) rotate([0,0,-90])  
    linear_extrude(height=2, convexity=2) 
      text(str(x),4, font="Tahoma",halign="right");

}
  
translate([80,16,2]) rotate([0,0,0])  
    linear_extrude(height=2, convexity=2) 
      text("Millimeters",7, font="Tahoma",halign="left");
