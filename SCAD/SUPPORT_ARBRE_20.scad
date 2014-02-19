r_tige=10.15;
r_cote=8;
r_m3=2.5;
r_ecrou_m3=4.2;
ecart=20;
hauteur=15;

module support_axe_y(){
	difference(){
		hull(){
			cylinder(h=hauteur, r=r_tige+5, $fn=100);
			translate([ecart,0,0]){cylinder(h=hauteur, r=r_cote, $fn=100);}
			translate([-ecart,0,0]){cylinder(h=hauteur, r=r_cote, $fn=100);}
		}
		translate([0,0,-5]){cylinder(h=hauteur+10, r=r_tige, $fn=100);}
		translate([ecart,0,-5]){cylinder(h=hauteur+10, r=r_m3, $fn=100);}
		translate([-ecart,0,-5]){cylinder(h=hauteur+10, r=r_m3, $fn=100);}

		translate([ecart,0,hauteur-5]){rotate([0,0,30])cylinder(h=hauteur, r=r_ecrou_m3, $fn=6);}
		translate([-ecart,0,hauteur-5]){rotate([0,0,30])cylinder(h=hauteur, r=r_ecrou_m3, $fn=6);}
	}

}

support_axe_y();