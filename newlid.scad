// Somewhat silly recreation of https://www.thingiverse.com/thing:5386671/
// rendered entirely in OpenSCAD with a few changes here and there.
// (Clearly I have too much time on my hands).
//
// Probably could be modified, but I hard coded a lot of dimensions
// just by eyeballing the preview till it looked good, so your
// milage may vary :-).
//
// I printed one without supports and it printed fine and opens cans
// and rotates around over the opening as intended.

// radius for curved edges to avoid sharp edges and look nice
edge_rad=0.7;

// Dimensions used in the base that goes under the pull tab
base_frontz=2.91; // height at front
base_backz=3.5;   // height at rear
base_backx=16.8;  // depth from front to incurving back
base_fronty=32.7; // width at front
base_backy=33.93; // width of incurving piece at back
base_angle=atan((base_backz-base_frontz)/base_backx); // angle base slopes up
base_back_seg=100; // degrees of toroid required for curve at back
base_loop_rad=22;  // radius of curve at back of base
base_loop_off=3;   // offset of center of base loop
base_loop_z=2.226; // height of base loop to join with base properly

flat_height=9.55; // height of flat joining front and back half
flat_deep=21.4;   // depth from x=0 of flat part
flat_x=4.5;       // x width of flat part
flat_y=22;        // y width of flat part

wall_thick=3;     // how thick are walls on either side of trench
wall_ang=6.75;    // angle of top of wall
wallrad=7.9;      // radius of curved front of wall
walllen=14.5;     // length of extensions to reach back of lifter

bottom_front_bridge_z=4.4;  // Height of bottom front edge of bridge
bottom_front_bridge_x=4.65; // Depth to bottom front edge of bridge
bottom_back_bridge_z= 6;    // Height of bottom back edge of bridge
bottom_back_bridge_x=12.2;  // depth to bottom back edge of bridge: 12.2

back_x=25; // back "lever" part starts at x==25
back_limit=50; // back ends at x==5
back_wide=24; // width of back piece
back_ang=14; // slope of back piece
back_len=13; // length of straight sides of back piece

// I tried thing 5401711, but aussie beer cans aren't the right
// diameter. Put back the larger cut out for the can edge. This may be the
// only bit you'll want to modify to fit cans better.
//
module big_cut() {
   translate([3,0,-0.5])
      difference() {
         cylinder(r=24.7,h=5,$fn=32);
         translate([0,0,-1])
         cylinder(r=22,h=7,$fn=32);
      }
}

// Can't successfuly manipulate the stl file for love nor money. Let's
// go ahead and do a new design from scratch in openscad.

module hemi(rad=0.7) {
   difference() {
      sphere(r=rad,$fn=64);
      translate([-rad,-rad,-2*rad])
         cube([2*rad,2*rad,2*rad]);
   }
}

module base_back_loop() {
   translate([0,0,base_loop_z])
      rotate([0,-base_angle,0])
         translate([base_loop_off,0,0])
            rotate([0,0,-base_back_seg/2])
            rotate_extrude(angle=base_back_seg,$fn=64)
               translate([base_loop_rad-edge_rad,0,0])
                  circle(r=edge_rad,$fn=64);
}

// Pick off dimensions of the trench to slide tab into.

// Distance to back of trench: 20.7
// Distance from middle to one side of trench: 8
// Height of center back of trench: 3.75
// Distance to front of midpoint of trench: 2.495
// Height of front midpoint of trench: 0.48
// Distance from front to edge of central trench polygon: 1.67
// Distance from middle to edge of centrel trench polygon: 2.33
// Height of edge of central trench polygon: 0.41
// Height of front side slope panel in trench: 1.52
// Distance from middle line to front lip polygon: 3.49
// Height of front lip polygon: 0.3

// One half of center of trench - morror this to get other half.
//
module half_center_trench() {
   r=0.1;
   hull() {
      translate([20.7-r,8-r,3.75+r])
         sphere(r=r,$fn=64);
      translate([20.7-r,0,3.75+r])
         sphere(r=r,$fn=64);
      translate([20.7-r,0,6])
         sphere(r=r,$fn=64);
      translate([2.495,0,0.48+r])
         sphere(r=r,$fn=64);
      translate([1.67+r,2.33-r,0.41+r])
         sphere(r=r,$fn=64);
      translate([20.7-r,8-r,6])
         sphere(r=r,$fn=64);
      translate([2.495+r,0,6])
         sphere(r=r,$fn=64);
      translate([1.67+r,2.33-r,6])
         sphere(r=r,$fn=64);
   }
}

// One half of side slope of trench - mirror to get other half
//
module half_side_trench() {
   r=0.1;
   hull() {
      translate([1.67+r,2.33-r,0.41+r])
         sphere(r=r,$fn=64);
      translate([1.67+r,2.33-r,6])
         sphere(r=r,$fn=64);
      translate([20.7-r,8-r,3.75+r])
         sphere(r=r,$fn=64);
      translate([20.7-r,8-r,6])
         sphere(r=r,$fn=64);
      translate([r,8-r,1.52+r])
         sphere(r=r,$fn=64);
      translate([r,8-r,6])
         sphere(r=r,$fn=64);
   }
}

// One half of the lips at front of trench - mirror for other half
//
module front_lip_trench() {
   r=0.1;
   hull() {
      translate([1.67+r,2.33-r,0.41+r])
         sphere(r=r,$fn=64);
      translate([1.67+r,2.33-r,6])
         sphere(r=r,$fn=64);
      translate([0,3.49,0.3+r])
         sphere(r=r,$fn=64);
      translate([0,3.49+r,6])
         sphere(r=r,$fn=64);
      translate([0,8-r,1.52+r])
         sphere(r=r,$fn=64);
      translate([0,8-r,6])
         sphere(r=r,$fn=64);
   }
}

// Sape of the entire trench the tab slide into, subtract from the base
//
module trench_shape() {
   union() {
      half_center_trench();
      half_side_trench();
      front_lip_trench();
      mirror([0,1,0])
         half_center_trench();
      mirror([0,1,0])
         half_side_trench();
      mirror([0,1,0])
         front_lip_trench();
   }
}

// Model the front lifter base plate.
//
module base_lifter() {
   rad=edge_rad;
   frontz=base_frontz;
   backz=base_backz;
   backx=base_backx;
   fronty=base_fronty;
   backy=base_backy;
   difference() {
      // Put some hemispheres and toroid segments together with hull
      // to form the basic shape of the lifter base with nice rounded edges
      hull() {
         translate([rad,(-fronty/2)+rad,0])
            hemi(rad=rad);
         translate([rad,(fronty/2)-rad,0])
            hemi(rad=rad);
         translate([rad,(-fronty/2)+rad,frontz-rad])
            hemi(rad=rad);
         translate([rad,(fronty/2)-rad,frontz-rad])
            hemi(rad=rad);
         translate([backx,(-backy/2)+rad,0])
            hemi(rad=rad);
         translate([backx,(backy/2)-rad,0])
            hemi(rad=rad);
         translate([backx,(-backy/2)+rad,backz-rad])
            hemi(rad=rad);
         translate([backx,(backy/2)-rad,backz-rad])
            hemi(rad=rad);
         base_back_loop();
         linear_extrude(height=0.01)
            projection(cut=false)
               base_back_loop();
      }
      trench_shape();
      translate([-1.2,0,-1])
         cylinder(r=3.7,h=7,$fn=64);
   }
}

// Shape of walls tab slides between
module lifter_wall_shape() {
   translate([wallrad,0,0])
   union() {
      rotate([90,0,0])
         rotate_extrude($fn=64)
            translate([wallrad-edge_rad,0,0])
               circle(r=edge_rad,$fn=64);
      rotate([0,-wall_ang,0])
         translate([0,0,wallrad-edge_rad])
            rotate([0,90,0])
               cylinder(r=edge_rad,h=walllen,$fn=64);
   }
}

module thin_lifter_wall() {
   hull() {
      linear_extrude(height=0.01)
         projection(cut=false)
            lifter_wall_shape();
      difference() {
         lifter_wall_shape();
         translate([-1,-25,-50])
            cube([50,50,50]);
      }
   }
}

module lifter_wall(wall_thick=wall_thick) {
   hull() {
      translate([0,-edge_rad+(wall_thick/2),0])
         thin_lifter_wall();
      mirror([0,1,0])
         translate([0,-edge_rad+(wall_thick/2),0])
            thin_lifter_wall();
   }
}

// The bridge over the trench to capture the pull tab
//
module bridge() {
   w=9;
   intersection() {
      hull() {
         translate([bottom_front_bridge_x,w,bottom_front_bridge_z])
            sphere(r=0.11,$fn=64);
         translate([bottom_front_bridge_x+1.5,w,bottom_front_bridge_z+2.7])
            sphere(r=edge_rad,$fn=64);
         translate([bottom_back_bridge_x,w,bottom_back_bridge_z])
            sphere(r=0.11,$fn=64);
         translate([bottom_back_bridge_x+1.5,w,bottom_back_bridge_z+2])
            sphere(r=edge_rad,$fn=64);
         translate([bottom_front_bridge_x,-w,bottom_front_bridge_z])
            sphere(r=0.11,$fn=64);
         translate([bottom_front_bridge_x+1.5,-w,bottom_front_bridge_z+2.7])
            sphere(r=edge_rad,$fn=64);
         translate([bottom_back_bridge_x,-w,bottom_back_bridge_z])
            sphere(r=0.11,$fn=64);
         translate([bottom_back_bridge_x+1.5,-w,bottom_back_bridge_z+2])
            sphere(r=edge_rad,$fn=64);
      }
   lifter_wall(wall_thick=25);
   }
}

// Add superstructure to the front lifter half to build the complete
// model. This is just the front half that lifts the tab, still needs the
// back half for leverage and hole to hang it from.
//
module complete_lifter() {
   difference() {
      union() {
         base_lifter();
         hull() {
            translate([flat_deep,(flat_y/2)-edge_rad,flat_height-edge_rad])
               union() {
                  rotate([0,90,0])
                     cylinder(r=edge_rad,h=flat_x,$fn=64);
                  sphere(r=edge_rad,$fn=64);
               }
            translate([flat_deep,(-flat_y/2)+edge_rad,flat_height-edge_rad])
               union() {
                  rotate([0,90,0])
                     cylinder(r=edge_rad,h=flat_x,$fn=64);
                  sphere(r=edge_rad,$fn=64);
               }
            translate([flat_deep-1.3,-flat_y/2,0])
               cube([flat_x+1.3,flat_y,0.1]);
         }
         translate([0,11-wall_thick/2,0])
            lifter_wall();
         translate([0,-(11-wall_thick/2),0])
            lifter_wall();
         bridge();
      }
      difference() {
         translate([-45,-25,-25])
            cube([50,50,50]);
         translate([wallrad,25,0])
            rotate([90,0,0])
               cylinder(r=wallrad,h=50,$fn=64);
      }
   }
}

// rounded corner piece for the back part
//
module back_corner() {
   translate([back_x+edge_rad,(back_wide/2)-edge_rad,0])
   union() {
      cylinder(r=edge_rad,h=flat_height-edge_rad,$fn=64);
      translate([0,0,flat_height-edge_rad])
         sphere(r=edge_rad,$fn=64);
   }
}

// edge of the top of the back part
//
module back_top() {
   translate([back_x+edge_rad,0,flat_height-edge_rad])
   rotate([0,back_ang,0])
   union() {
      translate([0,back_wide/2-edge_rad,0])
         rotate([0,90,0])
            union() {
               sphere(r=edge_rad,$fn=64);
               cylinder(r=edge_rad,h=back_len,$fn=64);
               translate([0,0,back_len])
                  sphere(r=edge_rad,$fn=64);
            }
      translate([0,-(back_wide/2-edge_rad),0])
         rotate([0,90,0])
            union() {
               sphere(r=edge_rad,$fn=64);
               cylinder(r=edge_rad,h=back_len,$fn=64);
               translate([0,0,back_len])
                  sphere(r=edge_rad,$fn=64);
            }
      translate([back_len,0,0])
         rotate([0,0,-90])
            rotate_extrude(angle=180,$fn=64)
               translate([(back_wide/2)-edge_rad,0,0])
                  circle(r=edge_rad,$fn=64);
   }
}

// Join the back corners and back top piece for framework of the back
module back_frame() {
   union() {
      back_top();
      back_corner();
      mirror([0,1,0])
         back_corner();
   }
}

// Project the shape of the back frame for the bottom and use hull to
// make that a solid shape for the back part.
//
module solid_back() {
   hull() {
      linear_extrude(height=0.1)
         projection(cut=false)
            back_frame();
      back_frame();
   }
}

// Hole shape with rounded edges to subtract from back piece
//
module hole_plug() {
   topz=3.88;
   difference() {
      union() {
         translate([0,0,-1])
         cylinder(r=5,h=15,$fn=64);
         translate([0,0,-1])
            cylinder(r=5+edge_rad,h=edge_rad+1,$fn=64);
         translate([0,0,topz])
            difference() {
               cylinder(r=5+edge_rad,h=15-1-topz,$fn=64);
               translate([5+edge_rad,0,0])
                  rotate([0,back_ang,0])
                     translate([-25,-25,-50])
                        cube([50,50,50]);
            }
      }
      translate([0,0,edge_rad])
         rotate_extrude($fn=64)
            translate([5+edge_rad,0,0])
               circle(r=edge_rad,$fn=64);
      translate([0,0,topz+2*edge_rad])
         rotate([0,back_ang,0])
            scale([1.04,1,1])
            rotate_extrude($fn=64)
               translate([5+edge_rad,0,0])
                  circle(r=edge_rad,$fn=64);
   }
}

// Put together all the pieces and remove extra bits to make the final
// can opener part.
//
// Printed one and it works fine, but I have some minor defects telling
// mew it is time to level the print bed :-).
//
module final_opener() {
   difference() {
      union() {
         complete_lifter();
         solid_back();
      }
      big_cut();
      translate([40,0,0])
         hole_plug();
   }
}

final_opener();
