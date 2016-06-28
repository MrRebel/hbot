use <xend.scad>
use<xcarriage.scad>
use<yend.scad>
use<alminumextrustion.scad>
use<extrusioncorner.scad>
$fn = 50;

module rod(){
	rotate([90,0,0]){
		cylinder(24.3,7.65,7.65,true);
		cylinder(500,5,5,true);
		difference(){
			cylinder(4,10,10,true);
			cylinder(4.5,8.5,8.5,true);
		}
	}
}
rotate([0, 90, 0]){

    translate([20, 250, 0]){ 
        1010Profile(500);   
    }
    translate([20, -250, 0]){ 
        1010Profile(500);   
    }
}
rotate([90, 0, 0]){
    translate([270, -20, 0]){ 
        1010Profile(500);   
    }
    translate([-270, -20, 0]){ 
        1010Profile(500);   
    }
}
translate([250, 250, -330]){
    1010Profile(600);
}
translate([-250, 250, -330]){
    1010Profile(600);
}
//translate([250, -250, -330]){
translate([-250, -250, -330]){
    1010Profile(600);
}
rotate([0, 0, 90]){
    xcarriage();
    
    translate([-25, 0, 0]){
        rod();
    }
    translate([25, 0, 0]){
        rod();
    }
}    
translate([250, 0, 0]){
    xend();
    translate([0, 250, -5]){
        rotate([0, 0, 90]){
            yend();
        }
    }
    translate([0, 0, -5]){
        rod();
    }
}
translate([-250, 0, 0]){
    rotate([0, 0, 180]){
        xend();
    }
    translate([0, 250, -5]){
        rotate([0, 0, 90]){
            yend();
        }
    }
    translate([0, 0, -5]){
        rod();
    }
}
