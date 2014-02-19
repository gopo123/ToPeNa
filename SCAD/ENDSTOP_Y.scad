r_m3=1.5;
r_tete_m3=3;

module endstop_y(){
	difference(){
		cube([40,20,16]);

		//extrusion générale
		translate([-5,-5,5]){cube([25,30,16]);}

		//trous pour vis de réglage
		translate([20+12,-5,13]){rotate([-90,0,0])cylinder(h = 30, r=r_m3, $fn=50);}


	//trous de vissage
		translate([5,5,0]){cylinder(h = 2, r1 = r_tete_m3, r2=r_m3, $fn=50);}
		translate([5,5,-5]){cylinder(h = 15, r = r_m3, $fn=50);}

		translate([15,5,0]){cylinder(h = 2, r1 = r_tete_m3, r2=r_m3, $fn=50);}
		translate([15,5,-5]){cylinder(h = 15, r = r_m3, $fn=50);}

		translate([5,15,0]){cylinder(h = 2, r1 = r_tete_m3, r2=r_m3, $fn=50);}
		translate([5,15,-5]){cylinder(h = 15, r = r_m3, $fn=50);}

		translate([15,15,0]){cylinder(h = 2, r1 = r_tete_m3, r2=r_m3, $fn=50);}
		translate([15,15,-5]){cylinder(h = 15, r = r_m3, $fn=50);}
		

	}
}

endstop_y();