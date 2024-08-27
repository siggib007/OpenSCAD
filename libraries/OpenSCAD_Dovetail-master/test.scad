/*  This demo cut a 50x50x10 cube in 2 parts */
use <dovetail.scad>;

/* [Teeth] */

// Teeth count
Teeth_count = 2; // [2:10]

// Teeth height
Teeth_height = 10; // [2:20]

// Teeth clearance
Teeth_clearance = 1; // [1:10]

/* [General] */

// Cube dimension
Cube_dimension = [30, 50, 10];
cut_pos=[15,25,5];

/**
 * [x, y, z]
 * - x : Teeth count
 * - y : Teeth height
 * - z : Teeth Clearance
 */
teeth = [Teeth_count, Teeth_height, Teeth_clearance / 10];

module amazing_design() {
    cube(size=Cube_dimension, center=false);
}

intersection() {
    cube(size=Cube_dimension, center=false);
    cutter(position=cut_pos, dimension=Cube_dimension, teeths=teeth, male=true);
}

translate([0,50,0]) intersection() {
    cube(size=Cube_dimension, center=false);
    cutter(position=cut_pos, dimension=Cube_dimension, teeths=teeth, male=false);
}
