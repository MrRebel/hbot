$fn=50;
use<xcarriage.scad>;
module clip(){
	include <clip.scad>;
}
module main(){
difference(){
	union(){
		translate([0,0,-1.5]){
			cube([71,70,13],true);
		}
		translate([25,-20,10]){
			cube([21,30,10 ],true);
		}
		translate([25,20,10]){
			cube([21,30,10],true);
		}
		translate([-25,0,10]){
			cube([21,30,10],true);
		}
		translate([10,0,12.5]){
			rotate([0,0,90]){
				clip();
			}
			translate([-.25,0,-9]){
				cube([5.51,29.01,10.01],true);
			}
		}
	}
	translate([25,-20,12.5]){
		bearing();
	}
	translate([25,20,12.5]){
		bearing();
	}
	translate([-25,0,12.5]){
		bearing();
	}
	translate([0,-20,-22.75]){
		e3dlite();
	}
}
}
difference(){ 
	union(){
		main();
	}
	translate([-10.5,-45,0]){
		cube(50,true);
	}
	translate([-10.5,45,0]){
		cube(50,true);
	}
	translate([-10,-20,-1.5]){
		rotate([90,0,0]){
			cylinder(20,1.5,1.5,true);
		}
	}
	translate([10,-20,-1.5]){
		rotate([90,0,0]){
			cylinder(20,1.5,1.5,true);
		}
	}
	//translate([0,-50,-22.75]){
//		rotate([-90,0,0]){
//			linear_extrude(10,true,30,3){
//				projection(){
//					rotate([90,0,0]){
//						e3dlite();
//					}
//				}
//			}
//		}
//	}
}