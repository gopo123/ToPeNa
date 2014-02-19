r_ext=15.5;
r_col=25;
x_end=20;
y_end=6;
r_m3=2;


module endstop_z(){
	difference(){
		union(){
		cylinder(h = 18, r=15.5, $fn=100);
		cylinder(h = 2, r=r_col, $fn=100);
		}

		//extrusion générale
		translate([-x_end/2,-y_end/2,-5]){cube([x_end,y_end,30]);}

		//trous de fixation
		translate([-r_col+5,0,-5]){cylinder(h = 15, r = r_m3, $fn=50);}
		translate([r_col-5,0,-5]){cylinder(h = 15, r = r_m3, $fn=50);}

		

	}
}

endstop_z();