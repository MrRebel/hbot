$fn=50;
module extrusion(){
  #cube([200,20,20], center = true);

}
module smoothrod(){
  cylinder(300, d=8, center = true);
}
module 608zzmount(){
  cylinder(8,d=22, center = true);
}
module ztop(){
  difference() {
    translate([0, 11, 2.1]) {
      cube([110, 48,24],center = true);
    }
    extrusion();
    translate([45, 0, 10]) {
      cylinder(10,d=5, center = true);
    }
    translate([-45, 0, 10]) {
      cylinder(10,d=5, center = true);
    }
    translate([45, -10, 0]) {
      rotate([90, 0, 00]) {
        cylinder(10,d=5, center = true);
      }
    }
    translate([-45, -10, 0]) {
      rotate([90, 0, 00]) {
        cylinder(10,d=5, center = true);
      }
    }
    translate([45, 22.5, -150]) {
      #smoothrod();
    }
    translate([-45, 22.5, -150]) {
      #smoothrod();
    }
    translate([0, 22.5, -6]) {
      #608zzmount();
    }
  }



}
ztop();
