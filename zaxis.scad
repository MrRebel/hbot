use <xcarriage.scad>
module buildplate(){
  cube([460.375, 460.375, 10], center = true);
}
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

module insetNut(){

}
module main(){
  difference(){
    union(){
      difference(){
        translate([460.375/2 +5, 150, 0]) {
          cube([60, 50, 25], center = true);
        }
        buildplate();
      }
      difference(){
        translate([-(460.375/2+5), 150, 0]) {
          cube([60, 50, 25], center = true);
        }
        buildplate();
      }

      difference(){
        translate([0, -460.375/2-5, 0]) {
          cube([50, 60, 25], center = true);
        }
        buildplate();
      }
      difference(){
        translate([460.375/2+5, -150, 0]) {
          cube([60, 50, 25], center = true);
        }
        buildplate();
      }
      difference(){
        translate([-(460.375/2+5), -150, 0]) {
          cube([60, 50, 25], center = true);
        }
        buildplate();
      }
    }
    union(){
      translate([(460.375/2 + 15), (-150), 0]) {
        rotate([90, 0, 0]) {
          insetNut();
        }
      }
      translate([(460.375/2 + 32), (150), 0]) {
        rotate([90, 0, 0]) {
          #bearing();
        }
      }
      translate([-(460.375/2 + 15), (-150), 0]) {
        rotate([90, 0, 0]) {
          insetNut();
        }
      }
      translate([-(460.375/2 + 32), (150), 0]) {
        rotate([90, 0, 0]) {
          #bearing();
        }
      }
      translate([0, (-(460.375/2 + 32)), 0]) {
        rotate([90, 0, 0]) {
          #bearing();
        }
      }
    }
  }
}
buildplate();
main();
