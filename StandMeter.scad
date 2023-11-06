module triangle(l, w, h){
      polyhedron(//pt 0        1        2        3        4        5
              points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
              faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
            }

rotate([50,0,0]) difference()
{
  cube([90,50,25]);
  translate([-2,5,5]) cube([95,60,30]);
}

triangle(90,30,40);