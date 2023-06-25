(
Routine{
    Pdef(0,
        Pseed(1,
            Pbind(*[
                type: \cln,
                snd: \ixa,
                rel: 1/2,
                crv: -8.0,
                crt: 8.0,
                inx: (Pseries(0, 1, inf) % Pdup(Pseq((1 .. 21), inf), Pseq((1 .. 22), inf))),
                scale: Scale.harmonicMinor(\just), 
                degree: Pindex((1 .. 22), Pkey(\inx), inf),
                lpf: Pkey(\degree).linexp(1, 22, 2500, 160),
                lhf: Pkey(\degree).linexp(1, 22, 0.5, 0.3),
                dur: 1/9,
                amp: Pkey(\degree).linlin(1, 22, 0.5, 1.0) - Pseq((0.0, 0.005 .. 0.045), inf),
                pan: Pseq([0.5, Plprand(0.0, 0.75, 1), Phprand(0.25, 1.0, 1)], inf),
                legato: 19,
                cav: 1/4,
                cai: Pkey(\degree).explin(7, 22, 0.0, 1.0),
                octave: 4,
                mtranspose: (Pseries(0, 1, inf) % Pdup(Pseq((2 .. 9), inf), Pseq((-1 .. -8), inf))),
                stretch: 0.9,
                aux: 1,
            ])
        )
    ).play;
    9.wait;
    Pdef(1,
        Pseed(9,
            Pbind(*[
                type: \cln,
                snd: \ixa,
                atk: 4,
                hld: Plprand(0.0, 8.0).trace,
                rel: 1/4,
                inx: (Pseries(0, 1, inf) % Pdup(Pseq((1 .. 45), inf), Pseq((1 .. 45), inf))),
                scale: Scale.harmonicMinor(\just),
                degree: Pindex((0 .. 44), Pkey(\inx), inf),
                lpf: Pkey(\degree).linlin(0, 45, 2500, 20),
                lhf: Pkey(\degree).linlin(0, 45, 0.4, 0.0),
                dur: 1/8,
                pan: Pwhite(0.0, 1.0),
                legato: 99,
                cav: 1/4,
            ])
        )
    ).play;
    15.wait;
    Pdef(0).stop;
    9.wait;
    Pdef(1).stop;
}.play
)
