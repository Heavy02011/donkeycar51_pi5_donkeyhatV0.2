$fn=100;

// base_length
base_length = 60;

// base_width
base_width = 50;

// base_height
base_height = 10;

// mount_hole_diameter
mount_hole_diameter = 3;

// base_angle
base_angle = 30;

//-----------------------------------------------------------

// mount_hole_outer_diameter
mount_hole_outer_diameter = mount_hole_diameter + 2;

// screw_fac
screw_fac = 1.1;

//---moddules-------------------------------------------------
module screw_hole(){
    fac = base_height/2 * screw_fac;
    translate([0,0,-fac]) cylinder(h=fac, r = mount_hole_outer_diameter/2, center =false);
    cylinder(h=fac, r = mount_hole_diameter/2, center =false);
}
//---construction---------------------------------------------
//---base-plate
difference(){
    cube([base_length, base_width, base_height], center = true);
    translate([base_length/2-10,base_width/2-10,0]) screw_hole();
    translate([base_length/2-10,-base_width/2+10,0]) screw_hole();
    translate([-base_length/2+10,-base_width/2+10,0]) screw_hole();
    translate([-base_length/2+10,base_width/2-10,0]) screw_hole();
}
//---base-support
*screw_hole();