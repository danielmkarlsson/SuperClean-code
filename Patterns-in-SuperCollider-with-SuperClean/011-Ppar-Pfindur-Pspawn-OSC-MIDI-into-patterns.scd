// Discuss outcomes. Finalizing. Interesting ways to distribute compositions.
// The portability of .scd fiiles is attractive.
// Possible limitations.

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Note that no sound comes out of this block when we evaluate it. These Pdefs are played in the block below.
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		dur: 1/5,
		fed: Pwhite(0.0, 1.0),
		pan: Pwhite(0.0, 1.0),
	])
); // No .play here.
Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \hat,
		dur: 1/7,
		fed: Plprand(0.0, 0.75),
		amp: Plprand(0.125, 0.75),
	])
); // No .play here.
Pdef(2,
	Ppar([ // A couple of Pbinds running together inside a named Pdef with Ppar.
		Pbind(*[
			type: \cln,
			snd: \drm,
			dur: 1/7,
			tun: Pwhite(0.0, 4.0),
			pan: Pwhite(0.0, 1.0),
			amp: 1.5,
		]),
		Pbind(*[
			type: \cln,
			snd: Pwrand2([\hat, \r], [8, 1], inf),
			dur: 1/11,
			amp: Plprand(0.125, 1.25),
			tun: Pwhite(-1.0, 1.0),
			bnd: Pwhite(-1.0, 1.0),
			rel: Pwhite(0.0, 15.0),
			legato: Plprand(0.0, 15.0),

		])
	])
) // No .play here.
)

(
Pdef(\form,
	Pseq([
		Pfindur(1, Pdef(0)), // Play Pdef(0) for a finite duration of one bar with Pfindur.
		Pfindur(2, Pdef(1)), // After that two bars of Pdef(1).
		Pfindur(3, Pdef(2)), // Then three bars of Pdef(2).
		Pfindur(2, Pdef(1)), // And so on.
		Pfindur(1, Pdef(0)), // Back to where we started.
	], 1), // The 1 here means once through the list, put any number here, inf is also an accceptable value.
).play; // Does anyone recognize the above form?
)
// Try changing the contents of Pdefs 0 to 2 and reevaluating while Pdef(\form) is running with inf at the bottom.

( // same but expressed in seconds with a Routine instead
Routine{ // this might suit some use cases better
	Pdef(0).play; // Pdef(0).play(quant 0); // maybe try adding (quant 0) for some stuff
	1.wait;
	Pdef(0).stop;
	Pdef(1).play;
	2.wait;
	Pdef(1).stop;
	Pdef(2).play;
	3.wait;
	Pdef(2).stop;
	Pdef(1).play;
	2.wait;
	Pdef(1).stop;
	Pdef(0).play;
	1.wait;
	Pdef(0).stop;
}.play
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Did you know: You can do sharps and flats in a scale with s & b.

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \dfd,
		dur: 1/3,
		//scale: Scale.major, // The major scale is the default scale so uncommenting has no effect. Try some other scales.
		degree: Pseq([1, 2, 3, 1b, 2, 3, 1b, 2, 5s, 5, 4, 3, 1, 2, 3, 1b, 2, 3, 1b, 2, 5s, 5, 4, 3, 3b], inf),
		amp: 0.65,
	])
).play
)

// Here's that list of scales again.
Scale.directory

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Put this at the end of your startup, before the last parenthesis to make it automagically play when SC boots.
// Real handy for installations.

s.waitForBoot{
	(
		Pdef(0,
			Pbind(*[
				type: \cln,
				snd: \dfd,
				amp: 1,
			])
		).play
	);
};

// Discuss the use of tiny computers in installation scenarios. Maybe you could use a laptop instead?
// Walkthrough setting up SuperColider to start up autoMagically on reboot.
// If that is something you would like to try then check out these resources:
// https://github.com/iccir/Fermata
// http://tbswitcher.rugarciap.com/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

( // Run this block a bunch of times to update it while it's running.
Pdef(0,
	Pbind(*[
		instrument: Pdup(inf, Pxrand([\dfd, \saw, \sqr, \sin, \fmx], inf)),
		scale: Scale.harmonicMinor,
		degree: Pdup(inf, Plprand(0, 7)),
		octave: Pdup(inf, Plprand(4, 7)),
		wid: Pdup(inf, Plprand(0.01, 0.5)),
		pan: Pdup(inf, Pmeanrand(0.0, 1.0)),
		amp: Pwhite(0.125, 0.5),
		dur: 1/8,
	])
).play;
Pdef(0).fadeTime = 8.0;
)

/*
The other way around also works. So if you have a synthdef that you like, and would like to run that
inside SuperClean, you can. You just have to make sure to evaluate it first.
Mileage will most certainly vary tho, as different SynthDefs have different keys exposed in different ways.

The above .fadeTime trick will not work the same way when we are inside SuperClean.
There are other ways to arrive at the equivalent mechanics tho.
Here's one way using Pspawn:
*/
(
Pdef(0,
	Pseed(128,
		Ppar(
			15.collect{ // Try changing this to 1 and go up from there to figure out what's going on.
				Pspawn( // Read the docs on this one also.
					Pbind(*[ // Discuss and demo multiple evaluations of Pbind.
						method: \seq,
						pattern: Pfunc{|ev|
							Pbind(*[
								type: \cln,
								snd: Pdup(inf,Prand([\r, \fmx],inf)),
								snd: \fmx,
								dur: 1/8 * Pdup(inf, Pwrand2((1 .. 7), [1, 2, 8, 4, 4, 2, 1], inf)),
								amp: Pseg([1, 1.45, 1.45, 1], Pexprand(7.5, 30), \exp, 1) - 1,
								hr1: Pdup(inf, Pexprand(1, 4)).round,
								hr2: Pdup(inf, Pexprand(1, 4)).round,
								hr3: Pdup(inf, Pexprand(1, 4)).round,
								hr4: Pdup(inf, Pexprand(1, 4)).round,
								fdb: Pdup(inf, Pexprand(0.1, 4.125)),
								mi2: Pdup(inf, Pexprand(0.1, 4.125)),
								mi3: Pdup(inf, Pexprand(0.1, 4.125)),
								mi4: Pdup(inf, Pexprand(0.1, 4.125)),
								en1: Pdup(inf, Pexprand(0.1, 0.6)) - 0.1,
								en2: Pdup(inf, Pkey(\en1) + Pexprand(0.1, 0.6)),
								en3: Pdup(inf, Pkey(\en1) + Pkey(\en2) / Pexprand(0.2, 0.7)),
								en4: Pdup(inf, Pkey(\en1) + Pkey(\en2) / Pkey(\en3) + Pexprand(0.3, 0.8)),
								cu1: Pdup(inf, Pwhite(-8.0, 8.0)),
								cu2: Pdup(inf, Pwhite(-8.0, 8.0)),
								cu3: Pdup(inf, Pwhite(-8.0, 8.0)),
								cu4: Pdup(inf, Pwhite(-8.0, 8.0)),
								pan: Pdup(inf, Pwhite(0.0, 1.0)),
								lpf: 20000 - Pdup(inf, Pexprand(20, 20000)),
								octave: Pdup(inf, Pwrand2((1 .. 5), [1, 1, 2, 4, 2], inf)),
								scale: Pdup(inf, Pxshuf([
									Scale.superLocrian.tuning_(Tuning.sept1),
									Scale.whole.tuning_(Tuning.sept1),
									Scale.dorian.tuning_(Tuning.sept2),
									Scale.bartok.tuning_(Tuning.sept1),
									Scale.mixolydian.tuning_(Tuning.sept2)
								], inf)),
								degree: Pdup(inf, Pxshuf((0 .. 7), inf)),
								gtranspose: Pdup(inf, Pwhite(0, 6)),
								mtranspose: Pdup(inf, Pexprand(1, 5.0).round) - 1,
								calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}}, // bling
								stretch: Pseg([1, 1, 2, 2, 2], Pexprand(15, 30), \lin, inf),
								sustain: 1.75,
								legato: 1.75,
								dark: 0.75,
								hpf: 100,
							])
						},
					])
				)
			}
		)
	)
).play
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// \kps can bnd
// Interesting clipThrough phenomena in the example below (be warned, this is kind of harsh, so,
// adjust volume accordingly).

(
Pdef(0,
	Pseed(6,
		Pbind(*[
			type: \cln,
			snd: \kps,
			dur: 1,
			crv: -8,
			freq: Pseg(Pexprand(32, 3200), Phprand(1.0, 128.0), \exp, inf).trace,
			amp: Pkey(\freq).expexp(40, 15000, 6/7, 1/7),
			atk: Phprand(2.0, 4.0),
			crv: 0,
			rel: Phprand(2.0, 4.0),
			legato: Plprand(1.0, 4.0),
			sustain: Phprand(8.0, 64),
			bnd: Pmeanrand(-1.0, 1.0) / 8,
			tnh: 1,
			tnb: 10000,
			tng: 100,
			cav: 1,
			ocd: Pseg(Phprand(0.0, 1.0), Phprand(1.0, 128.0), \wel, inf),
			ocq: Pseg(Phprand(0.0, 1.0), Phprand(1.0, 128.0), \wel, inf),
		])
	)
).play
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// SC sends OSC messages from the language to the server, that happens pretty much all of the time.
// Reaper can receive OSC messages.

// Open OSC coms.
n = NetAddr("127.0.0.1", 8000);
// If you dig this, you could put it in your startup file for added conveninence.

// Set up receiving OSC in Reaper.

// Send a single OSC message. Very handy when we are mapping.
n.sendMsg("/grainSize", exprand(0.01, 1.0));
n.sendMsg("/grainOctave", (0.0, 0.1 .. 1.0).choose);
n.sendMsg("/grainTime", exprand(0.01, 1.0));
n.sendMsg("/density", exprand(0.01, 1.0));

// Four patterns sending OSC control and one pattern sending audio.
(
Pdef(0,
	Pbind(*[
		type: \r,
		value: Plprand(0.0, 1.0, inf),
		send: Pfunc { |e| n.sendMsg("/grainSize" , e[\value] ) },
		dur: 1/8 * Pwhite(1, 5),
	])
).play;

Pdef(1,
	Pbind(*[
		type: \r,
		value: Pxshuf((0.0, 0.1 .. 1.0), inf),
		send: Pfunc { |e| n.sendMsg("/grainOctave" , e[\value] ) },
		dur: 1/8 * Pwhite(1, 5),
])
).play;

Pdef(2,
	Pbind(*[
		type: \r,
		value: Plprand(0.0, 1.0, inf),
		send: Pfunc { |e| n.sendMsg("/grainTime" , e[\value] ) },
		dur: 1/8 * Pwhite(1, 5),
	])
).play;

Pdef(3,
	Pbind(*[
		type: \r,
		value: Pdup(8, Plprand(0.5, 0.75, inf)), // Note that we are using a fraction of the value range,
		send: Pfunc { |e| n.sendMsg("/density", e[\value] ) }, // with maintained resolution. Compare MIDI CCs.
		dur: 1/8 * Pwhite(1, 5),
	])
).play;

Pdef(4,
	Pbind(*[
		type: Pwrand2([\cln, \r], [1, 2.25], inf),
		snd: \drm,
		tun: Pxshuf((0, 0.15 .. 5), inf),
		fed: Pxshuf((0, 0.1 .. 2.5), inf),
		dur: 1 / Pdup(8, Plprand(1, 5)),
		amp: Plprand(1.0, 8.0),
		rel: Pkey(\dur),
		crv: -8,
		pan: Pmeanrand(0.0, 1.0),
		cav: Pdup(Plprand(1, 3), Pwrand2([0, 1], [1, 2], inf)),
		cai: Pdup(Plprand(1, 3), Pseq([0, Plprand(0.0, 1/32, 1)], inf)),
	])
).play;
)

// Some other useful programs that can receive OSC messages:
// VDMX%: https://vidvox.net/
// HourGlass: https://xenakios.wordpress.com/downloads/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

MIDIFunc.trace(true); // Enable dumping (see all incoming messages).
MIDIFunc.trace(false); // Disable dumping.

(
~slider1 = 127 - exprand(1,128) - 1; // Set environment variable ~slider to a stochastic value on each evaluation.
MIDIdef.cc(\slider1, { // This MIDIdef only listens for control change messages.
	arg val, num; // Get the CC number and the CC value in as arguments.
	~slider1 = val; // This is where the cc value comes in.
}, 2); // The cc number (which knob), change this to match your controller.

~slider2 = 0;
MIDIdef.cc(\slider2, {
	arg val, num;
	~slider2 = val;
}, 3);

~slider3 = 127;
MIDIdef.cc(\slider3, {
	arg val, num;
	~slider3 = val;
}, 4);

Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		hr1: Pdup(inf, Pxshuf((0 .. 7), inf)), // Harmonic ratios and scale chosen only at evaluation.
		hr2: Pdup(inf, Pxshuf((0 .. 7), inf)),
		hr3: Pdup(inf, Pxshuf((0 .. 7), inf)),
		hr4: Pdup(inf, Pxshuf((0 .. 7), inf)),
		scale: Pdup(inf, Pxshuf([
			Scale.harmonicMinor,
			Scale.minor,
			Scale.lydianMinor,
			Scale.melodicMinorDesc
		], inf)),
		degree: Plprand(0, 6), // Degree, octave and amp are chosen at each event.
		octave: Plprand(3, 6),
		amp: Plprand(0.5, 0.75),
		dur: Pfunc{~slider1.linexp(0,127, 0.1, 0.5)}, // Duration controlled by ~slider1 variable.
		lpf: Pfunc{~slider2.linexp(0,127, 20, 20000)}, // Low pass filter controlled by ~slider2 variable.
		cav: 1,
		cai: Pfunc{~slider3.linlin(0,127, 0.0, 1.0)}, // cav input controlled by ~slider3 variable.

	])
).play
)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Cmd + alt + ↓ demonstration.
(
Pdef(5,
	Pbind(*[
		type: \cln,
		snd: \drm,
		dur: 1/9,
		pew: Phprand(0.3, 1.0),
		tun: Plprand(0.0, 8.0),
		fed: Plprand(0.0, 1.0),
		amp: Plprand(0.25, 0.75),
		legato: Plprand(1.0, 8.0),
		sustain: Plprand(1.0, 8.0),
		pan: Pseq([Plprand(0.0, 1.0, 1), Phprand(0.0, 1.0, 1)], inf),
		hpf: Pseg([20, 200, 20], Phprand(10.0, 30.0), \exp, inf),
		hal: Pseg(Plprand(0.0, 0.5), Phprand(10.0, 30.0), \wel, inf),
		rts: Pseg(Plprand(0.125, 2.0), Phprand(10.0, 30.0), \wel, inf),
		fsh: Pseg(Plprand(0.0, 20.0), Phprand(10.0, 30.0), \wel, inf),
		rma: Pseg(Plprand(0.0, 1.0), Phprand(10.0, 30.0), \wel, inf),
		rmf: Plprand(200, Pseg(Plprand(200, 800), Phprand(10.0, 30.0), \wel, inf)),
		shp: Pseg(Plprand(0.0, 1.0), Phprand(10.0, 30.0), \wel, inf),
	])
).play;
)
