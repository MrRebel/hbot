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
            translate([-37, -35, 0]){
                rotate([0, 0, 0]){
                    cube([35,9,7], center = true);
                }
            }
          rotate([0, 0, 0]){
              translate([-28, -35, 0]){
                  #cylinder(10, d = 4, center = true);
              }
          }
          rotate([0, 0, 0]){
              translate([-45, -35, 0]){
                  #cylinder(10, d = 4, center = true);
              }
        }
      }
      difference(){
          translate([-37, 35, 0]){
              rotate([0, 0, 0]){
                cube([35,9,7], center = true);
              }
          }



          rotate([0, 0, 0]){
              translate([-28, 35, -0]){
                  #cylinder(10, d = 4, center = true);
              }
          }
          rotate([0, 0, 0]){
              translate([-45, 35, -0]){
                  #cylinder(10, d = 4, center = true);
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
      bearing();
    }

  }
}
module clampholes(){
  translate([10, 25, 0]){
    rotate([0,90,0]){
       cylinder(500, d = 8.2,true);
    }
  }
  translate([10, -25, 0]){
    rotate([0,90,0]){
       cylinder(500, d = 8.2,true);
    }
  }
  translate([30, -35, 0]){
       rotate([0, 0, 90]){
         #cube([20, 40, 2], center = true);
       }
  }
   translate([30, 35, 0]){
       rotate([0, 0, 90]){
         #cube([20, 40, 2], center = true);
       }
   }
  translate([10, -25, 5]){
         cube([1, 20, 25], center = true);

  }
   translate([10, 25, 5]){
         cube([1, 20, 25], center = true);

   }
}
module xend(){
  difference(){
    union(){
      main();
      clamp();
    }
    clampholes();
    translate([-4.5, 20, 2.75]){
      cylinder(14.51,13.5,13.5,true);
    }
    translate([-4.5, -20, 2.75]){
      cylinder(14.51,13.5,13.5,true);
    }
    translate([-16.5,-35,0]){
      cube([3,30,7],true);
    }
    translate([-16.5,35,0]){
      cube([3,30,7],true);
    }
    translate([30.5,-8,0]){
      cube([70,3,7],true);
    }
    translate([30.5,8,0]){
      cube([70,3,7],true);
    }
  }
  translate([-5, -20, -4.5]){
    bearingmount();
  }
  translate([-5, 20, -4.5]){
    bearingmount();
  }
}
xend();