(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		fed: Plprand(0.0, 1.0),
		pew: Phprand(0.0, 10.0),
		tun: Plprand(0.0, 10.0).round(0.05), // note this use of .round(0.05) here, tun tunes the drum in an inspiring (unpredictable) way
		sustain: Plprand(0.0, 10.0),
		pan: Pwhite(0.0, 1.0),
		ocu: Pwhite(0.0, 1.0), // ocu stands for octave up, it's a new effect at the time of writing, maybe time to update SuperClean?
		ocd: Pkey(\ocu).linlin(0.0, 1.0, 1.0, 0.0), // ocd, octave down is the eact opposite value of ocu after this linear conversion
		tri: Pwhite(0.0, 1.0),
		shp: Pwhite(0.0, 1.0),
		lhf: Pwhite(0.25, 0.75),
		amp: Pseq((0.0, 0.05 .. 0.5) ++ (0.45, 0.4 .. 0.05), inf).trace,
		stretch: Pseq((0.1, 0.2 .. 1.0) ++ (0.9, 0.8 .. 0.2), inf) / Pstutter(Plprand(6, 19),Pwhite(1.0, 4.0)),
		dla: 0.7,
		dlf: 0.94,
		dlt: 1/32 / Pstutter(Plprand(0, 5),Pif(Pkey(\amp) < 0.25, Prand((8, 10 .. 20), inf), Prand((1, 3 .. 7), inf))), //Pif, new vocabulary
		// if amp is below 0.5 choose even divisors 8 to 20, if amp above 0.5 choose uneven divisors 1 to 7
		dark: 0.5,
	])
).play
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		dur: 1/5,
		degree: Pstutter(2, Pwrand2((0 .. 4), (1 .. 5), inf)),
		cav: 1,
		amp: 0.6,
		cai: Pfunc { |e| [0].includes(e[\degree]).if { 1 } { 0 } }.trace,
	])
).play
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw, // try swapping out to \sin to hear frequency shifting on a sine, which has no overtones
		dur: 1/8,
		freq: [53, 60, 67].midicps, // chord as input yields way more complex results when freequency shifting
		//freq: 60.midicps, // try uncommenting this line to hear Frequency shifting on just one pitch
		fsh: Pseg(Pwhite(32, -32), Plprand(0.5, 5.0), \sin, inf), // frequency shift amount
		fsm: Pseg(Pwhite(4.0, -4.0), Plprand(0.5, 5.0), \sin, inf), // frequency shift multiplication, try uncommenting
	]) // .midicps converts midi note numbers to cycles per second, or what is more commonly known as frequency values
).play; // There is also the opposite conversion which is .cpsmidi
)

(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [8, 1], inf),
		dur: 0.8 / Pwrand2([4, 8], [1, 4], inf),
		snd: Pwrand2([\drm, \hat], [4, 1], inf),
		pew: Phprand(0.5, 1.0),
		fed: Plprand(0.0, 1.0),
		tun: Pstutter(8, Plprand(2.0, 7.0)),
		rel: Plprand(0.0, 1.0) * Pseg([1, 4], 30, \wel, inf),
		sustain: Plprand(2.5, 5.0),
		crv: -8,
		ocu: 0.dbamp, // this convenient conversion is equal to amp: 1,
		ocd: -6.dbamp, // equivalent to amp: 0.5,
		ocq: -12.dbamp, // equivalent to amp: 0.25,
		amp: Plprand(-6.0, -0.01).dbamp, // doesn't have to be static values
		rma: Pwhite(-12.0, 0.0).dbamp,
		rmf: Plprand(20, 200),
		dla: Pseg(Pwhite(-6.dbamp, 0.dbamp), 30, \wel, inf),
		dark: -48.dbamp, // equivalent to amp: 0.003981071705535
		fsh: Pseg([0, 16, -16, 0], Plprand(0.5, 5.0), \sin, inf), // here's that frequency shifter again
		pan: Pbrown(0.125, 0.875, Pwhite(0.0, 0.125), inf), // listen for the effect on \hat, AM or fast tremolo sound
	])
).play;
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \dfd,
		dur: 1/4,
		rel: 1.5,
		sustain: 1.5,
		hpf: 500,
		degree: Pslide((0 .. 7), inf, 3, 1, 0), // an example using Pslide as used in the help file, weird at wrapAtEnd
		amp: 0.7,
	])
).play
)

Pslide
//add an opening paranthesis above, after Pslide to show the arguments hover helper

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \kps,
		dur: 1/4,
		rel: 1.5,
		sustain: 1.5,
		hpf: 500,
		amp: 0.8,
		degree: Pn(Pslide((0 .. 7).mirror1, inf, 3, 1, 0, false), inf), // .mirror1 for max vocal warmup connotations
	]) // try the above without the Pn wrapped around it, its stops because wrapAtEnd is false.
).play // we can use Pn as a wraparound to make something finite to become infinite
) // It's like Pn wakes Pslide up and says "one more pattern" every time Pslide tries to go to sleep

// Have you ever tried sequencing a bunch of stochastic patterns objects? Here's how to not get stuck on the first stochastic pattern object
(
 
Pdef(0,
	Pseed(173,
		Pbind(*[
			type: \cln,
			snd: \fmx,
			rps: Pwrand2([64, 128, 256], [4, 2, 1], inf),
			dur: Pwrand2([1/8, 1/4, 1/2], [4, 16, 1], inf),
			lhf: Pwhite(0.0, 0.875),
			lpf: Pexprand(20, 20000),
			hpf: Pexprand(20, 5000),
			stretch: Pseg([1.5, 1/5, 1.5], Pwhite(10.0, 20.0), \sin, inf),
			sustain: Phprand(0.5, 5.0) * Pkey(\stretch),
			rel: Phprand(1.0, 10.0) * Pkey(\stretch),
			amp: Plprand(0.225, 0.75),
			pan: Pmeanrand(0.0, 1.0),
			hr1: Pstutter(Pkey(\rps) / 2, Plprand(0, 5)),
			hr2: Pstutter(Pkey(\rps) / 2, Plprand(0, 5)),
			hr3: Pstutter(Pkey(\rps) / 2, Plprand(0, 5)),
			hr4: Pstutter(Pkey(\rps) / 2, Plprand(0, 5)),
			en1: Phprand(0.0, 5.0),
			en2: Phprand(0.0, 5.0),
			en3: Phprand(0.0, 5.0),
			en4: Phprand(0.0, 5.0),
			fdb: Plprand(0, 10),
			mi1: Plprand(0, 10),
			mi2: Plprand(0, 10),
			mi3: Plprand(0, 10),
			cu1: Pstutter(Pkey(\rps) / 4, Plprand(-8.0, 8.0)),
			cu2: Pstutter(Pkey(\rps) / 4, Plprand(-8.0, 8.0)),
			cu3: Pstutter(Pkey(\rps) / 4, Plprand(-8.0, 8.0)),
			cu4: Pstutter(Pkey(\rps) / 4, Plprand(-8.0, 8.0)),
			scale: Pstutter(Pkey(\rps), Pseq([Scale.major.tuning_(Tuning.vallotti), Scale.minor.tuning_(Tuning.vallotti)], inf)).trace, // New place to put a .trace, the post window get's real busy
			octave: Pstutter(Pkey(\rps), Pseq([Pfuncn({ a.next }, 1), Pfuncn({ b.next }, 1)], inf)), // The n in Pfuncn is for number
			mtranspose: Pstutter(Pkey(\rps), Plprand(-4, 4)), // Above  we make just one stochastic choice in a and then move on to b
			degree: Pn(Pslide((0 .. 7), inf, Pwhite(2, 4), Pwhite(1, 3), 0, true), inf), // you may not have been aware of this happening
			hal: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf), // It's a sneaky silent error, everything seems fine
			rts: Pseg(Plprand(0, 2.0), Pwhite(10.0, 20.0), \lin, inf), // no error message, sound coming out, what could be wrong?
			edf: Pseg(Plprand(0, 1/4), Pwhite(10.0, 20.0), \lin, inf), // try putting the stuff in the variables above in place of the Pfuncn's
			ldf: Pseg(Plprand(0, 3/4), Pwhite(10.0, 20.0), \lin, inf), // add .trace and check the post window to catch this sneaky silent error
			ocu: Pseg(Plprand(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
			ocd: Pseg(Plprand(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
			ocq: Pseg(Plprand(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
			shp: Pwhite(0.0, 1.0),
			sha: 0,
			sho: 1,
			shi: 0.05,
			tri: Pwhite(0.0, 1.0),
		])
	)
).play
)

// A couple of observations about Pslide:
// The start value in Pslide can't be sequenced
// the Wrap argument can't be a number. It has to be true or false, so it can't be sequenced (easily) either.

// We could make something bespoke.
// Pn Plazy combo to the rescue!
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		freq: Pn(Plazy { //Pn + Plazy = BFF's 4 lyfe !!!
			var a = [1, 2, 3].choose; // Try adding some values in this array as it is running and reevaluate
			var b = [3, 5, 7].choose; // Also try the same here
			40 * Pseq((a .. b), 1); // The 40 is the fundamental, change that, a is the low value, b is the high value, try swapping a and b
		}).trace,
		dur: 1/8,
		amp: 0.8,
	])
).play;
)

// Here is a similar example only this time instead of a sequence we get a chord.
( // A huge chord, almost to the point of this resembling additive synthesis.
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \saw, // try switching to \sin and compare the sound
		wid: Phprand(0.0, 0.5),
        freq: Pn(Plazy {
		var a = exprand(1, 4); // try a higher value for the high value for this exprand
        var b = (1 .. 11).choose; // mees with these values also
		60 * (a .. b).postln; // change teh fundamental, try swapping a and b
    }),
        dur: 1/8,
        amp: 1 / Pwhite(2, 4),
		rel: 1 / Pwhite(1/8, 4),
		crv: Pwhite( -8, -3),
		sustain: 16,
		lhf: Pwhite(0.125, 0.875),
		//dark: Pstutter(Plprand(9,99), Prand([0, 0.1], inf)), // dark is a one-trick but wow, what a trick, never get's old.
		hal: 1, // hal has some more parameters. Here's kind of the opposite which is a very bright, tinny, reverb.
		rts: 4.0, // Length of reverb
		ldf: 1, // late diffusion
		hhp: 2000, // high pass filter before the hal reverb
		amp: 0.6,
    ])
).play(quant:1);
)

1 / 4 // SC is a very capable calculator as well as a state of the art synthesis engine, evaluate this line to see the result
