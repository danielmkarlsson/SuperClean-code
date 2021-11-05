~clean.lsf("~/blp")

(
Pdef(0,
	Pseed(99999,
		Pbind(*[
			type: \cln,
			snd: \blp,
			dur: (1 /Pdup(Pwhite(9, 99), Pwhite(7.0, 15.0))).trace,
			pan: Pseq([0, 0.25, 0.5, 1, 0.75, 0.5], inf),
			bnd: Pmeanrand(-0.005, 0.005),
			ocu: Pdup(Pwhite(9, 99), Plprand(0.0, 1.0)),
			ocd: Pdup(Pwhite(9, 99), Plprand(0.0, 1.0)),
			ocq: Pdup(Pwhite(9, 99), Plprand(0.0, 1.0)),
			bgn: Pdup(Pwhite(9, 99), Plprand(0.0, 0.75)),
			spd: Pdup(Pwhite(9, 99), Prand([-1/2, -1/4, -1/8, 1/8, 1/4, 1/2], inf)),
			shp: Pdup(Pwhite(9, 99), Phprand(0.0, 1.0)),
			sho: Pdup(Pwhite(9, 99), Pwhite(0.0, 1.0)),
			shi: Pdup(Pwhite(9, 99), Pwhite(0.0, 1.0)),
			slo: Pdup(Pwhite(9, 99), Plprand(0.0, 1.0)),
			hit: Pdup(Pwhite(9, 99), Phprand(0.0, 1.0)),
			lot: Pdup(Pwhite(9, 99), Pwhite(0.0, 1.0)),
			atk: Pdup(Pwhite(9, 99), Plprand(0.0, 1.0)),
			hld: Pdup(Pwhite(9, 99), Pmeanrand(1.0, 2.0)),
			rel: Pdup(Pwhite(9, 99), Phprand(1.0, 2.0)),
			amp: Pdup(Pwhite(9, 99), Phprand(0.5, 2.0)),
			crv: Pdup(Pwhite(9, 99), Plprand(-8.0, 0.0)),
			tri: Pdup(Pwhite(9, 99), Phprand(0.0, 1.0)),
			lpf: Pdup(Pwhite(9, 99), Phprand(20, 20000)),
			lhf: Pdup(Pwhite(9, 99), Phprand(0.2, 0.6)),
			cav: 1,
			bpq: 1,
			tnh: 1,
			tng: Pdup(Pwhite(9, 99), Pwhite(0.0, 100.0)),
			legato: 10,
			sustain: 10,
		])
	)
).play
)