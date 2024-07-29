$fn=100;

// base_length
base_length = 28;

// base_width
base_width = 20;

// base_height
base_height = 3;

// support_height
support_height = 10;

// support_angle
support_angle = -60;

// mount_hole_diameter
mount_hole_diameter = 3;

// base_angle
base_angle = 30;

//-----------------------------------------------------------

// mount_hole_outer_diameter
mount_hole_outer_diameter = mount_hole_diameter + 2;

// screw_fac
screw_fac = 1.1;
screw_offset = 5;

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
    translate([base_length/2-screw_offset,base_width/2-screw_offset,0]) screw_hole();
    translate([base_length/2-screw_offset,-base_width/2+screw_offset,0]) screw_hole();
    translate([-base_length/2+screw_offset,-base_width/2+screw_offset,0]) screw_hole();
    translate([-base_length/2+screw_offset,base_width/2-screw_offset,0]) screw_hole();
}
//---base-support
translate([0,0,]) rotate([0, support_angle, 0]) cube([support_height, base_width, base_height],center=false);

*screw_hole();