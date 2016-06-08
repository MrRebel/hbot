use <xcarriage.scad>
$fn = 50;

module rotarybearing(){
    difference(){
        cylinder(7, d =22, true);
        cylinder(7, d = 8, true);
    }
}
module main(){
    //rotarybearing();
    rotate([]){
        hull(){
            translate([0, 20, 0]){
                cylinder(40, d = 10, true);
            }
            translate([0, -20, 0]){
                cylinder(40, d = 10, true);
            }
        }
        
    }
}


main();