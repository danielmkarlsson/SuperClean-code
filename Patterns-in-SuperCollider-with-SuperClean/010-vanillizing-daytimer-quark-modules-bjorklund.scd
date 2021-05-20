// Please join me at the next SuperCollider meetup at Notam,
// the vibe there is really nice with lot's of folks sharing code:
// https://notam.no/event

// Get on Discord, it's great
// https://discord.gg/TbBtCXxp5p

// About asking for help outside of our little SuperClean bubble:
// If we post our whole pattern thing that we are working on inside SuperClean,
// people might not immediately understand what is going on.
// Instead we should strive to vanillize and compartmentalize to a short snip.

(
Pdef(0,
	Pbind(*[
		dur: 1 / Pwhite(3, 5),
	])
).play
)
// You might ask on Discord, or some other forum:
// "How can I make the above repeat x times"

(
Pdef(0,
	Pbind(*[
		dur: 1 / Pstutter(8, Pwhite(3, 5)),
	])
).play
)
// A stranger on a forum can then edit your minimal vanillized code and answer:
// "How about you try Pstutter?"

// Update SuperClean now to try the below feature which is new at the time of writing.

// If you are anything like me, you don't like to type many chars unnecessarily.
~clean.lsf("~/rnb")
// The above line is now an alias for the below line.
~clean.loadSoundFiles("/Users/your-user-name/rnb/")
// Both work, one is explicit, the other uses less chars.

Quarks.gui // Opens up a gui where you see a list of Quarks and can install multiple quarks at the same time.
// This can at times be quite fragile.

// You could also install just one specific Quark by git URL:
Quarks.install("https://github.com/supercollider-quarks/DayTimer"); // This is what I prefer as it is more robust

// If you can not, or do not want to install git, then you can still download things you find on the web,
// and then install them manually this way:
Quarks.install("~/Downloads/some-thing-i-found-on-the-internet");

// You can (un)install a Quark by name:
Quarks.install("FooBar");
Quarks.uninstall("FooBar");

// After installing a quark we need to recompile the class library.

d = DayTimer(\today); // Running this line should now work as we have installed the DayTimer quark.
d.start; // This starts all of our DayTimer keys.

d.putDate(\perMin, { |date| date.second == 0 }, { "full minute!".postln });
// The above should post something once a minute.
d.removeAt(\perMin) // This line removes the above DayTimer key.

// Find more DayTimer examples in the docs: http://quark.sccode.org/DayTimer/DayTimer.html

d.putDate(\perSec, { |date| (0 .. 59).includes(date.second) }, { "every second".postln }); // Same thing but every second.
d.stop // This stops the posts but the key is still there, inside DayTimer, waiting to carry out our instruction.
d.start // See, it's still there.
d.removeAt(\perSec) // This line removes the \perSec key.

~clean.modules; // Run this line to see the current order of per event effects in SuperClean.

(
d.putDate(\perSec, { |date| (0 .. 59).includes(date.second) }, {
	(
		~clean.orderModules(['sound', 'out_to', 'map_from', ['hpf', 'bpf', 'lpf', 'shp', 'env', 'fsh', 'tri', 'oct', 'rma', 'dst', 'enh', 'lhf'].scramble]); // .scramble means take this list and reorder the elements
	)
});
)
// The above block scrambles the order of per event effects once per second.

(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [4, 1], inf),
		snd: Pwrand2([\drm, \dfd], [2, 1], inf),
		tun: Pstutter(8 ,Plprand(-4.0, 8.0).round(0.25)),
		dur: 1/8,
		octave: Plprand(3, 6),
		fed: Plprand(0.0, 1.0),
		pan: Pwhite(0.0, 1.0),
		shp: Plprand(0.0, 1.0),
		dst: Plprand(0.0, 0.9),
		tri: Plprand(0.0, 1.0),
		amp: Plprand(1/9, 1.0),
		lhf: Pwhite(0.2, 0.9),
		smr: Plprand(0.0, 1.0),
		ocu: Plprand(0.0, 1.0),
		ocd: Plprand(0.0, 1.0),
		ocq: Plprand(0.0, 1.0),
		lpf: Phprand(2000, 20000),
		legato: Phprand(1.0, 10.0),
		dark: 1/13,
	])
).play
)

// The above pattern block picks an order for the effects per event,
// so we don't get any hickups when the order changes.
// Still tho, it might be fun to sequence the order inside our pattern.
(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [4, 1], inf),
		snd: Pwrand2([\drm, \dfd], [2, 1], inf),
		tun: Pstutter(8 ,Plprand(-4.0, 8.0).round(0.25)),
		dur: 1/8,
		octave: Plprand(3, 6),
		fed: Plprand(0.0, 1.0),
		pan: Pwhite(0.0, 1.0),
		shp: Plprand(0.0, 1.0),
		dst: Plprand(0.0, 0.9),
		tri: Plprand(0.0, 1.0),
		amp: Plprand(1/9, 1.0),
		lhf: Pwhite(0.2, 0.9),
		smr: Plprand(0.0, 1.0),
		ocu: Plprand(0.0, 1.0),
		ocd: Plprand(0.0, 1.0),
		ocq: Plprand(0.0, 1.0),
		lpf: Phprand(2000, 20000),
		legato: Phprand(1.0, 10.0),
		dark: 1/13,
		fnc: Pfunc({~clean.orderModules([
			'sound', 'out_to', 'map_from', [
				'hpf', 'bpf', 'lpf', 'shp', 'env', 'fsh', 'tri', 'oct', 'rma', 'dst', 'enh', 'lhf'
			].scramble
		])
		}),
	])
).play
)
// Maybe I'm imagining things, but I think that sounds better.

// Wait but... There are other effects right? Yes, those work a little differently.
// They are called global effects. Some examples of those are:

hal:
dark:
dla:
rin:
tnh:

// Global effects receive the summed signal of all of our samples and synths.
// This is in contrast to per event effects like lpf and shp which are applied per event.
// Global effects are applied in parallel, each on their own, and then sent out on the aux we choose.

(
~clean.orderModules([
			'sound', 'out_to', 'map_from', [
				'hpf', 'bpf', 'lpf', 'shp', 'env', 'fsh', 'tri', 'oct', 'rma', 'dst', 'enh', 'lhf'
]])
)
// The above block let's you manually scramble a new ordering on the per event effects.

~clean.orderModules(['lpf', 'shp']) // You could change the order on just two effects.
~clean.orderModules(['shp', 'lpf']) // Flip 'em back and forth to listen and decide which you prefer for your music.

// You could use DayTimer to sequence Pdefs, maybe for a show, or an installation, turn them on or off on a schedule.
// This could be a homework.

// You could use DayTimer to sequence turning Pdefs on or off stochastically very often, to make a kind of stochastic form.
// We could think of this as a conductor instructing us to run between different Pdefs and play them when they were cued in.
// This could be a homework.

/*
From Wikipedia article on Euclidean rhythm:

The Euclidean rhythm in music was discovered by Godfried Toussaint in 2004
and is described in a 2005 paper "The Euclidean Algorithm Generates Traditional Musical Rhythms".
The greatest common divisor of two numbers is used rhythmically giving the number of beats and silences,
generating almost all of the most important world music rhythms, (except Indian). The beats in the
resulting rhythms are as equidistant as possible; the same results can be obtained
from the Bresenham algorithm.
*/

// Run the below line to install Bjorklund.
Quarks.install("https://github.com/supercollider-quarks/Bjorklund");

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        rps: Pexprand(4, 8),
		dur: (Pstutter(Pkey(\rps), Pbjorklund2(Pxshuf([7, 9, 11, 13, 15], inf), 16, inf)) / 8).trace,
		//dur: Pbjorklund2(3, 8, inf) / 8, // comment out this line for more variation
        amp: Pexprand(0.1, 3.0),
		//amp: 0.75, // comment out this line for more variation
    ])
).play(quant:1);
)

// The helpfile for Bjorklund should be there, but someone was lazy in 2015 so it is not:
// http://quark.sccode.org/Bjorklund/
// No worries!
// Cmd + D while text cursor is on Pbjorklund2 to bring up the help for that inside SuperCollider.

// Swedish word of the day: Klangberusad = Timbrally intoxicated.
