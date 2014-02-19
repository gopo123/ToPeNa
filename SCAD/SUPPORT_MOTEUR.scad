r_m3=2;
r_trou=1.5;
r_tete=3.5;
ep=5;
largeur=52;
ep_vert=20;
l_bloc=45;


module partie_haute(){
	difference(){
		union(){
			//cube vertical de base
			cube([ep_vert,largeur,67]);

			//arrondi du haut
			translate([0,largeur/2,67]){rotate([0,90,0])cylinder(r=largeur/2, h=ep_vert, $fn=200);}
		}
	//trou central du moteur
	translate([-5,largeur/2,largeur/2]){rotate([0,90,0])cylinder(r=12, h=30, $fn=200);}	

	translate([-5,largeur/2,largeur/2]){rotate([0,90,0])cylinder(r=17, h=5+ep_vert/2+5, $fn=200);}	

	//trous de fixation du moteur
	translate([-5,largeur/2-15.5,largeur/2-15.5]){rotate([0,90,0])cylinder(r=r_m3, h=30, $fn=200);}	
	translate([-5,largeur/2+15.5,largeur/2-15.5]){rotate([0,90,0])cylinder(r=r_m3, h=30, $fn=200);}
	translate([-5,largeur/2-15.5,largeur/2+15.5]){rotate([0,90,0])cylinder(r=r_m3, h=30, $fn=200);}	
	translate([-5,largeur/2+15.5,largeur/2+15.5]){rotate([0,90,0])cylinder(r=r_m3, h=30, $fn=200);}		

	//trou pour fixation arbre
	translate([-5,largeur/2,67]){rotate([0,90,0])cylinder(r=10.15, h=30, $fn=200);}
	}

}

module emp_moteur(){
	difference(){
		//cube pour emplacement moteur
		translate([ep_vert,0,0]){cube([l_bloc,largeur,l_bloc]);}

		//extrusion de l'emplacement moteur
		translate([ep_vert,ep,ep]){cube([50,largeur-ep*2,50]);}
		//pente emplacement moteur
		translate([l_bloc+ep_vert,-5,ep]){rotate([0,-48.4,0])cube([50,100,100]);}

		//trous de vissage
		translate([ep_vert+10,ep+5,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([ep_vert+10,ep+5,1]){cylinder(h = ep-1, r1 = r_trou, r2=r_tete, $fn=50);}
		
		translate([ep_vert+10,largeur-ep-5,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([ep_vert+10,largeur-ep-5,1]){cylinder(h = ep-1, r1 = r_trou, r2=r_tete, $fn=50);}

		translate([ep_vert+l_bloc-10,ep+5,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([ep_vert+l_bloc-10,ep+5,1]){cylinder(h = ep-1, r1 = r_trou, r2=r_tete, $fn=50);}

		translate([ep_vert+l_bloc-10,largeur-ep-5,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([ep_vert+l_bloc-10,largeur-ep-5,1]){cylinder(h = ep-1, r1 = r_trou, r2=r_tete, $fn=50);}
}

}
partie_haute();
emp_moteur();