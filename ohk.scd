(
Routine{
    //s.record;
    //1.wait;
    Pdef(0,
        Pseed(9799,
            Pbind(*[
                type: Pseq([\cln, Pwrand2([\cln, \], [1, 7], inf)]),
                snd: \fmx,
                scale: Scale.chromatic24,
                octave: Pxshuf((0 .. 5), inf),
                degree: Pwrand2((0 .. 24), [23, 0, 10, 22, 14, 25, 21, 28, 29, 20, 5, 1, 2, 2, 2, 0, 1, 1, 6, 0, 0, 3, 1, 3], inf),
                dup: Pdup(16, Pexprand(1, 11)),
                hr1: Pdup(Pkey(\dup), Pxshuf((0 .. 9), inf)),
                hr2: Pdup(Pkey(\dup), Pxshuf((0 .. 9), inf)),
                hr3: Pdup(Pkey(\dup), Pxshuf((0 .. 9), inf)),
                hr4: Pdup(Pkey(\dup), Pxshuf((0 .. 9), inf)),
                mi1: Pdup(Pkey(\dup), Pxshuf((0.01, 0.02 .. 4.0), inf)).trace,
                mi2: Pdup(Pkey(\dup), Pxshuf((0.01, 0.02 .. 4.0), inf)),
                mi3: Pdup(Pkey(\dup), Pxshuf((0.01, 0.02 .. 4.0), inf)),
                mi4: Pdup(Pkey(\dup), Pxshuf((0.01, 0.02 .. 4.0), inf)),
                en1: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
                en2: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
                en3: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
                en4: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
                cu1: Pdup(Pkey(\dup), Pmeanrand(-8.0, 8.0)),
                cu2: Pdup(Pkey(\dup), Pmeanrand(-8.0, 8.0)),
                cu3: Pdup(Pkey(\dup), Pmeanrand(-8.0, 8.0)),
                cu4: Pdup(Pkey(\dup), Pmeanrand(-8.0, 8.0)),
                rep: Pdup(5, Phprand(5, 11)),
                dur: 1 / Pdup(Pkey(\rep), Phprand(5, 11)),
                amp: Pdup(Pkey(\rep), Plprand(0.2, 0.6)),
                sustain: Pdup(Pkey(\rep), Pexprand(0.8, 8.0)),
                cav: 1,
                cai: Pdup(Pkey(\rep), Pexprand(1/8, 1.0)),
                pan: Pdup(Pkey(\rep), Pwhite(0.0, 1.0)),
            ])
        )
    ).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

















( 
[
    9, 7, 0, 0, 9, 4, 5, 9, 7, 12, 6, 4, 6, 6, 8, 5, 18, 5, 7, 9, 8, 7, 3, 6, 3,
    6, 10, 6, 2, 5, 2, 8, 5, 0, 7, 8, 6, 7, 2, 9, 6, 8, 0, 0, 9, 8, 5, 24, 8, 3,
    3, 0, 9, 9, 7, 5, 8, 22, 8, 3, 2, 6, 9, 0, 5, 5, 2, 8, 0, 6, 14, 8, 5, 4,
    18, 7, 0, 5, 0, 23, 5, 2, 9, 12, 0, 5, 9, 5, 0, 8, 6, 7, 8, 3, 6, 3, 7, 5,
    8, 3, 7, 8, 8, 7, 5, 24, 18, 10, 3, 4, 3, 8, 7, 5, 4, 0, 2, 9, 2, 6, 4, 5,
    8, 5, 9, 0, 4, 16, 6, 3, 3, 13, 9, 7, 3, 19, 18, 0, 7, 5, 0, 4, 0, 3,
    22, 5, 8, 8, 7, 7, 9, 4, 0, 7, 9, 5, 8, 9, 18, 0, 7, 0, 8, 7, 7, 8, 7, 5,
    4, 6, 3, 3, 9, 14, 8, 5, 3, 8, 7, 9, 6, 3, 4, 6, 19, 7, 3, 7, 9, 7, 4, 7, 
    6, 4, 17, 3, 8, 8, 0, 0, 22, 8, 3, 13, 2, 5, 8, 3, 18, 24, 0, 7, 6,
    10, 6, 10, 6, 10, 2, 4, 11,
].occurrencesOf(0) // going through 0 to 24 yields the below weights
)

// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], 
// [23, 0, 10, 22, 14, 25, 21, 28, 29, 20, 5, 1, 2, 2, 2, 0, 1, 1, 6, 0, 0, 3, 1, 3],
