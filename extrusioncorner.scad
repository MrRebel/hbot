module corner(){
    difference(){
        minkowski(){
            union(){
                cube([20.2,20.2,74]);
                cube([20.2,74,20.2]);
                cube([74,20.2,20.2]);
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
    }
    cube(20.2);
}
corner();