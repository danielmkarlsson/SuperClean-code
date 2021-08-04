// Welcome to the Exploring Technology Live stream. My name is Daniel M Karlsson, I'm a composer who dabbbles w/ programming.
// Get comfy and I'll be w/ you shortly.
// We are live (and nervous).

// Hi.
// So, I'm a composer. What does that mean? For me it means I want to organise sound. I often get frustrated when I try to do this.
// I want to use tools that let's me feel free. That's why I want to use SuperCollider. Even then I get frustrated because SuperCollider is huge. So, the scope needs to be narrowed somewhat in order for me to not get as frustrated. Enter SuperClean.
// SuperClean for sure has an easier install procedure and is less weighed doen by dependency than what I was coming from.
// When it is up + running I can quickly get to the part I like most which is organsing sound.

// Let's write the simplest thing that will make sound in SuperClean together:

( // opening paranthesis, good for convenience
    Pdef(\0, //Pdef is defined continously, which means we can change it while it's running, very important
        Pbind(*[ // This binds the parameter names on the left to the parameter values on the right
            type: \clean, // here's where we tell SuperCollider to make SuperClean available to us
            s: \mmd, // s can stand for sound, or sample or synth, in this case we're asking for a sample folder called mmd
        ]) // close the Pbind here
    ).play(quant:1); // close the Pdef and make sure everything stays in sync with everything else
) // close convenience paranthesis
 // four on the floor

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12), // Let's randomly choose between some different files in the folder
        ])
    ).play(quant:1);
)
 // four on the floor w/ some more variation because more than one sample

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12),
            dur: 1/Pwhite(5,11), //Stochastic division of the duration by whole numbers
        ])
    ).play(quant:1);
)

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12),
            dur: 1/Pwhite(5,11),
            rel: Pwhite(0.1,1), //Stochastically apply different release times for the amplitude envelope attack
        ])
    ).play(quant:1);
)

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12),
            dur: 1/Pwhite(5,11),
            rel: Pwhite(0.1,1),
            pan: Pwhite(0.0,1.0), //Stochastically apply panning
        ])
    ).play(quant:1);
)

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12),
            dur: 1/Pwhite(5,11),
            rel: Pexprand(0.1,1), //exponentially apply attack times (lower times more likely)
            pan: Pwhite(0.0,1.0),
        ])
    ).play(quant:1);
)

(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(1,12),
            dur: Pseq([1,1/2,1/2,1,1/4],inf), // linear sequence of durations
            rel: Pexprand(0.1,1),
            pan: Pwhite(0.0,1.0),
        ])
    ).play(quant:1);
)

(
(  // two patterns running in sync with each other
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(0,6), // first half of the samples in the folder
            dur: Pseq([1,1/2,1/2,1,1/4],inf),
            rel: Pexprand(0.1,1),
            pan: Pwhite(0.0,0.5),
        ])
    ).play(quant:1);
);
(
    Pdef(\1,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(6,12), // second half of the samples in the folder
            dur: Pseq([1,1/2,1/2,1,1/4],inf),
            rel: Pexprand(0.1,1),
            pan: Pwhite(0.5,1.0),
        ])
    ).play(quant:1);
)
)

(
(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(0,6),
            dur: Pseq([1,1/2,1/2,1,1/4],inf)/2, // basic arithmetic can be appplied to the pattern keys
            rel: Pexprand(0.1,1),
            pan: Pwhite(0.0,0.5),
        ])
    ).play(quant:1);
);
(
    Pdef(\1,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: Pwhite(6,12),
            dur: Pseq([1,1/2,1/2,1,1/4,1/4],inf)/2, // this one has one more 1/4, yielding polymeter between the two patterns
            rel: Pexprand(0.1,1),
            pan: Pwhite(0.5,1.0),
        ])
    ).play(quant:1);
)
)


(
(
    Pdef(\0,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: 1, // set values are ok but maybe not as _fun_ as stochastic choices tho
            dur: 1/8,
            rel: Pexprand(0.0001,0.1),
            pan: Pwhite(0.0,0.5),
        ])
    ).play(quant:1);
);
(
    Pdef(\1,
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: 1,
            dur: 1/8,
            rel: Pexprand(0.001,0.1),
            pan: Pwhite(0.5,1.0),
            stretch: 1.001, // stretch time, this pattern slowly phases with the other pattern
        ])
    ).play(quant:1);
)
)

(
(
    Pdef(\0,
        Pseed(124, // Nothing in this world is truly random, Randomness here is derived from this number
        Pbind(*[
            type: \clean,
            s: \mmd,
            n: 1,
            dur: 1/8,
            rel: Pexprand(0.0001,0.1),
            pan: Pwhite(0.0,0.5),
        ])
    )
    ).play(quant:1);
);
(
    Pdef(\1,
        Pseed(124, // same number, same infinity of numbers in the same stream forever and ever
            Pbind(*[
                type: \clean,
                s: \mmd,
                n: 1,
                dur: 1/8,
                rel: Pexprand(0.001,0.1),
                pan: Pwhite(0.5,1.0),
                stretch: 1.001,
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124, // reEvaluate to hear the same thing again
            Pbind(*[
                type: \clean,
                s: \mmd,
                n: Pseries(1,9,inf), // count up to 9 then start over
                dur: 1/8,
                rel: Pexprand(0.001,2),
                pan: Pwhite(0.0,1.0),
                stretch: 1.001,
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \mmd,
                n: Pseries(1,9,inf),
                dur: 1/8,
                rel: Pexprand(0.001,2),
                pan: Pwhite(0.0,1.0),
                stretch: 1.001,
                lpf: Pwhite(20,20000), // compare these two versions, lower line takes precedence
                lpf: Pexprand(20,20000), // exponential might suit your needs or not depending on how you feel about it
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \mmd,
                n: Pseries(1,9,inf),
                dur: 1/8,
                rel: Pexprand(0.001,2),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.5,1.0,0.5],10,\lin,inf), // we can control the tempo continously
                lpf: Pexprand(20,20000),
            ])
        )
        ).play(quant:1);
    )
) // tempo glissando is one of the coolest things ever in time


(  // let's fix the release time bleeding into the next sample
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \mmd,
                n: Pseries(1,9,inf),
                dur: 1/8,
                rel: Pkey(\dur), // parameters can listen to each other, data sharing is very useful
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.5,1.0,0.5],10,\lin,inf),
                lpf: Pexprand(20,20000),
            ])
        )
        ).play(quant:1);
    )
)

(  // there are also synths
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                n: Pwhite(1,12), // all of the 12 pitches within the octave
                dur: 1/8,
                rel: Pkey(\dur),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.5,1.0,0.5],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: Pwhite(200,400), // all of the frequencies between 200 and 400, double x is 1 octave up
                dur: 1/8,
                rel: Pkey(\dur),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.5,1.0,0.5],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: 100*Pwhite(1,5), // x multiplied by whole numbers yields the harmonic series
                dur: 1/8,
                rel: Pkey(\dur),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.5,1.0,0.5],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: 20*[1,3,5]*Pwhite(1,5), // here's a quick and dirty way to do chords
                dur: 1/8,
                rel: Pkey(\dur),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf), // slow it down a lil
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx, // change the numbers in the array below to change the chord
                freq: 20*[2,4,6]*Pwhite(1,5), // higher numbers are freakier,
                dur: 1/8,
                rel: Pkey(\dur),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: 20*[2,4,6]*Pwhite(1,5),
                dur: 1/8,
                rel: Pkey(\dur)/2, // duration keyed and then divided by two
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)


(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: 20*[2,4,6]*Pwhite(1,5),
                dur: 1/8,
                rel: Pkey(\dur)/Prand([0.5,2],inf), // duration keyed and then doubled or halved stochastically
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: Pdup(20,20*[2,4,6]*Pwhite(1,5)), // repeat each choice 20 times
                dur: 1/8,
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)


(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: Pdup(Pwhite(1,20),20*[2,4,6]*Pwhite(1,5)), // repeat each choice 1 to 20 times
                dur: 1/8,
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                freq: Pdup(Pexprand(1,20),20*[2,4,6]*Pwhite(1,5)), // exponentially 1 to 20 times
                dur: 1/8,
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(124,
            Pbind(*[
                type: \clean,
                s: \fmx,
                rps: Pexprand(1,20), // roll your own params on the fly
                freq: Pdup(Pkey(\rps),20*[2,4,6]*Pwhite(1,5)), // use rps here
                dur: 1/8,
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(194,
            Pbind(*[
                type: \clean,
                s: \fmx,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*[2,4,9]*Pwhite(1,5)),
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)), // use rps in as many places as you like
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf), // slow it down a lil
            ])
        )
        ).play(quant:1);
    )
)


(
    Pdef(\0,
        Pseed(194,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*[2,4,9]*Pwhite(1,5)), // just three sines is not a lot, let's fix
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(194,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(2..9)*Pwhite(1,5)), //  now there are seven
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(194,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(1..100)*Pwhite(1,5)), //  now there are ninetynine
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(194,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(1,3..100)*Pwhite(1,5)), //  every other
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(134,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(1,9..100)*Pwhite(1,3)), //  every fourth and so on, try it!
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(134,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(1,9..100)*Pwhite(1,3)),
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                crv: -8, // curvature, bipolar range, more negative is snappier
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

(
    Pdef(\0,
        Pseed(134,
            Pbind(*[
                type: \clean,
                s: \uio,
                rps: Pexprand(1,20),
                freq: Pdup(Pkey(\rps),20*(1,9..1000)*Pwhite(1,3)), // higher range, still sounds not great
                dur: Pdup(Pkey(\rps),1/Pwhite(5,11)),
                rel: Pkey(\dur)/Prand([0.5,2],inf),
                crv: -8,
                pan: Pwhite(0.0,1.0),
                stretch: Pseg([0.75,1.0,0.75],10,\lin,inf),
            ])
        )
        ).play(quant:1);
    )
)

( // cheating obviously
    Pdef(\0,
        Pseed(11,
        Pbind(*[
            type: \clean,
            s: \uio,
            tempo: 3,
            rps: Pexprand(1,14),
            rpf: Pdup(Pkey(\rps),Pwhite(1,9999)),
            psi: Pdup(Pkey(\rps),Psinen(0.1).linlin(0,1,0.25,1.0)),
            pwi: Pdup(Pkey(\rps),20000/Pwhite(1,99)),
            freq: Pfunc{|envir|
                var psi = envir.psi;
                var pwi = envir.pwi;
                var rpf = envir.rpf;
                var x = pwi * rpf.geom(1,90/(89*psi).asInteger);
                //x.postln;
                x.reject{|i| i > 20000 }
            } * Pdup(Pkey(\rps),Pwhite(0.9,1.1)),
            dur: 1/Pdup(Pkey(\rps),Pwhite(2,11),inf)*Pdup(Pkey(\rps),Pexprand(1.0,2.0)).trace,
            attack: Pdup(Pkey(\rps),Pexprand(0.00001,0.01)),
            release: Pdup(Pkey(\rps),Pexprand(0.01,20.0)),
            curve: -8,
            stereoDetune: Pdup(Pkey(\rps),Pwhite(100.0,1000.0)),
            stretch: Pseg([Pwhite(0.75,2.0),Pwhite(0.75,2.0)],Pwhite(15,90),\lin,inf),
            gain: Pseg([Pwhite(1.0,2.0),Pwhite(2.0,8.0)],Pwhite(15,90),\welch,inf),
            hpf: Pseg([20,200,20,20],Pwhite(15,90),\welch,inf),
            bpf: Pdup(Pkey(\rps),Pexprand(20,100)),
            bpq: Pdup(Pkey(\rps),Pexprand(0.01,1.0)),
        ]))
    ).play;
)


// fmx example
(
Pdef(\0,
    Pseed(99,
    Pbind(*[
        type: \clean,
        s: \fmx,
        rps: Pwhite(1,99),
        hr1: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
        hr2: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
        hr3: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
        hr4: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
        mi2: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1.0..4.0),inf)),
        mi3: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1.0..4.0),inf)),
        mi4: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((1.0..4.0),inf)),
        fdb: Pexprand(0.01,100.0),
        amp: Pexprand(0.01,0.5),
        en1: Pdup(Pkey(\rps)+Pwhite(0,7),Pexprand(0.0001,1.1)),
        en2: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.0001,2.1)),
        en3: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.0001,3.1)),
        en4: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.0001,4.1)),
        hl1: Pexprand(0025,1.125),
        hl2: Pexprand(0.025,1.125),
        hl3: Pexprand(0.025,1.125),
        hl4: Pexprand(0.025,1.125),
        cu1: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.0,4.0)),
        cu2: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.0,4.0)),
        cu3: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.0,4.0)),
        cu4: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.0,4.0)),
        dur: Pdup(Pkey(\rps)+Pwhite(2,9),1.25/Pbrown(3,17,Pwhite(1,3),inf)),
        legato: Pexprand(7.5,90.0),
        freq: Pdup(Pwhite(8,16),Prand((10,20..40),inf))*Pwhite(1,5)*Pdup(Pkey(\rps),Pwhite(1,5)),
        hpf: Pexprand(20,20000),
        lpf: Pkey(\freq).linlin(10,1600,20000,100,\minmax).trace,
        room: Pseg(Pexprand(0.9,1),Pexprand(2.0,16.0),\welch,inf),
        size: Pseg(Pexprand(0.9,1),Pexprand(2.0,16.0),\welch,inf),
        dry: Pseg(Pexprand(0.1,1),Pexprand(2.0,32.0),\welch,inf).linlin(0.1,1,1,0,\minmax),
    ]);
)
).play;
);

// that's it I guess
// get in touch at any time.
//


daniel@danielmkarlsson.com

I will help you with anything in perpituity, legally binding
So please. Don't hesitate to get in touch. I for realz want
to get a community going.

I will save this file on my github

github.com/danielmkarlsson


