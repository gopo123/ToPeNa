r_m3=1.5;
r_tete_m3=3;

module endstop_x(){
	difference(){
		cube([80,35,13]);

		//extrusion générale
		translate([-5,-5,-5]){cube([50,30,25]);}
		translate([-5,25,-5]){cube([100,30,13]);}

		//trous pour vis de réglage
		translate([40,7,8]){rotate([0,90,0])cylinder(h = 50, r=r_m3, $fn=50);}


	//trous de vissage
		translate([9,30,11]){cylinder(h = 2, r1 = r_m3, r2=r_tete_m3, $fn=50);}
		translate([9,30,-5]){cylinder(h = 30, r = r_m3, $fn=50);}

		translate([47,30,11]){cylinder(h = 2, r1 = r_m3, r2=r_tete_m3, $fn=50);}
		translate([47,30,-5]){cylinder(h = 30, r = r_m3, $fn=50);}

		//extrusion pour alléger la pièce
		translate([90,50,-5]){cylinder(h = 50, r=40, $fn=200);}
		

	}
}

rotate([180,0,0])endstop_x();

//endstop_x();