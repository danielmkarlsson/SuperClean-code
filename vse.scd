~clean.lsf("~/snd/vse")
(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(9599,
            Pbind(*[
                type: Pwrand2([\cln, \], [4, 1], inf),
                snd: \vse,
                dur: Pdup(Plprand(1, 11), Pbrown(1/32, 1/8, Pwhite(1/32, 1/8))),
                scale: Scale.chromatic(\just),
                degree: Pdup(Plprand(1, 111), Plprand(-7, 0) * Pwhite(2, 3)),
                octave: Pexprand(3, 6).round,
                legato: 99,
                cav: 1/16,
                cai: Pexprand(1.0, 2.0) - 1,
                lpf: Pexprand(20, 20000),
                hpf: Pexprand(20, 20000),
                lhf: Pwhite(0.0, 1.0),
                atk: Pexprand(1.0, 6.0) - 1,
                rel: Pexprand(0.5, 5.0),
                pan: Pwhite(0.0, 1.0),
                rma: Pseg(Pdup(2, Phprand(0.0, 1.0)), 10, \lin, inf),
                rmf: Pdup(Plprand(1, 11), Plprand(0.0, 1600)),
                rdf: Pdup(Plprand(1, 11), Plprand(0.0, 1600)),
                fsh: Pdup(Plprand(1, 11), Pmeanrand(-1.0, 1.0)),
                fsm: Pdup(Plprand(1, 11), Pmeanrand(-2.0, 2.0)),
                rdt: 0,
                shp: 1,
                sha: 0,
                sho: Pwhite(0.0, 1.0),
                shi: Pwhite(0.0, 1.0),
                slo: Pwhite(0.0, 1.0),
                hit: Pwhite(0.0, 1.0),
                lot: Pwhite(0.0, 1.0),
                ocu: Phprand(0.0, 1.0),
                tri: Phprand(0.0, 1.0),
                dfg: Pseg(Pdup(2, Phprand(0.0, 19.0)), 10, \lin, inf),
                dfm: 1 / Pkey(\dfg),
                tng: Pseg(Pdup(2, Phprand(0.0, 19.0)), 10, \lin, inf),
                tnh: 1 / Pkey(\tng),
                amp: Pseg(Pdup(2, Phprand(0.0, 2.0)), 10, \lin, inf),
                aux: Pdup(Plprand(8, 32), Pxshuf((0 .. 7), inf)),
                dla: 1/4,
                dlf: 0.99,
                dlt: Pseg(Pdup(2, Pexprand(1/666, 1/16).round(1/666)), Phprand(15.0, 30.0), \exp, inf).trace,
                dst: Pwrand2([0, 1], [99, 1], inf),
            ])
        )
    ).play;
    1140.wait;
    Pdef(0).stop;
}.play
)
