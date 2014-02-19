largeur=42;
dec=5.5;
r_608=11;
ep_608=8;
ep=3;
r_m3=2;

module support(){
	difference(){
		union(){
		translate([-largeur/2,-largeur/2,0]){cube([largeur,largeur,ep]);}

		cylinder(h = ep_608, r = r_608+4, $fn=200);

		}

		//trou pour le roulement
		translate([0,0,-5]){cylinder(h = ep_608+10, r = r_608, $fn=200);}

		//trous pour fixation
		translate([-largeur/2+dec,-largeur/2+dec,-5]){cylinder(h = ep_608+10, r = r_m3, $fn=200);}
		translate([-largeur/2+dec,largeur/2-dec,-5]){cylinder(h = ep_608+10, r = r_m3, $fn=200);}
		translate([largeur/2-dec,-largeur/2+dec,-5]){cylinder(h = ep_608+10, r = r_m3, $fn=200);}
		translate([largeur/2-dec,largeur/2-dec,-5]){cylinder(h = ep_608+10, r = r_m3, $fn=200);}
}

}

support();