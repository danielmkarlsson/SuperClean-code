(
~mod = 7;
~dup = 50;
~dyn = Pseg(Pdup(2, Plprand(0.9, 1.2)), Plprand(15.0, 90.0), \wel, inf).asStream;
~scl = Scale.phrygian(\vallotti);
~a={|amp, degree, pan|
	var b =
	Pbind(*[
		type: \cln,
        snd: \ixa,
		dur: 1/8,
        atk: Pexprand(0.00001, 0.01),
        rel: Pkey(\dur) * 4,
        crv: -4,
        crt: -4,
        sustain: Pkey(\atk) + Pkey(\rel),
        amp: amp,
        scale: Pfunc({~scl.next}),
        degree: degree,
        pan: pan,
        jpr: 1/3,
        jpg: Pseg(Pdup(2, Plprand(0.1, 1.0)), Phprand(15.0, 90.0), \wel, inf),
        lpf: Pseg(Pdup(2, Pexprand(500, 5000)), Plprand(15.0, 90.0), \wel, inf),
	]);
	Pseq([b], inf);
};
Pdef(0, ~a.(Pseq([Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next}), Pseries(0, 1, inf)) % Pfunc({~mod.next})), Pdup(4, Pseq((0.0, 0.1 .. 1.0).mirror1, inf))));
Pdef(1, ~a.(Pseq([0, Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next} + 1), Pseries(0, 1, inf)) % Pfunc({~mod.next}) + 1), Pdup(4, Pseq((0.0, 0.09 .. 1.0).mirror1, inf))));
Pdef(2, ~a.(Pseq([0, 0, Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next} + 2), Pseries(0, 1, inf)) % Pfunc({~mod.next}) + 2), Pdup(4, Pseq((0.0, 0.08 .. 1.0).mirror1, inf))));
Pdef(3, ~a.(Pseq([0, 0, 0, Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next} + 3), Pseries(0, 1, inf)) % Pfunc({~mod.next}) + 10), Pdup(4, Pseq((0.0, 0.07 .. 1.0).mirror1, inf))));
Pdef(4, ~a.(Pseq([0, 0, 0, 0, Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next} + 4), Pseries(0, 1, inf)) % Pfunc({~mod.next}) + 4), Pdup(4, Pseq((0.0, 0.06 .. 1.0).mirror1, inf))));
Pdef(5, ~a.(Pseq([0, 0, 0, 0, 0, Plprand(0.6, 0.8, 1) / Pfunc({~dyn.next}), 0, 0], inf), (Pdup(Pfunc({~dup.next} + 5), Pseries(0, 1, inf)) % Pfunc({~mod.next}) - 2), Pdup(4, Pseq((0.0, 0.05 .. 1.0).mirror1, inf))));
)

s.record

(
Pdef(0).play; 
Pdef(1).play; 
Pdef(2).play; 
Pdef(3).play; 
Pdef(4).play; 
Pdef(5).play; 
)

(
Pdef(0).pause; 
Pdef(1).pause; 
Pdef(2).pause; 
Pdef(3).pause; 
Pdef(4).pause; 
Pdef(5).pause; 
)

(
Pdef(0).resume; 
Pdef(1).resume; 
Pdef(2).resume; 
Pdef(3).resume; 
Pdef(4).resume; 
Pdef(5).resume; 
)


(
Pdef(0).reset; 
Pdef(1).reset; 
Pdef(2).reset; 
Pdef(3).reset; 
Pdef(4).reset; 
Pdef(5).reset; 
)

(
Pdef(0).stop; 
Pdef(1).stop; 
Pdef(2).stop; 
Pdef(3).stop; 
Pdef(4).stop; 
Pdef(5).stop; 
)
