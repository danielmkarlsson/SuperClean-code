~clean.loadSoundFiles("~/Downloads/rnb"); // Any folder, anywhere on your computer, be free to be you!

( // data sharing inside a pattern with Pkey is amaze
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \mmd,
        rps: Pwhite(5,11), // made up parameter, rps for repeats
        dur: 1/Pdup(Pkey(\rps),Pwhite(5,11)),
        rel: Pkey(\dur), // Pkey listens for a parameter _above_
        crv: -8,
        n: Pexprand(1,13),
        gain: Pexprand(0.1,1.0).trace, // trace is a handy diagnostic tool and also looks cool, try moving it
        dla: 1/2,
        dlf: 0.94, // feedback can go to 1 but 0.97 is as far I ever go
        dlt: Pdup(Pkey(\rps),1/64/Prand((1..7),inf)),
        pan: Pdup(Pkey(\rps),Pwhite(0.0,1.0)), // \dur, \dlt & \pan will all switch values together because \rps
        ])
    ).play;
)

(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \mmd, // try swapping this out for a longer file, like say up to 3 minutes
        n: 12,
        begin: Pdup(Pwhite(5,11),Pexprand(0.001,1.0)), // start playback at different points in the file
        legato: 1, // overlap into next sample, 1 = no overlap
        dur: Prand([1/8,1/4],inf), // choose either eights or quarters
        crv: -8, // real snappy release curvature is real nice
        lpf: Pexprand(20,20000), // values outside of this expected value range will not rob you of your hearing
        gain: 2-Pexprand(1,2).trace, // neat trick to reverse the range of an exprand by subtracting the hi value
        stretch: Pseg(Pwhite(0.4,1.0),Pwhite(5,15),\welch,inf),
    ])
).play(quant:1);
);

( // \fmx has audible defaults so we don't have to specify all it's parameters to get a sound out of it
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \fmx,
        freq: Pexprand(20,20000), // yay, early computer music in the house
        dur: Prand([1/8,1/4],inf),
    ])
).play(quant:1);
);

( // \fmx has many keys tho, we can add them as we go and use the defaults for stuff we don't specify
Pdef(\0,
    Pseed(1267, // reEvaluate for same or change this number for another deterministic composition of infinite duration
    Pbind(*[
        type: \clean,
        s: \fmx,
        rps: Pwhite(5,11),
        freq: 50*Pexprand(1,5).round, // round is a neat trick to get integers out of Pexprand
        dur: Prand([1/8,1/4],inf),
        hr1: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr2: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr3: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr4: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        mi2: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        mi3: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        mi4: Pdup(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        fdb: Pexprand(0.0001,100.0),
        en1: Pdup(Pkey(\rps)+Pwhite(0,7),Pexprand(0.0001,0.555)),
        en2: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.2,0.666)),
        en3: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.3,0.777)),
        en4: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.4,0.888)),
        hl1: Pexprand(0.025,1.125),
        hl2: Pexprand(0.025,1.125),
        hl3: Pexprand(0.025,1.125),
        hl4: Pexprand(0.025,1.125),
        cu1: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu2: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu3: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu4: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        sustain: 5,
    ])
)
).play(quant:1);
);

Pdef(\0).stop; // use this to get a clean stop
