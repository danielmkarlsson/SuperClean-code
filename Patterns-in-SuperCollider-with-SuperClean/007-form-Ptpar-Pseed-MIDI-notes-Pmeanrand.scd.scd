/*
I started off by talking about Sonobus which I got working sharing high quality sound between two computers
over the internet. Please install this and try it out on your machine:

https://sonobus.net/

Wouldn't it be cool to play music with someone else who was on the other side of the world with workable
realtime feel?

Next I showed some examples of working with form.
On a low level we could do this kind of thing with rests and finite pattern streams
*/

(
Pdef(0,
	Pbind(*[
		type: Pseq([\cln, \r, \r], 1), // \r for rest, write it out like this if you prefer: \rest
		amp: 0.65,
		snd: \sin,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: Pseq([\r, \cln, \r], 1), // Here in Pdef(1) the \cln event is on the 2nd place in the Pseq
		snd: \saw,
	])
).play(quant:1);

Pdef(2,
	Pbind(*[
		type: Pseq([\r, \r, \cln], 1), // Now it's on the third event.
		snd: \sqr,
	])
).play(quant:1);
)

/*

Imagine trying to keep track of where you are in time with this method when you have a bunch of different
Pdefs, with a bunch of different stuff happening in them. It could be done, but it would take a long time, and
since it would be low level manual work, it would most likely be very error prone and most definitely
exhausting. Let's take a look another approach.

*/

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		degree: Pseq([7, 5, 0], 3), // repeat this Pseq 3 times
		dur: 1/3,
		amp: 0.7,
		tempo: 1,
	])
);
Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \saw,
		degree: Pseq([5, 10, 12, 9], 2),  // repeat this Pseq 2 times
		dur: 1/5,
		pan: 0,
		amp: 0.6,
		tempo: 1,
	])
);
Pdef(2,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		degree: Pseq([0, 2, 6, 7, 3], 4),  // repeat this Pseq 4 times
		dur: 1/7,
		pan: 1,
		amp: 0.575,
		tempo: 1,
	])
);
Pdef(3,
	Ptpar([ // here is a list of start times and pattern names
		0.0, Pdef(0), // start Pdef(0) at beat 0
		3.5, Pdef(1), // start Pdef(1) at beat 3.5
		5.5, Pdef(2), // start Pdef(2) at beat 5.5
	])
).play(quant:1);
)

/*

Form is something we perceive. It exists in each of our minds. I think of it as relationships between musical
material. Some kind of connectivity is needed. Let's take a look at how we can use Pseed as a shared data
stream and also show how we can send MIDI note data to Reaper over the IAC bus. Please contact me in the Element
chat if you'd like to take a look at your configuration to get the example below working in sync. The main
thing is to set s.latency and m.latency to the same value in your startup.scd
I use 0.3 for both. Please open 007-Pseed-as-shared-data-stream.rpp before running the below example.

*/

(
Pdef(0, // SuperClean events
    Pseed(222,
        Pbind(*[
            type: \cln,
            snd: \mmd,
            rel: 0.5,
            num: Pxrand([1, 2, 3, 4, 5], inf), // try switching the top down order of these two lines
            dur: Pwrand([1/8, 1/4, 1/2], [7, 1, 1].normalizeSum, inf).trace, // symmetry falls apart
            pan: Pwhite(0.0, 1.0),
            legato: 1,
            amp: 1,
        ])
    )
).play(quant:1);

Pdef(1, // MIDI note events
    Pseed(222,
        Pbind(*[
            type: \midi,
            midiout: m,
            chan: 0,
			scale: Scale.harmonicMinor,
            degree: Pxrand([1, 2, 3, 4, 5], inf),
            dur: Pwrand2([1/8, 1/4, 1/2], [7, 1, 1], inf),
            pan: Pwhite(0.0, 1.0), //dummy operation needed for symmetry, try commenting out
            legato: 1,
        ])
    )
).play(quant: 1);

CmdPeriod.doOnce { // this is _really_ handy when working with MIDI
    // release any hanging notes when pressing Cmd + .
    m.allNotesOff(0); // it works by running this line everytime you hit Cmd .
}; // Yay, no more stuck notes!
)

/*

I often want to generate one stream of numbers and have many Pdefs reading from it. The Pdefs will kindly ask for the next
number and recieve their unique number. This is not a duplication of a number given to some other Pdef. It is the next number
in a stream of numbers.

*/

(
~degree = Pseq((0 .. 7).mirror1, inf).asStream; // we've seen ~ before, when we've loaded in sound files
~octave = Pseq((4 .. 7).mirror1, inf).asStream; // this character is called tilde
~mtranspose = Pseq((0 .. 4).mirror1, inf).asStream; // it is used here as an environment variable
~scale = Pstutter(Pexprand(8, 16), Pseq([
    Scale.major.tuning_(Tuning.sept1),
    Scale.minor.tuning_(Tuning.sept1),
    Scale.harmonicMinor.tuning_(Tuning.sept1),
    Scale.aeolian.tuning_(Tuning.sept1),
    Scale.locrian.tuning_(Tuning.sept1),
    Scale.mixolydian.tuning_(Tuning.sept1),
].mirror1, inf)).asStream;
~pan = Pseq((0.0, 0.025 .. 1).mirror1, inf).asStream; // but most folks happily call these global variables
//~pan = Pseq([0, 1], inf).asStream; // enable for single speaker multichan
~aux = Pxshuf((0 .. 3), inf).asStream; // they can communicate outside the scope of a Pdef or even different .scd files

Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}), // here on the recieving end we need to wrap our global variable in a Pfunc
		octave: Pfunc({~octave}), // Pfunc as in a function, not Parliament's Mothership connection kind of Pfunk
        degree: Pfunc({~degree}), // this is bringing in a tiny bit of another paradigm of writing things with functions in sc
		pan: Pfunc({~pan}), // this is usually where we end up if we want something very esoteric. "Roll your own in a Pfunc"
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 3,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 1 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 1 * Pkey(\dur).linexp(1, 7, 8, 2),
        tempo: Pstutter(Prand([6, 12, 18, 24], inf), Pseq([1.5, 2.25, 2, 5.75, 2.5, 4.25, 4.0, 5.75, 5.5].reverse, inf)).trace,
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 4,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 2 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 2 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(2,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 5,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 3 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 3 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(3,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 6,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 4 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 4 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(4,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 7,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 5 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 5 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(5,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pstutter(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 8,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 6 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 6 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);
)

// try stopping these one at a time
Pdef(0).stop;
Pdef(1).stop;
Pdef(2).stop;
Pdef(3).stop;
Pdef(4).stop;
Pdef(5).stop;

// an example using bow which is a digital wave guide physical model of a bowed instrument
(
var a = Pwhite(0.0, 0.25).asStream; // you could do a similar thing as above, but with variables
var b = Pwhite(0.75, 1.0).asStream; // what if we wanted to use both these variables on the same key?
Pdef(0,
	Pseed(263,
		Pbind(*[
			type: \cln,
			snd: \bow,
			frc: Pexprand(0.1, 1.0),
			pos: Pexprand(0.07, 0.7),
			octave: Pstutter(Pexprand(1, 5), Pxrand((1 .. 6), inf)),
			scale: Scale.aeolian.tuning_(Tuning.vallotti),
			degree: Pstutter(Pexprand(1, 5), Pxrand((0 .. 7), inf)),
			mtranpose: Pstutter(Pexprand(1, 5), Pxrand((-11 .. 3), inf)),
			amp: Pstutter(2, Pexprand(0.444, 0.66666 / Pkey(\octave).linexp(1, 6, 1, 2))),
			atk: Pexprand(1.0, 15.0) - 1,
			hld: Pwhite(0.5, 4.0),
			rel: Pwhite(5.0, 10.0),
			crv: Pwhite(0.0, 8.0) - Prand([0, 8], inf),
			sustain: Pexprand(19.0, 60.0),
			legato: Pexprand(19.0, 60.0),
			pan: Pseq([Pfuncn({ a.next }, 1), Pfuncn({ b.next }, 1)], inf).trace, // Pfunc let's us weave together two vars
			lhf: Pexprand(0.25, 0.75), // .next moves things along on the recieving end
			bpr: Pseg([1, 1/256], Pwhite(30, 90), \sine, inf),
			dur: 1 / Pwrand2([1/4, 1/2, 1, 2, 4, 5], [8, 6, 4, 2, 1, 1/2], inf),
			dla: 1/64,
			dlf: 0,
			dlt: 16,
			dark: 1/16,
		])
	)
).play(quant:1);
)

/*

Next we took a look at the docs:

http://doc.sccode.org/Classes/Event.html

Down at the bottom there is a nice picture. The docs can sometimes feel frustrating. A nice picture
can really help. Not all of those keys in that picture work inside of SuperClean because of reasons.
For more information about this, please look at:

superclean-parameter-names-and-value-ranges.scd

All of the keys in that picture are convenient but we can perform all of those actions on those number
values ourselves. Sometimes that can be hard tho. Let's start with an easy one.

*/

// all ctranspose does is chromatic transpostion, this is the equivalent of adding an integer to midinote
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		dur: 1/8, //Pn allows us to ask for an infinite amount of values for the finite Pseries within it
		midinote: Pn(Pseries(60, 2, 5), inf) + 1, // change this number after the +
		//ctranspose: Pn(Pseries(0, 2, 5), inf) + 1, // uncomment the above line and try ctranspose
		tempo: 1, // Pseries counts upward, takes inital value, next value (step size) and amount
		amp: 1,
	])
).play
)

/*

\root is not available in SuperClean because reasons, but you can use Ctranspose as a dropin replacement.
Another convenient key that is available is \harmonic which is a handy way of getting at the harmonic series,
which can yield some really pure intervals at lower values and some delicious salty goodness at higher values.

*/

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		//midinote: 30, // try untoggling, makes \degree powerless but \harmonic persists
		degree: Pstutter(2, Pxshuf((1 .. 7), inf)),
		harmonic: Pexprand(1, 7).round, // the harmonic series, can take floats, try it
		amp: 0.7,
		sustain: 4,
		dur: 1/4,
		])
).play
)

/*

Another really nice key is \mtranspose. It does modal transposition of degree within a scale.
Works in combination with other keys like degree and scale.

*/

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		scale: Scale.harmonicMinor,
		octave: Pstutter(8,Pwhite(3.0, 6.0).round(0.5)),
		degree: Pstutter(2, Pxshuf((-7 .. 7), inf)),
		mtranpose: Pseq((-5 .. 5), inf),
		amp: 0.7,
		sustain: 4,
		dur: 1/4,
		])
).play
)

// oh hey, you deserve a Tuning also

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		scale: Scale.harmonicMinor.tuning_(Tuning.sept1), // can be tagged on here at the end
		degree: Pstutter(2, Pxshuf((-7 .. 7), inf)),
		amp: 0.7,
		sustain: 4,
		dur: 1/4,
		])
).play
)

// stepsPerOctave "works" in SuperClean, in the sense that it does something, who knows what tho?
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		dur: 1/7,
		degree: Pseq((0 .. 7), inf),
		amp: 1,
		stepsPerOctave: Pwhite(1,12), // ¿ What the hey now ?
		pan: Pmeanrand(0.0, 1.0).trace, // Pmeanrand tends towards the low and high value
	])
).play
)

/*

I made a lil post on my site about \stn which is a little sample pack that I recorded.

https://danielmkarlsson.com/log/

I recorded it in 192 khz which lets me play it back at a lot lower speed without as many of the kinds of
lofi artefacts we usually get when playing back samples recorded at 44.1

*/

~clean.loadSoundFiles("~/stn");
(
Pdef(0,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \stn,
            num: Pstutter(Pexprand(1, 48), Pxshuf((0 .. 5), inf)),
            dur: 1 / Pstutter(Pexprand(2, 5),
                Pexprand(1, 7).round) * Pwhite(1, 2) / 5,
            amp: Pstutter(Pexprand(1, 96), Pexprand(1/8, 8.0)),
            atk: Pmeanrand(0.0, 1.0),
            hld: Pmeanrand(1.0, 2.0),
            rel: Pkey(\dur) * 8,
            crv: Pstutter(Pexprand(1, 24), Pmeanrand(-8.0, 8.0)),
            lpf: 20000 - Pexprand(20, 20000),
            pan: Pmeanrand(0.0, 1.0).trace,
            lhf: Pexprand(1.01, 1.98) - 1,
            bnd: Pwhite(-0.125, 0.125),
            scale: Scale.chromatic,
            degree: Pstutter(Pexprand(1, 192),
                Plprand(-18.0, 9.0)).round(0.5), // Plprand is low passed random
            sustain: Pstutter(Pexprand(1, 12), Pwhite(0.5, 4.0)),
			spd: Pwrand2([-1, 1], [1, 64], inf), // reverse sometimes, works even tho \degree is there also
            dark: Pseg([0.0, 0.025, 0.0], 100, \sine, inf),
        ])
    )
).play
)

/*

Plprand is low passed random. This makes it tend towards it's low value. The distribution is a different
flavour in comparison to Pexprand. Also note that in the example above we pass through zero in the value range
for Plprand. This would not have been possible with Pexprand. There's also Phprand which is high passed random.
This makes it tend towards it's high value.

The homework assignment for next week, like it is every week, is to go throught the material and use as many
of the new words as you can from what we covered today, to get a feel for how you can benefit from them in
your own practice. Also I want you to try The Quincy Jones Trick, which is to record a sample at a higher sample
rate and then to play it back at a lower \spd

/*