use <xend.scad>
use <xcarriage.scad>
$fn = 50;
module screwhole(){
    cylinder(15, d = 10.2, center = true);
	cylinder(30, d = 4.2, center = true);
}
module yend(){
    difference(){
        union(){
            rotate([90, 0, 90]){
              hull(){
                translate([37.5, 0, 0]){
                 cylinder(40, d = 15, center = true);
                }
                translate([-37.5, 0, 0]){
                  cylinder(40, d = 15, center = true);
                }
              }
              hull(){
                translate([16, 0, 10]){
                 cylinder(60, d = 15, center = true);
                }
                translate([-16, 0, 10]){
                  cylinder(60, d = 15, center = true);
                }
              }
            }
            //cube([25, 75, 10], center = true);

        }
        translate([-31, 12.5, 0]){
          cube([20, 25, 2], center = true);
        }
        rotate([0, 0, 90]){
            translate([0, 240, 0]){
                    rotate([90,0,0]){
                        cylinder(500,4.1,4.1,true);
                       
                    }
            }
        }
        translate([0, 30, 5]){
            screwhole();
        }
        translate([0, -30, 5]){
            screwhole();
        }
        translate([25, 0, 2.5]){
          cylinder(14.51,13.5,13.5,true);
        }
        translate([-30,9, 0]) {
            cylinder(10, d = 4, center = true);
        }
        translate([-30,-9, 0]) {
            cylinder(10, d = 4, center = true);
        }
        translate([0,-10.5,0]){
          cube([50,3,7],true);
        }
        translate([0,10.5,0]){
          cube([50,3,7],true);
        }
    }
    translate([25, 0, -4.75]){
        bearingmount();
    }
}
yend();