r_m3=2;
r_trou=1.5;
r_tete=3.5;
ep=5;
rayon=4.5;
long=41;

module arrondi(RAYON,EP){
	difference(){
		cube([RAYON*2,RAYON*2,EP]);

		translate([RAYON,RAYON,-5])cylinder(r=RAYON, h=EP+10, $fn=200);

		translate([RAYON,-5,-5])cube([RAYON*2+10,RAYON*2+10,EP+10]);
		translate([-5,RAYON,-5])cube([RAYON*2+10,RAYON*2+10,EP+10]);

	}
}

module gousset(){
	difference(){
		union(){
			hull(){
				cylinder(h = ep, r = rayon, $fn=200);
				translate([long-rayon*2,0,0]){cylinder(h = ep, r = rayon, $fn=200);}
			}

			hull(){
				cylinder(h = ep, r = rayon, $fn=200);
				translate([0,long-rayon*2,0]){cylinder(h = ep, r = rayon, $fn=200);}
			}

			//arrondi de gousset
			translate([rayon,rayon,0]){arrondi(long-rayon*2-4,5);}

		}

		

		//trous de vissage
		translate([0,0,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([0,0,2]){cylinder(h = 3, r1 = r_trou, r2=r_tete, $fn=50);}

		translate([long-rayon*2,0,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([long-rayon*2,0,2]){cylinder(h = 3, r1 = r_trou, r2=r_tete, $fn=50);}

		translate([0,long-rayon*2,-5]){cylinder(h = 15, r = r_trou, $fn=50);}
		translate([0,long-rayon*2,2]){cylinder(h = 3, r1 = r_trou, r2=r_tete, $fn=50);}

	}
}

gousset();