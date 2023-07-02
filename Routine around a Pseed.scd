(
Routine{
    Pdef(0,
        Pseed(12, // new pattern from seed
            Pbind(*[
                dur: 1 / Pwrand2([4, 8], [1, 2], 17), // steps
                type: Pwrand2([\cln, \], [1, 0], inf),
                snd: Pwrand2([\drm, \hat], [8, 1], inf),
                tun: Pdup(Plprand(1, 8), Plprand(2.0, 7.0)).round(0.3), // quantize pitches 
                pew: 0.5,
                fed: Plprand(0.0, 3.0),
                rel: Plprand(1.0, 5.0),
                crt: -8,
                sustain: 4,
                pan: Pmeanrand(0.1, 0.9).trace,
                pan: Plprand(0.0, 1.0),
                amp: Plprand(0.5, 1.75) / Pkey(\tun).linlin(2.0, 7.0, 1, 3),
                tnh: 1/16,
                tng: 128,
                //lpf: Pseg(Pdup(2, Phprand(20, 20000)), Plprand(1.0, 4.0), \exp, inf),
                stretch: 0.8, // tempo
            ])
        )
    ).play;
}.play
)

