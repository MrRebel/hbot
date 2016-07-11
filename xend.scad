use <xcarriage.scad>
$fn = 50;
module xrod(){
	rotate([90,0,0]){
		 cylinder(500, d = 8.2,true);
	}    
}
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

//          rotate([0, 0, 90]){
//              translate([0, 250, 0]){
//                  translate([25, 5, 0]){
//                      bearing();
//                  }
//                  translate([-25, 5, 0]){
//                      bearing();
//                  }
//              }
//          }
          translate([0, 0, -5]){
              bearing();
          }
    }
    translate([5, 15, 7.5]){
        bearingmount();
    }
    translate([5, -15, 7.5]){
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
                    translate([0, 380, 0]){
                        translate([25, 5, 0]){
                            xrod();
                        }
                        translate([-25, 5, 0]){
                            xrod();
                        }
                    }
                }
            }

        }
    }

}
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
        translate([0, 8, 5]){
            cube([20, 5, 10], center = true);
        }
        translate([0, -8, 5]){
            cube([20, 5, 10], center = true);
        }
    }
}
module clamp(){
  translate([10, 0, 0]){
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
module xend(){

   difference(){
        union(){
            main();
            clamp();
        }
   
         translate([-30, -25, 10]){
              rotate([90, 90, 0]){
                cube([20, 40, 3], center = true);
              }
         }
          translate([-30, 25, 10]){
              rotate([90, 90, 0]){
                cube([20, 40, 3], center = true);
              }
          }
         translate([-10, -25, 5]){
                cube([1, 20, 25], center = true);
              
         }
          translate([-10, 25, 5]){
                cube([1, 20, 25], center = true);
              
          }
    }
       
}
xend();
