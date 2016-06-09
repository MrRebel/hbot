use <xcarriage.scad>
$fn = 50;

module rotarybearing(){
    difference(){
        cylinder(7, d =22, true);
        cylinder(7, d = 8, true);
    }
}
module xend(){
    difference(){
        
        cube([40, 75, 20], center = true); 

        translate([0, 0, -10]){
            bearing();
        }
        rotate([0, 0, 90]){
            translate([0, 250, 0]){
                translate([25, 5, 0]){
                    bearing();
                }
                translate([-25, 5, 0]){
                    bearing();
                }
            }
        }
    }
    translate([0, 25, 10]){
        bearingmount();
    }
    translate([0, -25, 10]){
        bearingmount();
    }
}

module bearingmount(){
    difference(){
        union(){
            difference(){
                cylinder(10, d =24, true);
                translate([0, 0, 5]){
                    cube([14, 25, 8], true);
                }
            }
            translate([0, 0, 10]){
                cylinder(7, d =8, true);
            }  
            translate([0, 0, 10]){
                cylinder(1, d =12, true);
            }
        }
        cylinder(30, d = 4, true);
    }
}

xend();