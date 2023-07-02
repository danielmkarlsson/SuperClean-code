(
Routine{
    Pdef(0,
        Pseed(998,
            Pbind(*[
                type: \cln,
                snd: \drm,
                dup: Phprand(1, 11),
                dur: 1 / Pdup(Phprand(0, 11), Pwrand2((5 .. 11), (5 .. 11).scramble, 1)),
                tun: Pdup(Pkey(\dup), Pwrand2((1, 1.6 .. 5), (1, 1.6 .. 5).scramble, inf)),
                fed: 1 * Pwrand2((1, 1.125 .. 2), (1, 1.125 .. 2).scramble, inf),
                amp: 0.2 * Pwrand2((1 .. 32), (1 .. 32).scramble, inf) / Pkey(\tun).linlin(1, 5, 1, 11),
                sustain: 0.1 * Pwrand2((1 .. 11), (1 .. 11).scramble, inf),
                shp: 0.1 * Pwrand2((1, 1.01 .. 10.0), (1, 1.01 .. 10.0).scramble, inf),
                sho: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                slo: 1 / Pwrand2((1, 1.01 .. 1000.0), (1, 1.01 .. 1000.0).scramble, inf),
                shi: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                lot: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                hit: (0.01 * Pwrand2((1, 1.01 .. 1000.0), (1, 1.01 .. 1000.0).scramble, inf)),
                ocq: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                ocd: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                tnh: 0.01 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                fzv: 0.01 * Pwrand2((1, 1.01 .. 1000.0), (1, 1.01 .. 1000.0).scramble, inf),
                fsh: 0.01 * Pdup(Pkey(\dup), Pwrand2((1, 1.01 .. 1000.0), (1, 1.01 .. 1000.0).scramble, inf)),
                tri: 0.05 * Pwrand2((1, 1.01 .. 100.0), (1, 1.01 .. 100.0).scramble, inf),
                sac: 0,
                fuz: Pwrand2([0, 1], [11, 1], inf),
                dfm: 1,
                dfg: 10,
                pan: Pwhite(0.0, 1.0).trace,
                stretch: Pseg(Pdup(2, Plprand(1/8, 2)), Plprand(0.0, 10.0), \lin, inf),
                lpf: Pkey(\tun).linlin(1, 7, 20000, 2000),
            ])
        )
    ).play;
    rrand(1, 9).wait;
    Pdef(0).stop;
}.play
)
