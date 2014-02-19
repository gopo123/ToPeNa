r_ecrou_m8=6.5;
r_m8=4.5;
r_trou_m8=4.5;
h_ecrou_m8=6.5;
r_m3=1.5;
r_tete=3.5;
ep=5;
ep_c=5;
largeur=20;

module support(){
	difference(){
		union(){
		translate([5,0,0]){cube([10+h_ecrou_m8+ep*3+30,largeur,largeur]);}
		translate([5,largeur/2,0]){cylinder(r=largeur/2, h=largeur, $fn=100);}
		translate([10+h_ecrou_m8+ep*3+30+10-5,largeur/2,0]){cylinder(r=largeur/2, h=largeur, $fn=100);}
		}

		//trou général tige filetée
		translate([-5,largeur/2,largeur/2+2]){rotate([0,90,0])cylinder(r=r_trou_m8, h=120, $fn=100);}

		//extrusion pour fixation gauche
		translate([-20,-5,ep]){cube([30,30,18]);}
		translate([5,largeur/2,-5]){cylinder(r=r_m3, h=20, $fn=50);}
		translate([5,largeur/2,2]){cylinder(r1=r_m3, r2=r_tete, h=3, $fn=100);}

		//encastrement premier écrou
		translate([10+ep,(largeur-r_ecrou_m8*2)/2,-5]){cube([h_ecrou_m8,r_ecrou_m8*2,largeur+10]);}
		//espace pour ressort
		translate([10+h_ecrou_m8+ep*2,(largeur-r_ecrou_m8*2-1)/2,-5]){cube([27,r_ecrou_m8*2+1,largeur+10]);}

		//extrusion pour fixation droite
		translate([10+h_ecrou_m8+ep*3+30,-5,ep]){cube([30,30,18]);}
		translate([10+h_ecrou_m8+ep*3+30+10-5,largeur/2,-5]){cylinder(r=r_m3, h=20, $fn=50);}
		translate([10+h_ecrou_m8+ep*3+30+10-5,largeur/2,2]){cylinder(r1=r_m3, r2=r_tete, h=3, $fn=100);}

	}

}
support();
