// -> increase the number for smoother edges
$fn = 60;
// -> the length of the box
length=40.0;
// -> the width of the box
width=20.0;
// -> the total height of the box 
height=60.0;
// -> the height of the roundings on top and bottom
topRadius=5.0;
// -> the radius of the side part
sideRadius=width/3.0;
// -> the radius of fillets and outer roundings
filletRadius=4.0;

///////////////////////////////////////////////////////////////////////////////////////
// main
///////////////////////////////////////////////////////////////////////////////////////

roundedBox00(length, width, height, filletRadius);

translate([2.5*width,0,0])
    roundedBox01(length, width, height, filletRadius);

translate([5*width,0,0])
    roundedBox02(length, width, height, sideRadius, filletRadius);
    
translate([7.5*width,0,0])
    roundedBox03(length, width, height, sideRadius, topRadius, filletRadius);

translate([10*width,0,0])    
    roundedBox04(length, width, height, sideRadius, topRadius, filletRadius);

translate([12.5*width,0,0])
    roundedBox05(length, width, height, topRadius, filletRadius);

translate([15*width,0,0])
    roundedBox06(length, width, height, topRadius);

///////////////////////////////////////////////////////////////////////////////////////
// modules
///////////////////////////////////////////////////////////////////////////////////////
module roundedBox00(length, width, height, filletRad)
{
    filletDia=2*filletRad;
    translate([length/2, width/2, height/2])
    minkowski()
    {
        sphere(filletRad);
        cube([length-filletDia, width-filletDia, height-filletDia], center=true);
    }   
}

///////////////////////////////////////////////////////////////////////////////////////
// creates a box with rounded edges all around except on the top
module roundedBox01(length, width, height, radius)
{
    translate([radius,radius,radius])
    hull() 
    {
        sphere(radius);
        translate([length-2*radius, 0, 0])              sphere(radius);
        translate([length-2*radius, width-2*radius, 0]) sphere(radius);
        translate([0, width-2*radius, 0])               sphere(radius);
        
        translate([0, 0, height-radius])                            halfSphere(radius);
        translate([length-2*radius, 0, height-radius])              halfSphere(radius);
        translate([length-2*radius, width-2*radius, height-radius]) halfSphere(radius);
        translate([0, width-2*radius, height-radius])               halfSphere(radius);
    }
}

///////////////////////////////////////////////////////////////////////////////////////
// creates half of a sphere
module halfSphere(radius)
{
    difference()
    {
        sphere(radius);
        translate([-1.5*radius, -1.5*radius, 0]) cube(3*radius);
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module roundedBox02(length, width, height, sideRad, filletRad)
{
    hull()
    {
        translate([0,0,height-2*filletRad])
            makeBase00(length, width, sideRad, filletRad);
        makeBase00(length, width, sideRad, filletRad);
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module makeBase00(length, width, sideRad, filletRad)
{
    filletDia=2*filletRad;
    sideDia=2*sideRad-filletDia;
    
    translate([sideRad,width/2,filletRad+0.00005])
    minkowski()
    {
        sphere(r=filletRad);
        hull() 
        {
            translate([length-sideDia-filletDia,0,0]) 
                scale([sideDia, width-filletDia, 1]) 
                    cylinder(d=1, h=0.0001, center=true);
            scale([sideDia, width-filletDia, 1]) 
                cylinder(d=1, h=0.0001, center=true);
        }
    }
}
///////////////////////////////////////////////////////////////////////////////////////
module roundedBox03(length, width, height, sideRad, topRad, filletRad)
{
    assert(topRad<=length, "Error: top cuvature may not be greater than length of box.");
    union()
    {
        // make base
        hull()
        {
            translate([0,0,height-topRad])
                makeBase01(length, width, sideRad);
            makeBase00(length, width, sideRad, filletRad);
        }
        // make top curved cap
        intersection()
         {   
            hull()
            {
                translate([0,0,height])
                    makeBase01(length, width, sideRad);
                makeBase00(length, width, sideRad, filletRad);
            }
   
            // top: see https://de.wikipedia.org/wiki/Kreissegment
            //sphereRad=(4h² + s²)/8h = (4*topRad² + length²)/8*topRad
            sphereRad= (4*(topRad*topRad) + length*length)/(8*topRad);
            translate([length/2,width/2,height-sphereRad])
                sphere(r=sphereRad, $fn=200); 
        }
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module makeBase01(length, width, sideRad)
{
    sideDia=2*sideRad;
    
    translate([sideRad,width/2,0.00005])
    hull() 
    {
        translate([length-sideDia,0,0]) 
            scale([sideDia, width, 1]) 
                cylinder(d=1, h=0.0001, center=true);
        scale([sideDia, width, 1]) 
            cylinder(d=1, h=0.0001, center=true);
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module roundedBox04(length, width, height, sideRad, topRad, filletRad)
{
    assert(topRad<=length, "Error: top cuvature may not be greater than length of box.");
    
    translate([filletRad, filletRad, 0])
    minkowski()
    { 
        sphere(filletRadius);
        union()
        {
            // make base
            hull()
            {
                translate([0,0,height-topRad-filletRad])
                    makeBase02(length, width, sideRad, filletRad);
                translate([0,0,filletRad])
                    makeBase02(length, width, sideRad, filletRad);
            }
            // make top curved cap
            intersection()
             {   
                hull()
                {
                    translate([0,0,height])
                        makeBase02(length, width, sideRad, filletRad);
                    translate([0,0,filletRad])
                        makeBase02(length, width, sideRad, filletRad);
                }
       
                // top: see https://de.wikipedia.org/wiki/Kreissegment
                //sphereRad=(4h² + s²)/8h = (4*topRad² + length²)/8*topRad
                sphereRad= (4*(topRad*topRad) + length*length)/(8*topRad);
                translate([length/2-filletRad,width/2-filletRad,height-sphereRad-filletRad])
                    sphere(r=sphereRad, $fn=200); 
            }
        }
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module makeBase02(length, width, sideRad, filletRad)
{
    filletDia=2*filletRad;
    sideDia=2*sideRad-filletDia;
    
    translate([sideRad-filletRad,width/2-filletRad,0.00005])
    hull() 
    {
        translate([length-sideDia-filletDia,0,0]) 
            scale([sideDia, width-filletDia, 1]) 
                cylinder(d=1, h=0.0001, center=true);
        scale([sideDia, width-filletDia, 1]) 
            cylinder(d=1, h=0.0001, center=true);
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module roundedBox05(length, width, height, topRad, filletRad)
{
    filletDia=2*filletRad;
    topDia=2*topRad;
    translate([length/2,width/2,0])
    hull()
    {
      translate([0,0,height-topRad])
            scale([length, width, topDia]) 
                sphere(d=1);

        translate([0, 0, filletRad+0.00005])
        minkowski()
        {
            sphere(r=filletRad);
            scale([length-filletDia, width-filletDia, 1]) cylinder(d=1, h=0.0001);
        }
    }
}

///////////////////////////////////////////////////////////////////////////////////////
module roundedBox06(length, width, height, topRad)
{
    diameter=2*topRad;
    translate([length/2,width/2,topRad])
    hull()
    {
        scale([length, width, diameter]) sphere(d=1);
        translate([0,0,height-diameter])
            scale([length, width, diameter]) 
                sphere(d=1);
    }
}
