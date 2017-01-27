$fn=50;
use<xcarriage.scad>;
module clip(){
	include <clip.scad>;
}
module main(){
	difference(){
		minkowski(){
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
			cylinder(.01,3);
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
		translate([-10.5,-45,0]){
			cube(50,true);
		}
		translate([-10.5,45,0]){
			cube(50,true);
		}
	}
}

difference(){
	union(){
		main();
		translate([0,-20,-1.5]){
			cylinder(13,10,10,true);
		}
	}
}