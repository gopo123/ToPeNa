r_trou=3;
r_kress=21.5;
entraxe_fix_l=60;
entraxe_fix_h=20;
hauteur=20;
largeur=80;
prof=80;


module kress_43mm(){
	difference(){
		cube([largeur, prof, hauteur]);

		//trou central pour collerette
		translate([largeur/2,40,-5]){cylinder(h = hauteur+10, r = r_kress+0.2, $fn=200);}

		//trou pour vis de serrage écrou M8 dans pièce
		//translate([largeur/2,0,-5]){cylinder(h = hauteur+10, r = 4, $fn=50);}

		//fente pour serrage collerette
		translate([largeur/2,40-1,-5]){cube([largeur, 2, hauteur+10]);}

		//trous de fixation
		translate([10,-5,hauteur/2]){rotate([-90,0,0])cylinder(r=r_trou, h=prof+20, $fn=50);}
		translate([largeur-10,-5,hauteur/2]){rotate([-90,0,0])cylinder(r=r_trou, h=prof+20, $fn=50);}
			}
}

kress_43mm();
