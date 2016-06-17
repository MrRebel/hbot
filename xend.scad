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
          union(){
            hull(){
              rotate([0, 90, 0]){
                translate([0, 25, -20]){
                    cylinder(40, d = 15, true);
                }
              }
              rotate([0, 90, 0]){
                translate([0, -25, -20]){
                    cylinder(40, d = 15, true);
                }
              }
          }

          rodmount();

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
          translate([0, 0, -5]){
              bearing();
          }
    }
    translate([-12, 15, 7.5]){
        bearingmount();
    }
    translate([-12, -15, 7.5]){
        bearingmount();
    }
}

module rodmount(){
    translate([45, 0, 0]){
      difference(){
        translate([-70, 0, 0]){
            hull(){
                rotate([0, 90, 0]){
                  translate([0, 25, -20]){
                      cylinder(30, d = 15, true);
                  }
                }
                rotate([0, 90, 0]){
                  translate([0, -25, -20]){
                      cylinder(30, d = 15, true);
                  }
                }
            }
          }
           union(){
                rotate([0, 0, 90]){
                    translate([0, 300, 0]){
                        translate([25, 5, 0]){
                            bearing();
                        }
                        translate([-25, 5, 0]){
                            bearing();
                        }
                    }
                }
                translate([-70, -41, 0]){
                    cube([40, 30, 2], center = true);
                }
                translate([-70, 41, 0]){
                    cube([40, 30, 2], center = true);
                }
            }

        }
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
module clamp(){
  translate([10, 0, 0]){
      difference(){
          translate([-37, -35, 0]){
              cube([35,9,4], center = true);
          }

          translate([-28, -36, 0]){
              cylinder(10, d = 4, center = true);
          }
          translate([-45, -36, 0]){
              cylinder(10, d = 4, center = true);
          }
      }
      difference(){
          translate([-37, 35, 0]){
              cube([35,9,4], center = true);
          }



         translate([-28, 36, 0]){
              cylinder(10, d = 4, center = true);
          }
          translate([-45, 36, 0]){
              cylinder(10, d = 4, center = true);
          }
      }
  }
}
module xend(){
   difference(){
        union(){
            main();
            clamp();
            
        }
   
          translate([-34, -40, 0]){
              cube([50, 32, 1], center = true);
          }
          translate([-34, 40, 0]){
              cube([50, 32, 1], center = true);
          }

    }
    
}
xend();