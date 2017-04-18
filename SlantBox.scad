 module slantbox(l, w, h1, h2)
 {
    /*polyhedron
    (
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h1], [l,w,h1],[l,0,h2],[0,w,h2] ],
        faces=[
	        [0,1,2,3], //base
	        [0,1,6,5], //Face A
	        [1,2,7,6], //face B
	        [2,3,4,7], //Face C
	        [0,3,4,5], // Face D
	        [5,6,7,4] //Top
        ]
    );*/
       z = 0.08;
       separation = 2;
       border = .2;
       translate([0,w+separation,0])
           cube([l,w,z]);
       translate([0,w+separation+w+border,0])
           cube([l,h1,z]);
       translate([0,w+separation+w+border+h1+border,0])
           cube([l,sqrt(w*w+h1*h1),z]);
		translate([l+border,w+separation+w+border+h1+border,0])

 }

 slantbox(65, 55, 25,20);