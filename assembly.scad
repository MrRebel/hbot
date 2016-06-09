use <xend.scad>
use<xcarriage.scad>
use<yend.scad>
use<alminumextrustion.scad>
$fn = 50;

rotate([0, 90, 0]){
    
    translate([20, 250, 0]){ 
        1010Profile(600);   
    }
    translate([20, -250, 0]){ 
        1010Profile(600);   
    }
}
rotate([90, 0, 0]){
    translate([270, -40, 0]){ 
        1010Profile(600);   
    }
    translate([-270, -40, 0]){ 
        1010Profile(600);   
    }
}
translate([250, 250, -330]){
    1010Profile(600);
}
translate([-250, 250, -330]){
    1010Profile(600);
}
translate([250, -250, -330]){
    1010Profile(600);
}
translate([-250, -250, -330]){
    1010Profile(600);
}
rotate([0, 0, 90]){
    xcarriage();
    
    translate([-25, 0, 0]){
        bearing();
    }
    translate([25, 0, 0]){
        bearing();
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
        bearing();
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
        bearing();
    }
}
