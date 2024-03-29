(
Pdef(0,
	Pseed(1882,
		Pbind(*[
			type: \cln,
			snd: \bow,
			dur: Pseg(Plprand(0.1, 0.4), Pwhite(2.0, 20.0), \exp, inf),
			octave: 2,
			legato: 49,
			atk: Pwhite(2.0, 4.0),
			rel: Pwhite(1.0, 2.0),
			crv: Pwhite(2.0, 6.0),
			pan: Pmeanrand(0.1, 0.9),
			freq: Pseg(Plprand(50, 1250), Plprand(4.0, 40.0), \exp, inf),
			calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
			frq: Pfunc{|ev|ev.use{ev.freq}},
			amp: Pseg(Phprand(0.1, 0.625), Pwhite(2.0, 20.0), \exp, inf) / Pkey(\frq).expexp(50, 1250, 2, 1),
			//aux: Pseed(0, Pxshuf((0 .. 10), inf)),
			frc: Pseg(Pwhite(0.5, 4.0), Pwhite(2.0, 20.0), \wel, inf),
			pos: Pseg(Pwhite(0.1, 0.9), Pwhite(2.0, 20.0), \wel, inf),
			gst: Pseed(1, Pseg(Phprand(0.0, 8.0),  Pwhite(2.0, 20.0), \wel, inf)),
			idc: Pseg(Pwhite(0.25, 32.0), Pwhite(2.0, 20.0), \wel, inf),
			hfl: Pseg(Phprand(31.0, 310.0), Pwhite(2.0, 20.0), \wel, inf),
			smp: Pseg(Pwhite(0.1, 0.9), Pwhite(2.0, 20.0), \wel, inf),
			ihf: Pseg(Pwhite(0.5, 16.0), Pwhite(2.0, 20.0), \wel, inf),
			bnd: Pseg(Pmeanrand(-1.5, 1.5),  Pwhite(2.0, 20.0), \wel, inf),
			bno: Pseg(Plprand(0.0, 4.0),  Pwhite(2.0, 20.0), \wel, inf),
			bnt: Pseg(Plprand(0.2, 2.0),  Pwhite(2.0, 20.0), \wel, inf),
			bnc: Pseg(Pmeanrand(-1.0, 1.0), Pwhite(2.0, 20.0), \wel, inf),
			hpf: Pseg(Plprand(20, 5000), Pwhite(2.0, 20.0), \exp, inf),
			cai: Pkey(\amp).linlin(0.222, 0.444, 1.0, 0.0),
			cav: 4,
			cvt: 1/8,
		])
	)
).play;
)