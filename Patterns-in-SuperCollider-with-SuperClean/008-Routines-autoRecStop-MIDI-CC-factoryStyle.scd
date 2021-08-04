/*
We began by talking about The Outside World as a kind of theme for today's lesson. I encouraged everyone
to sign up at

scsynth.org

I vouched for the place and said that it is a nice place, where people get treated alright.
I have asked questions there and I have been very happy with the interactions I've had there.
People are very friendly, and they genuinely want to help out. It is alright to ask anything there. For reals reals.

Also I want you to please attend The NOTAM SC meetups which are just amazingly wonderful hangout
sessions where all kinds of different SC folk show each other what they are working on and ask each other
questions about all kinds of strategies of organizing sound and making music. As we've talked about before there
are lots of different paradigms within SuperCollider.

https://notam.no/events/

*/


( // Routines is one of those other paradigms. The { } (curly braces) we've seen before inside of a Pfunc.
Routine{ // A Routine is way to ask SC to do one thing, and then another thing. Order of execution downwards.
	"Hi!".postln; // .postln is functionally equivalent to .trace here in this other paradigm.
	1.wait; // Here we tell the computer to wait one second before moving down to the next line.
	"Bye?".postln; // After the wait time, the computer bids us farewell.
}.play // In the lesson I had a .fork here, but .play is more familiar to us, so I went with my original intention.
)

// Let's put this to use in an actual use case that I have run into.

(
Routine{
	s.record; // Start recording.
	1.wait; // Wait 1 second.
	( // This here is our regular old Pattern style that we know from before.
		Pdef(0,
			Pbind(*[
				type: \cln, // Look, here is the SuperClean key even.
				snd: \fmx,
				dur: Pwhite(0.1, 1.0),
				freq: Plprand(40, 400),
				pan: Pmeanrand(0.0, 1.0),
				legato: 8,
			])
		).play
	); // Everything is the same down to this line here.
	8.wait; // Now we let the pattern run for 8 seconds.
	Pdef(0).stop; // Then we stop the pattern automagically.
	8.wait; // Wait 8 seconds, which I chose because of the legato time, I want the music to ring out.
	s.stopRecording; // Now, after the music has had a chance to get completely quiet, we stop the recording.
}.play // Enclosing curly brace of the Routine, we can .play it, we know this word from before.
) // Now check your sc-rec directory for a new file. Maybe open it in Reaper and mess around with it.
// If you wanted to say, record a bunch of music over night, you could use this approach for that.
// Another thing we talked about is that this works regardless of crazy time bending stuff inside the pattern.
// This is because we express when we want things to happen in seconds, inside a Routine, counted on the systemclock.


// Here's an example of combining two ideas we've looked at before. Using "Pseed as shared data stream" and
// "One List Many Streams", combined with environment variables (the tildes ~) and Pfunc on the receiving end.
~freq = 32 * Pxshuf([1, 3, 5, 7,9, 11], inf).asStream; // This list gets read by both patterns.
// Every other parameter below is the same in the two patterns.
// They both calculate the same values because they have the same seed and the same instructions, in the same order.
(
Pdef(0,
	Pseed(0,
		Pbind(*[
			type: \cln,
			snd: \dfd,
			freq: Pfunc({~freq.next}), // See, here is one receiver of values from the list above.
			amp: Pwhite(2.0, 4.0),
			dur: (1 / Pwhite(5, 11)).trace,
			rel: Pkey(\dur) * 4,
			res: 1.01,
			legato: 2,
		])
	)
).play;

Pdef(1,
	Pseed(0,
		Pbind(*[
			type: \cln,
			snd: \kps,
			freq: Pfunc({~freq.next}), // Another reciever, which gets a unique value.
			amp: Pwhite(0.5, 1.0),
			dur: (1 / Pwhite(5, 11)).trace,
			rel: Pkey(\dur) * 4,
			res: 1.01,
			legato: 2,
		])
	)
	).play;
)

// Here's an example that triggers samples and sends CC values in sync.
// Check out the companion .rpp and .mov walkthrough for MIDI learn in Reaper.
// Make sure you have enabled the IAC Driver in the Audio MIDI Setup app.
// Also enable the MIDI lines (around line 14) in your startup.scd
// If you have config trouble you can't resolve on your own,
// hit me up in the chat and we'll work on it together.
// When IAC biz is sat up let's use this line to map a CC to a parameter in Reaper
m.control(0, 11, 127);
// Check the companion .mov to see me do the mapping.

(
Pdef(0,
	Pseed(0,
		Pbind(*[
			type: \cln,
			snd: \mmd,
			dur: 1 / Pdup(Pwhite(5, 11), Pwhite(5, 11)),
			num: Pwhite(0, 12),
			pan: Pwhite(0.0, 1.0),
			amp: 1,
			legato: 1,
		])
	)
).play(quant:1);

Pdef(1,
	Pseed(0,
		Pbind(*[
			type: \midi,
			midicmd: \control,
			chan: 0,
			midiout: m,
			ctlNum: 10,
			dur: 1 /Pdup(Pwhite(5, 11), Pwhite(5, 11)),
			control: Pwhite(0, 127),
			pan: Pwhite(0.0, 1.0), // Needed for symmetry with Pdef(0)
		])
	)
).play(quant: 1);
)

// The above works for a couple of CC'c for sure, but what if you want to add a _bunch_?

( // First it's the same sample playing pattern from above.
Pdef(0,
	Pseed(0,
		Pbind(*[
			type: \cln,
			snd: \mmd,
			dur: 1 / Pdup(Pwhite(5, 11), Pwhite(5, 11)),
			num: Pwhite(0, 12),
			pan: Pwhite(0.0, 1.0),
			amp: 1,
			legato: 1,
		])
	)
).play(quant:1);

// Here, in the second part of this code block, is an example of a Pbind "factory".
~ccs={|seed,ctlNum,ccVal,duration| // Arguments here look like | |'s, this is a very common syntactic sugar.
	var cc = // A variable called cc, which we'll see how it connects below on line 157.
	Pbind(*[ // The keys in this part can be shared between all of the events made in the factory.
		type: \midi,
		midicmd: \control,
		midiout: m,
		chan: 0, // Static value. All of the events generated will be on channel zero
		ctlNum: ctlNum, // Here's an input for which controller number, generated in argument 2 in th Pdefs below
		control: ccVal, // The input for the contrl value, generated in argument 3 in th Pdefs below
		dur: 1 / Pdup(Pwhite(5, 11), Pwhite(5, 11)), // Stochastic calculation. All of the events get the same result.
	]);
	Pseed(seed,Pseq([cc], inf)); // Bake together the seed with the variable cc (each new Pbind).
};
// Let's take a look at the order of the different parameters below in our Pdefs.
// The name of the Pdef is 1, a global variable called ~ccs, seed is 0, ctlNum is 10, ccVal the Pwhite at the end
Pdef(1,~ccs.(0, 10, Pwhite(0, 127))).play(quant:1); // Low shelf freqency.
Pdef(2,~ccs.(1, 11, Pwhite(0, 127))).play(quant:1); // High shelf freqency.
//Pdef(3,~ccs.(2, 12, Pwhite(0, 127))).play(quant:1); // And so on until 127 parameters.
// After which you could change chan in th Pbind above to add even more
)

// We can stop our Pdefs just like we have before, even tho they are in this factory style.
(
Pdef(1).stop;
Pdef(2).stop;
Pdef(3).stop;
)

// hal (pronounced hall) can go long (approaching infinity in fact).
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: 0.001,
		crv: -8,
		dur: Pseq([0.1, 0.1, 0.1, 999], 1),
		pan: Pseq([0.0, 1.0, 0.5], 1),
		hal: 1,
		rts: 999,
	])
).play
)

// Press cmd+. before running the next example.
// hal stays in it's lane (gives you mono output when you give it mono input).
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: 0.001,
		crv: -8,
		dur: Pseq([0.1, 0.1, 0.1, 999], 1),
		pan: Pdup(4, Pwhite(0, 1)),
		hal: 1,
		rts: 999,
	])
).play
)

// hal won't try to kill you (doesn't explode when you change the parameters really fast).
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: Pwhite(0.001, 1.0),
		crv: Pwhite(-8.0, 8.0),
		dur: Pexprand(0.001, 1.5),
		pan: Pdup(4, Pwhite(0.0, 1.0)),
		hal: 1,
		rts: Pexprand(0.1, 4000.0),
		bld: Pwhite(0.0, 1.0),
		edf: Pwhite(0.0, 1.0),
		ldf: Pwhite(0.0, 1.0),
		hlp: Phprand(5000, 20000),
		hhp: Plprand(20, 80),
	])
).play
)

// Here's an example that uses Pseg to slowly interpolate between different values very smoothly indeed
(
Pdef(0,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \kps,
            amp: Pseg(Plprand(1.0, 2.0), Pwhite(10.0, 20.0), \exp, inf),
            freq: Pseg(Pexprand(80, 2000), Pwhite(45.0, 90.0), \sin, inf).trace,
            lhf: Pseg(Plprand(0.125, 0.5), Pwhite(30.0, 60.0), \sin, inf),
            atk: Pseg(Plprand(0.0, 0.6), Pwhite(10.0, 20.0), \wel, inf),
            rel: Pseg(Pwhite(0.02, 2.0), Pwhite(10.0, 20.0), \exp, inf),
            crv: Pseg(Pwhite(-8.0, 8.0), Pwhite(10.0, 20.0), \wel, inf),
            dur: Pseg(Pexprand(0.015, 0.15), Pwhite(10.0, 20.0), \exp, inf),
            hal: Pseg(Phprand(0.5, 1.0), Pwhite(10.0, 20.0), \wel, inf),
            rts: Pseg(Pexprand(0.03, 3000.0), Pwhite(45.0, 90.0), \exp, inf),
            bld: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \wel, inf),
            edf: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \wel, inf),
            ldf: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \wel, inf),
            hlp: Pseg(Phprand(5000, 20000), Pwhite(10.0, 20.0), \wel, inf),
            hhp: Pseg(Plprand(20, 80), Pwhite(10.0, 20.0), \wel, inf),
            pan: Pseq([0, 1], inf),
            sustain: 1.25,
            dla: Pseg(Phprand(0.5, 1.0), Pwhite(10.0, 20.0), \wel, inf),
            dlf: 0.94,
            dlt: 16,
        ])
    )
).play
)
