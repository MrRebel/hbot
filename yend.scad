use <xend.scad>
use <xcarriage.scad>
$fn = 50;
module screwhole(){
    cylinder(15, d = 10, center = true);
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
            }
            //cube([25, 75, 10], center = true);
            translate([0, 0, 7.5]){
                bearingmount();
            }

              rotate([90, 90, 90]){
                  translate([0, 0, -10]){
                      cylinder(60, d = 13, center = true);
                  }
              }
              translate([-31, 8, 0]){
                cube([19, 8, 5], center = true);
              }


        }
        translate([-31, 12.5, 0]){
          cube([20, 25, 2], center = true);
        }
        rotate([0, 0, 90]){
            translate([0, 240, 0]){
                    bearing();
            }
        }
        translate([0, 30, 0]){
            screwhole();
        }
        translate([0, -30, 0]){
            screwhole();
        }

        translate([-30,9, 0]) {
            cylinder(10, d = 4, center = true);
        }
        translate([-30,-9, 0]) {
            cylinder(10, d = 4, center = true);
        }


    }
}
yend();
