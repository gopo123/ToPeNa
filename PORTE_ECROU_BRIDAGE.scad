r_ecrou_m10=10;
r_m10=5.5;
h_ecrou_m10=9;
r_m4=2.2;
r_ens=17;

module porte_ecrou(){
	difference(){
		hull(){
			cylinder(r=r_ens, h=h_ecrou_m10+5, $fn=200);
			translate([-r_ens,0,0]){cylinder(r=8, h=h_ecrou_m10+5, $fn=200);}
			translate([r_ens,0,0]){cylinder(r=8, h=h_ecrou_m10+5, $fn=200);}
		}
		translate([0,0,-5]){cylinder(r=r_ecrou_m10, h=h_ecrou_m10+5, $fn=6);}
		translate([0,0,-5]){cylinder(r=r_m10+2, h=h_ecrou_m10+15+5, $fn=100);}

		translate([-r_ens-8+5,0,-5]){cylinder(r=r_m4, h=h_ecrou_m10+20, $fn=100);}
		translate([r_ens+8-5,0,-5]){cylinder(r=r_m4, h=h_ecrou_m10+20, $fn=100);}
	}

}

porte_ecrou();