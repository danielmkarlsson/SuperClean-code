// This lil snip needs you to have this installed: https://github.com/danielmkarlsson/TuningLib
// TuningLib needs MathLib: https://github.com/supercollider-quarks/MathLib
// Both of those you can download and just drag and drop into your Extensions folder.
// That's how I do it. Considerably less drama than using the quarks "system".

(
~slnd = Scala("~/scl/slendro.scl");
~zsts = Scala("~/scl/07-37.scl");
~bal5 = Scala("~/scl/balafon5.scl");
~dip7 = Scala("~/scl/diaphonic_7.scl");
~dusc = Scala("~/scl/dudon_saba-c.scl");
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		dur: 1/8,
		scale: Pdup(256, Pxshuf([
			~slnd.scale,
			~zsts.scale,
			~bal5.scale,
			~dip7.scale,
			~dusc.scale,
		], inf)),
		degree: Plprand(0, 7),
		pan: Pkey(\degree).linlin(0, 7, 0.35, 0.65),
		sustain: 2,
		atk: Phprand(0.005, 0.01),
		rel: 2,
		crv: -8,
		amp: Plprand(0.8, 1.0),
		hpf: 600,
		jpr: 1/8,
		jps: 0,
	])
).play;
)