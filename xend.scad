use <xcarriage.scad>
$fn = 50;
module bearingmount(){

    difference(){
        union(){

            translate([0, 0, 0]){
                cylinder(7, d =8, true);
            }
            translate([0, 0, 0]){
                cylinder(1, d =12, true);
            }
        }
        cylinder(30, d = 4, true);

    }
}
module clamp(){
  translate([65, 0, 0]){
      difference(){
            translate([-37, -25, 10]){
                rotate([90, 0, 0]){
                    cube([35,9,7], center = true);
                }
            }
          rotate([90, 0, 0]){
              translate([-28, 10, 25]){
                  cylinder(10, d = 4, center = true);
              }
          }
          rotate([90, 0, 0]){
              translate([-45, 10, 25]){
                  cylinder(10, d = 4, center = true);
              }
        }
      }
      difference(){
          translate([-37, 25, 10]){
              rotate([90, 0, 0]){
                cube([35,9,7], center = true);
              }
          }



          rotate([90, 0, 0]){
              translate([-28, 10, -25]){
                  cylinder(10, d = 4, center = true);
              }
          }
          rotate([90, 0, 0]){
              translate([-45, 10, -25]){
                  cylinder(10, d = 4, center = true);
              }
        }
      }
  }
}
module main(){
  difference(){
    union(){
      hull(){
        rotate([0, 90, 0]){
          translate([0, 25, -20]){
              cylinder(65.5, d = 15, true);
          }
        }
        rotate([0, 90, 0]){
          translate([0, -25, -20]){
              cylinder(65.5, d = 15, true);
          }
        }
      }
      hull(){
        rotate([0, 90, 0]){
          translate([0, 25, -30]){
              cylinder(40, d = 20, true);
          }
        }
        rotate([0, 90, 0]){
          translate([0, -25, -30]){
              cylinder(40, d = 20, true);
          }
        }
      }
    }
    translate([-28.5, 0, 0]){
      #bearing();
    }

  }
}
module clampholes(){
  translate([10, 25, 0]){
    rotate([0,90,0]){
       #cylinder(500, d = 8.2,true);
    }
  }
  translate([10, -25, 0]){
    rotate([0,90,0]){
       #cylinder(500, d = 8.2,true);
    }
  }
  translate([30, -25, 10]){
       rotate([90, 90, 0]){
         cube([20, 40, 3], center = true);
       }
  }
   translate([30, 25, 10]){
       rotate([90, 90, 0]){
         #cube([20, 40, 3], center = true);
       }
   }
  translate([10, -25, 5]){
         #cube([1, 20, 25], center = true);

  }
   translate([10, 25, 5]){
         #cube([1, 20, 25], center = true);

   }
}
module xend(){
  difference(){
    union(){
      main();
      clamp();
    }
    clampholes();
    translate([-5, 15, 2.75]){
      cylinder(14.51,12,12,true);
    }
    translate([-5, -15, 2.75]){
      cylinder(14.51,12,12,true);
    }
    translate([-15.5,-30,0]){
      cube([3,30,7],true);
    }
    translate([-15.5,30,0]){
      cube([3,30,7],true);
    }
    translate([30,-4.5,0]){
      cube([70,3,7],true);
    }
    translate([30,4.5,0]){
      cube([70,3,7],true);
    }
  }
  translate([-5, -15, -4.5]){
    bearingmount();
  }
  translate([-5, 15, -4.5]){
    bearingmount();
  }
}
xend();