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
        
        cube([25, 75, 10], center = true);

        translate([0, 0, -5]){
            bearing();
        }
        rotate([0, 0, 90]){
            translate([0, 250, 0]){
                translate([25, 0]){
                    bearing();
                }
                translate([-25, 0, 0]){
                    bearing();
                }
            }
        }
    }
    translate([0, 25, 0]){
        bearingmount();
    }
    translate([0, -25, 0]){
        bearingmount();
    }
}

module bearingmount(){
    difference(){
        union(){
            difference(){
                cylinder(15, d =24, true);
                translate([0, 0, 9]){
                    cube([14, 25, 8], true);
                }
            }
            translate([0, 0, 13]){
                cylinder(15, d =8, true);
            }  
            translate([0, 0, 14]){
                cylinder(5, d =12, true);
            }
        }
        cylinder(30, d = 4, true);
    }
}

xend();