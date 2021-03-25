(
Pdef(\0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: Pexprand(1/16, 1),
        fdb: Pexprand(1.0, 50.0), // feedback of the last operator, higher number give more overtones, and eventually noise
        mi2: Pexprand(1.0, 50.0), // modulation index of the 2nd operator
        mi3: Pexprand(1.0, 50.0), // modulation index of the 3rd operator
        mi4: Pexprand(1.0, 50.0), // modulation index of the 4th operator
        pan: Pwhite(0.0, 1.0),
        //aux: Pwhite(0, 1), // untoggle if you have a Quadroponic speaker setup handy
        freq: 25 * Pexprand(1, 25).round, // 25 Hz is fundamental multiplied by integers 1 thru 25 with .round, try without & .trace
        amp: Pkey(\freq).expexp(25, 625, 0.5, 0.05), // key in \freq, translate from one exponetial range to another
        lpf: Pexprand(50, 5000).round(50).trace, // exponential stochastic choice rounded to nearest multiple of 50 with .round 
        lpq: Pkey(\lpf).explin(25, 5000, 1, 0), // the q of the lpf is derived from the frquency of the filter, lower freq = higher resonance
        crv: Pkey(\dur).explin(1/16, 1, -8, 8), // the curvature of envelope derived from \dur, note exponential to linear here
        rel: 8 * Pkey(\dur).explin(1/16, 1, 0.5, 1), // the release of the envelope is Pkeyed in from the duration
        atk: Pkey(\rel) / Pexprand(1, 8), // rel is keyed from atk, then divided by exponentially by floats between 1 and 8
        sustain: 8 * Pkey(\dur).explin(1/16, 1, 0.5, 1), // follws the same idea, resulting in long sustains for for long durations
        shp: Pwhite(0.0, 0.5),
        tri: Pwhite(0.0, 0.5),
        lhf: Pwhite(0.0, 0.5),
        dark: 1,
    ])
).play
)

// try these to make all kinds of different translations of value ranges
.linlin
.linexp
.expexp
.explin

// evaluate this to see a list of scales
Scale.directory

// untoggle to hear examples of different keys that have to do with pitch
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		dur: 1/8,
		//scale: Scale.bartok,
		//scale: Pseq([Scale.bartok, Scale.partch_u1], inf),
		degree: Pwhite(0, 17),
		scale: Pseq([
			Scale.harmonicMinor.tuning_(Tuning.sept1),
			Scale.harmonicMinor.tuning_(Tuning.sept2),
			Scale.minor
		].mirror, inf), 
		//harmonic: Pwhite(1, 9),
		//stepsPerOctave: 18,
		mtranspose: Pwhite(0, 7),
		octave: Pwhite(3, 5),
		amp: 0.6,
		sustain: Pwhite(1.0,2.0),
	])
).play
)

// include these lines in your own work and trace to see different kinds of palindromes from lists
midinote: Pseq((0 .. 4).mirror, inf).trace,
midinote: Pseq((0 .. 4).mirror1, inf)
midinote: Pseq((0 .. 4).mirror2, inf)

.mirror
.mirror1
.mirror2

// evaluate this to see a list of tunings
Tuning.directory

// make an interval by having two sequences running at the same time
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		dur: 1/2,
		//midinote: Pwhite(60, 65),
		//midinote: Pbrown(60, 65, 1, inf),
		degree: Pbrown(0, 7, Pseq([1, 2, 3],inf), inf), // a stochastic walk with a variable steop size
		amp: 0.7,
		sustain: 2,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		dur: 1/2,
		//midinote: Pwhite(60, 65),
		//midinote: Pbrown(60, 65, 1, inf),
		degree: Pbrown(0, 7, Pseq([1, 2, 3],inf), inf),
		amp: 0.7,
		sustain: 2,
	])
).play.play(quant:1);
)

(
Pdef(0).stop;
Pdef(1).stop;
)

(
Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \sin,
		dur: 1/2,
		//freq:(100, 102 .. 400),
		degree: Pxrand([[1 ,2, 7],[1 ,3, 5],[1 ,2, 6]], inf) + Pwhite(1, 3), // chords!
		amp: 0.9,
		sustain: 2,
	])
).play.play(quant:1);
)
