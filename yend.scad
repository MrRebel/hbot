use <xend.scad>
use <xcarriage.scad>
module screwhole(){
    cylinder(10, d = 10, center = true);
}
module yend(){
    difference(){
        union(){
            cube([25, 75, 10], center = true);
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
        translate([0, 30, 0]){
            screwhole();
        }
        translate([0, -30, 0]){
            screwhole();
        }        

    }
}
yend();
