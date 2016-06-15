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
module test(a){
	difference() {
		cylinder(r=a, h=10, center=true);
		cylinder(r=a-.1, h=10, center=true);
		translate([0, -2, 0]) {
			cube(2*a, center=true);
		}
	}
}
module minktest(a,w) {
	minkowski(){
		test(a);
		cylinder(.1,w,w);
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
                translate([0,35,0]){
                    cylinder(40,12,12,true);
                }
                sphere(4);
            }
        }
		translate([0,0,-25]){
			cube([76,110,20],true);
		}
        translate([0,0,25]){
			cube([76,110,20],true);
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
        translate([0,35,0]){
            e3dlite();
        }
		translate([0,47,0]){
			rotate([90,0,0]) {
				#minktest(12,1);
			}
		}
		translate([0,47,-4]){
			rotate([90,0,0]) {
				#minktest(11,1);
			}
		}
		translate([0,47,-8]){
			rotate([90,0,0]) {
				#minktest(10,1);
			}
		}
		translate([0,47,-12]){
			rotate([90,0,0]) {
				#minktest(9,1);
			}
		}
		translate([0,47,-16]){
			rotate([90,0,0]) {
				#minktest(8,1);
			}
		}
	}
}
xcarriage();
//minktest();
