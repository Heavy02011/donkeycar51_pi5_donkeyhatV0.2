// top
difference() {
difference() {
import("/Users/rainerbareiss/Library/Mobile Documents/com~apple~CloudDocs/_heute/Top_and_bottom_donkey.STL");
translate([0,-150,0]) cube([200,300,300]);
}



// Parameters
text_height = 2;  // Adjust the height of the text extrusion
text_size = 10;   // Adjust the font size of the text
text_depth = 1;   // Adjust the depth (thickness) of the text extrusion
text_position = [-10, 50, -1]; // Adjust the position where you want the text

// Add the text "Parking Lot Nerds" to the model
rotate([180,0,-90]) translate(text_position)
    linear_extrude(height = text_height)
        text("Parking Lot Nerds", size = text_size, halign = "center", valign = "center", font = "Calibri:style=Bold");
}


// base
*difference() {
import("/Users/rainerbareiss/Library/Mobile Documents/com~apple~CloudDocs/_heute/Top_and_bottom_donkey.STL");
translate([-200,-150,-10]) cube([200,300,300]);
}