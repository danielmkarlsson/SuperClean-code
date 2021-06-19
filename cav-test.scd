/*
cav (pronounced "cave") reverb.
Some of you may remember this as dark.
A cave is a dark place right?
This has that same dark sound as the default but has some new parameters.
The parameters are:

cav:	The amplitude of the cav reverb. Range is zero to infinity but will eventually hit the limiter.
cai:	The input or send into the reverb. Range is zero to one.
cvt:	The reverb time. Range is zero to one.
cvd:	The reverb dampening. Range is zero to one.
cvl:	The low pass filter after the reverb. Range is zero to one.
*/

(
Pdef(0,
	Pseed(0,
		Pbind(*[
			type: Pwrand2([\cln, \r], [9, 1], inf),
			snd: \fmx,
			hr1: Pshuf((0 .. 2), inf),
			hr2: Pshuf((0 .. 3), inf),
			hr3: Pshuf((1 .. 4), inf),
			hr4: Pshuf((1 .. 5), inf),
			fdb: Plprand(0.0, 0.01),
			mi2: Plprand(0.0, 0.1),
			mi3: Plprand(0.0, 1.0),
			mi4: Plprand(0.0, 10.0),
			en1: Plprand(0.0, 0.111),
			en2: Plprand(0.0, 0.222),
			en3: Plprand(0.0, 0.444),
			en4: Plprand(0.0, 0.888),
			cu1: Plprand(0.25, 2.0),
			cu2: Plprand(0.25, 2.0),
			cu3: Plprand(0.25, 2.0),
			cu4: Plprand(0.25, 2.0),
			sustain: Plprand(0.25, 1.25),
			scale: Scale.harmonicMinor.tuning_(Tuning.vallotti),
			degree: Plprand(0, 7),
			octave: Pstutter(Plprand(0, 3), Plprand(3, 7)) - Pwrand2([0, 1], [100, 1], inf),
			atk: Plprand(0.0, 0.25),
			hld: Phprand(0.0, 1.0),
			hld: Plprand(0.0, 1.0),
			rel: Phprand(1.0, 2.0),
			tri: Phprand(0.0, 1.0),
			num: 8,
			amp: Pstutter(Plprand(3, 15), Plprand(0.4, 1.0)) / Pkey(\octave).linlin(2, 7, 0.75, 1.25),
			dur: 1.5 / Pstutter(Plprand(3, 15), Phprand(5, 11)),
			cav: 1,
			cai: Pseg(Phprand(0.0, 1.0), Phprand(0.0, 15.0), \wel, inf),
			cvt: Pseg(Phprand(0.0, 1.0), Phprand(0.0, 15.0), \wel, inf),
			cvd: Pseg(Plprand(0.0, 1.0), Phprand(0.0, 15.0), \wel, inf),
			cvl: Pseg(Phprand(0.75, 1.0), Phprand(0.0, 15.0), \wel, inf),
			stretch: Pseg(Pwhite(0.5, 3.0), Phprand(0.0, 15.0), \wel, inf),
			hpf: Pseg(Phprand(20, 400), Phprand(0.0, 15.0), \wel, inf),
			pan: Pseg(Pmeanrand(0.0, 1.0), Phprand(0.0, 15.0), \wel, inf),
		])
	)
).play
)

Gverb
