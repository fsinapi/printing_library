
// Global resolution
$fs = 0.8;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

module PSphere(dx=0, dy=0, dz=0) {
    translate([dx, dy, dz])
    sphere(5);
}

module multihull(pts) {
    count = len(pts);
    for(i = [0 : count - 2]) {
        for(j = [i : count - 1]) {
        hull() {
        PSphere(pts[i][0], pts[i][1], pts[i][2]);
        PSphere(pts[j][0], pts[j][1], pts[j][2]);
        }
        }
    }
}

multihull([
    [0,0,0],
    [0,40,0],
    [0,40,70],
    [0,0,25]]);

multihull([
    [0,40,70],
    [50,40,70],
    [0,0,25],
    [50,0,25]]);

multihull([
    [0,-5,0],
    [0,45,0],
    [50,-5,0],
    [50,45,0]
]);