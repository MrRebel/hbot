$fn = 50;
module bearing(){
	rotate([90,0,0]){
		cylinder(24.3,7.65,7.65,true);
		cylinder(500,5,5,true);
		difference(){
			cylinder(4,10,10,true);
			cylinder(4.5,8.5,8.5,true);
		}
	}
}
module e3dlite(){
    translate([0,0,24 + 3.7/2]){
        cylinder(3.9,8,8,true);
    }
    translate([0,0,21]){
        cylinder(6.1,6,6,true);
    }
    translate([0,0,16.5]){
        cylinder(3.2,8,8,true);
    }
    cylinder(30,11.5,11.5,true);
}
module test(a,l){
	difference() {
		cylinder(r=a, h=10, center=true);
		cylinder(r=a-.1, h=10, center=true);
		translate([0, -l, 0]) {
			cube(2*a, center=true);
		}
	}
}
module minktest(a,l,w) {
	minkowski(){
		test(a,l);
		cylinder(.1,w,w);
	}
}
module catch(){
    cylinder(8,.75,.75,true,$fn=4);
	translate([2,0,0]){
		cylinder(8,.75,.75,true,$fn=4);
	}
	translate([-2,0,0]){
		cylinder(8,.75,.75,true,$fn=4);
	}
	translate([4,0,0]){
		cylinder(8,.75,.75,true,$fn=4);
	}
	translate([-4,0,0]){
		cylinder(8,.75,.75,true,$fn=4);
	}
	
}
module thing(){
	translate([0, -10, 5]) {
			cylinder(15,11.5,15,true);
	}
	translate([0,-10,0]){
		rotate([0,0,0]){
			translate([12,12,10]){
				cylinder(20,1.5,1.5,true);
			}
			translate([12,-12,10]){
				cylinder(20,1.5,1.5,true);
			}
			translate([-12,12,10]){
				cylinder(20,1.5,1.5,true);
			}
			translate([-12,-12,10]){
				cylinder(20,1.5,1.5,true);
			}
		}
	}
	difference(){
		hull(){
			translate([0,-10,0]){
				cylinder(5,11.5,11.5,true);
			}
			translate([0,15,-4]){
				cylinder(20,11.5,11.5,true);
			}
		}
	}
	hull(){
			translate([0,15,-4]){
				cylinder(20,11.5,11.5,true);
			}
			translate([0,25,-7.5]){
				cylinder(30,11.5,11.5,true);
			}
		}
}

module xcarriage(){
	difference(){
        union(){
            minkowski(){
                cube([57,52,22],true);
                cylinder(8,5,5,true);
                sphere(4);
            }
		
            minkowski(){
                translate([0,20,0]){
                    cylinder(48,11,11,true);
                }
                sphere(4);
            }
        }
		translate([0,0,-21]){
			cube([76,110,20],true);
		}
        translate([0,-35,29]){
			cube([76,110,20],true);
		}
		translate([10,44.5,20]){
			cylinder(20,1.5,1.5,true);
		}
		translate([-10,44.5,20]){
			cylinder(20,1.5,1.5,true);
		}
		translate([25,0,-8]){
			bearing();
		}
		translate([-25,20,-8]){
			bearing();
		}
		translate([-25,-20,-8]){
			bearing();
		}
        translate([0,20,4]){
            e3dlite();
        }
		translate([0,32,0]){
			rotate([90,0,0]) {
				minktest(15,2,1);
			}
		}
		translate([0,32,-5]){
			rotate([90,0,0]) {
				minktest(15,2,1);
			}
		}
		translate([0,32,-11]){
			rotate([90,0,0]) {
				minktest(15,2,1);
			}
		}
		translate([0,32,-16]){
			rotate([90,0,0]) {
				minktest(15,2,1);
			}
		}
		translate([0,32,-21]){
			rotate([90,0,0]) {
				minktest(15,2,1);
			}
		}
		translate([12.5,13.5-15,11.5]){
			rotate([0,0,30])
			thing();
		}
		translate([-5,-20,12]){
			cylinder(40,10,10,true);
		}
		translate([-5,-20,0]){
			cylinder(40,6,6,true);
		}
        translate([-16,0,5]){
            cube([4,100,8],true);
        }
        translate([10,-35,-1]){
            rotate([90,0,0]){
                cylinder(20,1.5,1.5,true);
            }
        }
        translate([10,-35,11]){
            rotate([90,0,0]){
                #cylinder(20,1.5,1.5,true);
            }
        }
		translate([22,35,5]){
			catch();
		}
		translate([22,35,-1]){
            rotate([90,0,0]){
                cylinder(20,1.5,1.5,true);
            }
        }
        translate([22,35,11]){
            rotate([90,0,0]){
                #cylinder(20,1.5,1.5,true);
            }
        }
	}
}
xcarriage();

module top(){
	difference(){
		xcarriage();
		translate([0,0,-3.5]){
			cube([110,110,40],true);
		}
	}
}
module bottom(){
	intersection(){
		xcarriage();
		translate([0,0,-3.5]){
			cube([110,110,40],true);
		}
	}
}
//top();
//bottom();	
//minktest(15,15,1);
//thing();
//catch();