use <yend.scad>;
module corner(isLeft){
    difference(){
        minkowski(){
            union(){
                cube([20.2,20.2,115]);
                cube([20.2,115,20.2]);
                cube([115,20.2,20.2]);
            }
            sphere(5);
        }
        union(){
            cube([20.2,20.2,80]);
            cube([20.2,80,20.2]);
            cube([80,20.2,20.2]);
        }
        translate([20.2,20.2,0]){
            cube([30.2,30.2,20.2]);	
        }
        translate([0,20.2,20.2]){
            cube([20.2,30.2,30.2]);
        }
        translate([20.2,0,20.2]){
            cube([30.2,20.2,30.2]);
        }
        if(isLeft){
            translate([87.5, 10.1, 0]){
                #cylinder(10, d = 4.2, center = true);
            }
            translate([27.5, 10.1, 0]){
                #cylinder(10, d = 4.2, center = true);
            }  
        } else{
            translate([10.1, 87.5, 0]){
                #cylinder(10, d = 4.2, center = true);
            }
            translate([10.1, 27.5, 0]){
                #cylinder(10, d = 4.2, center = true);
            }  
            
        }

    }
    cube(20.2);
}

corner(false);