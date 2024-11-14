(
thisThread.randSeed = 9983;
~sgt = Pseq([Pdup(3, Plprand(8, 16, 1)), Pdup(3, 1 / Pwhite(2, 4, 1))], inf).asStream;
~dgr = (Pxshuf((-7.0, -6.5 .. 7.0), inf)).asStream;
~amp = Pseg(Pdup(2, Phprand(0.3, 0.45)), Pwhite(2.0, 20.0), \exp, inf).asStream;
~a = {|seed|
	var b =
	Pbind(*[
		type: \cln,
            snd: \saw,
            wid: Phprand(0.001, 0.5),
            dur: Pexprand(0.001, 0.15).trace,
            atk: Pexprand(0.5, 2.0),
            hld: Pexprand(0.5, 2.0),
            rel: Pexprand(0.5, 2.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            scale: Scale.major(\wcSJ),
            degree: Pseg(Pdup(2, Pfunc{~dgr.next}), Pfunc{~sgt.next}, \wel, inf),
            amp: Pfunc{~amp.next},
            pan: Pseg(Pdup(2, Pmeanrand(0.1, 0.9)), Pwhite(1.0, 10.0), \lin, inf),
            cav: 1,
            cai: Pseg(Pdup(2, Plprand(0.0, 1.0)), Pexprand(1.0, 10.0), \wel, inf),
	]);
	Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(0)).play;
Pdef(1, ~a.(1)).play;
Pdef(2, ~a.(2)).play;
)



(
Pdef(0).stop;
Pdef(1).stop;
Pdef(2).stop;
)
