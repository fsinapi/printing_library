/*
Simple test holder for a perfume 
spritzer bottle.

OD should be ~11mm. 
*/

$fs = .2;
$fa = 2;


// Diameter of bottle's hole
hole_d = 12;
thick = 4;

bottom_d = hole_d * 2;
top_d = hole_d + thick;

height = 15;

module base() {
    hull() {
        cylinder(h=0.1, r = bottom_d/2);
        translate([0,0,15])
        cylinder(h=0.1, r=top_d/2);
    }
}

module hole() {
    translate([0,0,5])
    union() {
        cube([5, 50, height]);
        cube([5, 50, height]);
        cylinder(h=height+2,r=hole_d/2);
    }
}

difference() {
    base();
    hole();
}