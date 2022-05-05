/* 
This script is useful for testing sizes for metric screw holes. In general, a diameter of 0.2mm less than the  nominal diameter of the screw allows a standard screw to self-tap into a PLA print, e.g. print a 2.8mm hole for an M3 screw.
 */
// Global resolution
$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

// Widgth and height of cube
$cubelen = 5.0;
// Diameter of bore hole
$diameter = 2.8;
// Height of the whole cube
$height = 10.0;

module box() {
    cube([$cubelen,$cubelen,$height]);
}
module hole() {
    translate([$cubelen/2, $cubelen/2, ($height/2)+0.1])
    cylinder(h=$height*0.7, r=$diameter/2, center=false);
}

difference() {
    box();
    hole(); 
}
