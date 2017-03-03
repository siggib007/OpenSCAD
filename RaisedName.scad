cube([50,17,2]);
translate([25,12,2]) ExtrudeText("Siggi Bjarnason",5,"Tahoma","center");
translate([25,5,2]) ExtrudeText("W7RTF",5,"Arial","center");

module ExtrudeText(String,Size,strFont,align)
{
	linear_extrude(height=1, convexity=2)
	text(
	     String,
	     Size, font=strFont,
	     halign=align, valign=align
	     );
}
