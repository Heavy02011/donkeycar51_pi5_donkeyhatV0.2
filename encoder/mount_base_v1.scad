// filename: mount_base_v1.scad
// model: GPT-4
// prompt: Generate an OpenSCAD file that generates a base where this part can be mounted with two screws. Make all inputs parameters. Make the base height and base tilt an input as well.

// Parameters for the mount base
base_length = 40;          // Length of the base
base_width = 30;           // Width of the base
base_height = 5;           // Height of the base
mount_hole_diameter = 3.2; // Diameter of the mount holes
hole_distance_x = 26.8;    // Distance between the holes in X direction
hole_distance_y = 15.0;    // Distance between the holes in Y direction
base_tilt = 0;             // Tilt angle of the base

module mount_base(length, width, height, hole_diam, dist_x, dist_y, tilt) {
    // Apply tilt to the base
    rotate([tilt, 0, 0]) {
        // Create the base
        cube([length, width, height], center = true);
        
        // Create holes for mounting screws
        translate([-dist_x/2, -dist_y/2, height/2])
            cylinder(h = height + 2, d = hole_diam, center = true);
        translate([dist_x/2, -dist_y/2, height/2])
            cylinder(h = height + 2, d = hole_diam, center = true);
    }
}

// Base generation
mount_base(base_length, base_width, base_height, mount_hole_diameter, hole_distance_x, hole_distance_y, base_tilt);
