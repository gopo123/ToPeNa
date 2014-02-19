r_m3=1.5;
r_tete_m3=3;
ep1=25;
ep2=5;

module endstop_x(){
	difference(){
		cube([80,15,ep1]);

		//extrusion générale
		translate([20,-5,ep2]){cube([80,30,35]);}

		//trous pour vis de réglage
		translate([-5,7.5,20]){rotate([0,90,0])cylinder(h = 50, r=r_m3, $fn=50);}


	//trous de vissage
		translate([30,7.5,ep2-2]){cylinder(h = 2, r1 = r_m3, r2=r_tete_m3, $fn=50);}
		translate([30,7.5,-5]){cylinder(h = 30, r = r_m3, $fn=50);}

		translate([70,7.5,ep2-2]){cylinder(h = 2, r1 = r_m3, r2=r_tete_m3, $fn=50);}
		translate([70,7.5,-5]){cylinder(h = 30, r = r_m3, $fn=50);}

		

	}
}

endstop_x();