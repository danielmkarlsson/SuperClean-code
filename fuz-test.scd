(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		tun: Pdup(Plprand(4, 8), Plprand(0.0, 8.0).round(1/8)),
		amp: Plprand(-7.5.dbamp, -1.5.dbamp),
		num: 8,
		dur: 1 / Pdup(Phprand(5, 11), Pwhite(3, 9)),
		dur: Pbjorklund2(Phprand(2, 5), Prand([2, 4, 8, 16], inf)) / 9,
		fuz: 1, // set to 0 to compare to dry signal
		fzv: Pdup(16, Pseq([0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048], inf)).trace(prefix: "fzv: "),
		legato: Plprand(0.75, 4.0),
		pan: Prand([Phprand(0.0, 0.5, 1), Plprand(0.5, 1.0, 1)], inf),
	])
).play(quant:1);
)