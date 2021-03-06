use <xend.scad>
use <xcarriage.scad>
use <utl.NEMA.scad>
$fn = 50;
module screwhole(){
    cylinder(15, d = 10.2, center = true);
	cylinder(30, d = 4.2, center = true);
}
module yend(mm){
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
			if(mm == 1){
            		mm();
			}
			
            //cube([25, 75, 10], center = true);

        }
		if(mm == 1){
			translate([50,0,0]){
				translate([15.5,15.5,0]){
					cylinder(30,1.5,1.5,true);
				}
				translate([-15.5,15.5,0]){
					cylinder(30,1.5,1.5,true);
				}
				translate([15.5,-15.5,0]){
					cylinder(30,1.5,1.5,true);
				}
				translate([-15.5,-15.5,0]){
					cylinder(30,1.5,1.5,true);
				}
			}
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
            #screwhole();
        }
        translate([0, -30, 5]){
            screwhole();
        }
		if(mm==0){
       	 	translate([25, 0, 2.5]){
	          cylinder(14.51,13.5,13.5,true);
	        }
		}
		if(mm==1){
			translate([25,0,2.5]){
				hull(){
					cylinder(14.51,13.5,13.5,true);
					translate([25,0,0]){
						cylinder(14.51,11,11,true);
					}
				}
			}
		}
        translate([-30,9, 0]) {
            #cylinder(10, d = 4, center = true);
        }
        translate([-30,-9, 0]) {
            #cylinder(10, d = 4, center = true);
        }
        translate([0,-12,0]){
          #cube([50,3,7],true);
        }
        translate([0,12,0]){
          #cube([50,3,7],true);
        }
    }
    translate([25, 0, -4.75]){
        bearingmount();
    }
}
module mm(){
	rotate([90, 0, 90]){
		hull(){
			translate([16, 0, 40]){
				cylinder(60, d = 15, center = true);
			}
			translate([-16, 0, 40]){
				cylinder(60, d = 15, center = true);
			}
		}
	}
}
difference(){
	
	yend(1);
	
	translate([50,0,7.5]){
		rotate([0,180,0]){
			nema17();
		}
	}
}