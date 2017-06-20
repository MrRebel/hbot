$fn = 50;
module base(){
    difference(){
        cube([300, 300, 30], center = true);
        translate([0, 0, 17]){
            stepperbase();
        }
    }
    
}


module stepperbase(){
    cube([42.3, 42.3, 34], center =true);
    
}

module shaft(){
    difference(){
        cylinder (40, 5, 5, center = true);    
        translate([7.5, 0, 0]){
            cube([10, 10, 41], center = true);
        }
 
        }
    
}

module steppercap(){
    difference(){
        union(){
            translate([0, 0,25.5]){
                cube([45, 45, 18], center = true);
            }
           translate([0, 0, 17]){
                cube([60, 60, 2], center = true);
           }
        }
        translate([0, 0, 17]){
            #stepperbase();
        }


         for(i = [0 : 3]){
             rotate([0, 0, 90*i]){
                 translate([15.5, 15.5, 30]){
                    #cylinder(10, 2, 2, center = true);
                } 
             }
         }
         for(i = [0 : 3]){
             rotate([0, 0, 90*i]){
                 translate([26, 26, 18]){
                    #cylinder(10, 2, 2, center = true);
                } 
             }       
         }
         translate([0, 0, 30]){
            cylinder(10, 10, 10, center = true);    
         }
         
    }

}

steppercap();
