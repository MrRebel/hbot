use <xend.scad>
use <xcarriage.scad>
module yend(){
    difference(){
        union(){
            cube([75, 75, 10], center = true);
            translate([0, 0, 0]){
                bearingmount();
            }
        }
        rotate([0, 0, 90]){
            translate([0, 250, 0]){
                translate([0, 0]){
                    bearing();
                }
    
            }
        }
    }
}
yend();