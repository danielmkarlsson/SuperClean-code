(
var scales = Pseed(0,
	Pxshuf([
		Scale.augmented,
		Scale.bartok,
		Scale.minor,
		Scale.harmonicMinor,
		Scale.mixolydian,
		Scale.pelog,
		Scale.whole,
		Scale.neapolitanMinor,
	], inf)
).asStream;
Pdef(0,
	Pseed(1296,
		Pbind(*[
			type: \cln,
			snd: \ixa,
			dup: Plprand(44, 444),
			dur: Prand([1, 1/2, 1/4], inf),
			tun: Pdup(Pkey(\dup), Pxshuf([
				Tuning.pythagorean,
				Tuning.just,
				Tuning.sept1,
				Tuning.sept2,
				Tuning.vallotti,
				Tuning.wcSJ,
				Tuning.kirnberger,
				Tuning.mean4,
				Tuning.mean5,
			], inf)),
			scale: Pdup(Pkey(\dup), Pfunc {|ev|
				var scale = scales.next;
				scale.tuning = ev[\tun];
				"% : %".format(scale.name, scale.tuning.name).debug('scale');
				scale;
			}),
			degree: Pdup(Pkey(\dup), Plprand(0, 7)),
			octave: Pdup(Plprand(4, 8), Pmeanrand(3, 6)),
			mtranspose: Pdup(Plprand(111, 222), Plprand(-5, 2)),
			calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
			frq: Pfunc{|ev|ev.use{ev.freq}},
			calcAmpCompFreq: Pfunc{|ev|ev.use{~freq.value()}},
			ampComp: Pfunc({|ev|
				var root = 60.0;
				var freq = ev[\calcAmpCompFreq];
				var xa = root / freq;
				var xb = 0.2555; // Exponent
				xa.pow(xb);
			}),
			amp: Plprand(0.75, 1.0) * Pkey(\ampComp),
			atk: Plprand(1.0, 16.0),
			rel: Phprand(1.0, 16.0),
			crv: 0,
            legato: Pkey(\dur).linlin(1/4, 1, 4, 1) + (Pkey(\atk) + Pkey(\rel)) + 1,
			cav: 1/8,
			lpf: (Pkey(\frq) * Plprand(7.0, 9.0)),
			ocd: Plprand(0.0, 1.0),
			ocq: Plprand(0.0, 1.0),
			shp: Plprand(0.0, 1.0),
			sho: Pmeanrand(0.0, 1.0),
			shi: Phprand(0.0, 1.0),
			slo: Plprand(0.0, 1.0),
			hit: Phprand(0.0, 1.0),
			lot: Plprand(0.0, 1.0),
			tri: Plprand(0.0, 1.0),
			fuz: Plprand(0, 1),
			fzv: Plprand(0.0, 100.0),
			lhf: Phprand(0.4, 0.5),
			//aux: Pseed(1, Pxshuf((0 .. 10), inf),
		])
	)
).play
)

s.record
Pdef(0).stop

