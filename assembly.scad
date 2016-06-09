use <xend.scad>
use<xcarriage.scad>
$fn = 50;

rotate([0, 0, 90]){
    main();
    translate([-25, 0, 0]){
        bearing();
    }
    translate([25, 0, 0]){
        bearing();
    }
}    
translate([250, 0, 0]){
    xend();
    translate([0, 0, -5]){
        bearing();
    }
}
translate([-250, 0, 0]){
    rotate([0, 0, 180]){
        xend();
    }
    translate([0, 0, -5]){
        bearing();
    }
}
