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
		}
		translate([-10.5,-45,0]){
			cube(50,true);
		}
		translate([-10.5,45,0]){
			cube(50,true);
		}
	}
}


module second(){
	difference(){
		minkowski(){
			main();
			cylinder(.01,1,1);
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
	}
	translate([10,0,12.5]){
		rotate([0,0,90]){
			clip();
		}
		translate([-.25,0,-9]){
			cube([5.51,29.01,10.01],true);
		}
	}
	translate([0,-21,-1.5]){
		cylinder(13,12.5,12.5,true);
	}
}

module final(){
	difference(){
		second();
		translate([0,-21,-22.75]){
			e3dlite();
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
		translate([-10,-34,-1.5]){
			rotate([90,0,0]){
				cylinder(20,2.5,2.5,true);
			}
		}
		translate([10,-34,-1.5]){
			rotate([90,0,0]){
				cylinder(20,2.5,2.5,true);
			}
		}
	}
}

difference(){
	final();
	translate([-11.5,-46,0]){
		cube(50,true);
	}
}
