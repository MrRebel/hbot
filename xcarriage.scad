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
module xcarriage(){
	difference(){
		minkowski(){
			cube([57,52,8],true);
			cylinder(8,5,5,true);
			sphere(4);
		}
		translate([0,0,-18]){
			cube([75,80,20],true);
		}	
		translate([25,0,-8]){
			bearing();
		}
		translate([-25,0,-8]){
			bearing();
		}
	}
}

xcarriage();