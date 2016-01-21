$fn=100;
ly = .2;

elevation = 38;
height = 20;

d1 = 140;
d2 = d1-d1/3;

thickness = 4*ly;
screwR = 4.3/2;
D = (140-124.5-screwR*2)/2;

S1 = [d1/2-screwR-D,0,0];
S2 = [0,d1/2-screwR-D,0];
S3 = [-d1/2+screwR+D,0,0];
S4 = [0,-d1/2+screwR+D,0];

M1 = [d1/2-screwR-D,0,0];
M2 = [0,d1/2-screwR-D,0];
M3 = [-d1/2+screwR+D,0,0];
M4 = [0,-d1/2+screwR+D,0];

    difference() {
        union() {
            translate([0,0,elevation]) {
                difference() {
                    translate([0,0,thickness]) cylinder(h=height,r1=d1/2,r2=d2/2,$fn=4);
                    cylinder(h=height,r1=d1/2,r2=d2/2,$fn=4);
                }
            }
            translate(M1) cylinder(h=elevation,r1=screwR,r2=screwR);
            translate(M2) cylinder(h=elevation,r1=screwR,r2=screwR);
            translate(M3) cylinder(h=elevation,r1=screwR,r2=screwR);
            translate(M4) cylinder(h=elevation,r1=screwR,r2=screwR);
            difference() {
                cylinder(h=thickness,r1=d1/2,r2=d1/2,$fn=4);
                translate([0,0,0]) cylinder(h=thickness,r1=d1/2-screwR-D,r2=d1/2-screwR-D,$fn=4);
                translate(S1) cylinder(h=thickness,r1=screwR,r2=screwR);
                translate(S2) cylinder(h=thickness,r1=screwR,r2=screwR);
                translate(S3) cylinder(h=thickness,r1=screwR,r2=screwR);
                translate(S4) cylinder(h=thickness,r1=screwR,r2=screwR);
            }
        }
    }