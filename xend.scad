use <xcarriage.scad>
$fn = 50;

module rotarybearing(){
    difference(){
        cylinder(7, d =22, true);
        cylinder(7, d = 8, true);
    }
}
module main(){
    difference(){
        rotate([90, 90, 0]){
            hull(){
                translate([0, 20, -20]){
                    cylinder(40, d = 12, true);
                }
                translate([0, -20, -20]){
                    cylinder(40, d = 12, true);
                }
            }
        }
        translate([15, 0, -5]){
            bearing();
        }
        translate([-15, 0, -5]){
            bearing();
        }
    }
}


main();