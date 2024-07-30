$fn=100;

// base_length
base_length = 38;

// base_width
base_width = 27;

// base_height
base_height = 3;

// support_height
support_height = 10;

// support_angle
support_angle = 60;

// base_angle
//base_angle = 30;

//-----------------------------------------------------------

//---screw_parameters

// mount_hole_diameter
mount_hole_diameter = 3.5;

// mount_hole_outer_diameter
mount_hole_outer_diameter = mount_hole_diameter + 2;

// screw_fac
screw_fac = 1.1; // height of cylinders
screw_offset = 5; // distance from edges

//---sensor_parameters
sensor_screw_hole = 2.2;
sensor_screw_diameter = 2.3;
sensor_screw_depth = 8;
sensor_base_width = 7;
sensor_base_length = 27;
sensor_holes_distance = (24.4 + 18) / 2; 
sensor_pcb_width = 13;

//---modules-------------------------------------------------
module screw_hole(){
    rotate([0, 180, 0]){
        fac = base_height/2 * screw_fac; // height of cylinders
        translate([0,0,-fac]) cylinder(h=fac, r = mount_hole_outer_diameter/2, center =false);
        cylinder(h=fac, r = mount_hole_diameter/2, center =false);
    }
}
module sensor_holes(){
    translate([0,sensor_holes_distance/2,support_height-sensor_screw_depth]) cylinder(h=sensor_screw_depth, r=sensor_screw_diameter/2, center=true);
    translate([0,-sensor_holes_distance/2,support_height-sensor_screw_depth]) cylinder(h=sensor_screw_depth, r=sensor_screw_diameter/2, center=true);
}
module base_plate(){
    difference(){
        cube([base_length, base_width, base_height], center = true);
        translate([base_length/2-screw_offset,base_width/2-screw_offset,0]) screw_hole();
        translate([base_length/2-screw_offset,-base_width/2+screw_offset,0]) screw_hole();
        translate([-base_length/2+screw_offset,-base_width/2+screw_offset,0]) screw_hole();
        translate([-base_length/2+screw_offset,base_width/2-screw_offset,0]) screw_hole();
    }
}    
module sensor_support(){
    difference(){
        cube([sensor_base_width, sensor_base_length, support_height],center=true);
        translate([0,0,support_height/2]) cube([sensor_base_width*screw_fac, sensor_pcb_width, 1.5], center=true); // remove some place for soldered parts on pcb
    }
}

//---construction---------------------------------------------
module assembly(){
    difference(){
        //---sensor-support
        translate([0,0,2]) rotate([0, support_angle, 0]){ 
            difference(){
                sensor_support();
                //sensor_holes();
                sensor_holes();
            }   
        }
        //---ground-plane
        translate([-150,-150,-300]) cube([300,300,300], center=false);
    }
    //---base-plate
    base_plate();
}

difference(){
    difference(){
        assembly();
        translate([-22.5,0,-50]) cube([25,20,100]);
    }
    translate([6,-15,-50]) cube([15,15,100]);
}
