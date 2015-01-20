//$fn=360;
$fn=30;
module base(){
  difference(){
    // Blocks
    union(){
      // Base
      translate([0,0,5])cube([78,40,10]);
      // Motor mount
      translate([17.5,32,15]) cube([45,8,45]);
      // Filament guide
      translate([34,4,15]) cube([16,28,45]);
      translate([40,18,37.5]) rotate([90,0,0]) cylinder(r=15, h=28, center=true);
    }

    // Holes
    union(){
      // Carriage set screws
      translate([15,0,7.5+5/2]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      translate([65,0,7.5+5/2]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      // Filament
      translate([46.5,20,40]) cylinder(r=2, h=100, center=true);
      // Nozzle set bolts
      translate([21.5,20,7.5]) cylinder(r=4.5/2, h=50, center=true);
      translate([71.5,20,7.5]) cylinder(r=4.5/2, h=50, center=true);
      // Nozzle nut sockets
      translate([21.5,20,16]) cylinder(r=7.5/2, h=10, center=true,$fn=6);
      translate([71.5,20,16]) cylinder(r=7.5/2, h=10, center=true,$fn=6);
      // Motor bolts
      translate([24.5,40,22]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      translate([55.5,40,22]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      translate([24.5,40,53]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      translate([55.5,40,53]) rotate([90,0,0]) cylinder(r=2, h=100, center=true);
      // Motor shaft
      translate([40,40,37.5]) rotate([90,0,0]) cylinder(r=12, h=100, center=true);
      // Idler input hole
      translate([40,0,26]) cube([50,32,23]);
      // Idler groove
      translate([50,4,8]) cube([7,30,7]);
      // Width excess
      cube([5,45,20]);
      // Tighten bolt
      translate([50,13,55]) rotate([0,90,0]) cylinder(r=4.5/2, h=50, center=true);
      // Tighten bolt nut hole
      translate([33,13,55]) rotate([0,90,0]) cylinder(r=7.5/2, h=10, center=true,$fn=6);
    }
  }
}

module idler(){
  // Idler
  difference(){
    union(){
      // Footer
      translate([51,5,8]) cube([5,26,52]);
      // Bearing mount
      translate([56,5,17]) cube([10,26,43]);
    }
    union(){
      // Bearing socket
      translate([50,15.5,25]) cube([40,9,25]);
      // Bearing axis
      translate([56,40,37.5]) rotate([90,0,0]) cylinder(r=7.6/2, h=100, center=true);
      translate([48.4,2,33.7]) cube([7.6,30,7.6]);
      // Tighten bolt
      translate([50,13,55]) rotate([0,90,0]) cylinder(r=2.5, h=1000, center=true);
    }
  }
}

base();
//idler();
