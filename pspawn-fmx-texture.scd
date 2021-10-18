(
Pdef(0,
    Pseed(129,
        Ppar(
            10.collect{
                Pspawn(
                    Pbind(*[
                        method: \seq,
                        pattern: Pfunc{|ev|
                            Pbind(*[
                                type: \cln,
                                snd: Pdup(inf, Prand([\r, \fmx], inf)),
                                snd: \fmx,
                                dur: 1/8 * Pdup(inf, Pwrand2((1 .. 7), [1, 2, 8, 4, 4, 2, 1], inf)),
                                octave: Pdup(inf, Pwrand2((1 .. 5), [1, 1, 2, 4, 2], inf)),
                                amp: Pseg([0, 0.55, 0.55, 0], Pexprand(7.5, 45.0), \wel, 1) / Pkey(\octave).linlin(1, 5, 1, 1.5),
                                hr1: Pdup(inf, Pexprand(1, 4)).round,
                                hr2: Pdup(inf, Pexprand(1, 4)).round,
                                hr3: Pdup(inf, Pexprand(1, 4)).round,
                                hr4: Pdup(inf, Pexprand(1, 4)).round,
                                fdb: Pdup(inf, Pexprand(0.1, 4.125)),
                                mi2: Pdup(inf, Pexprand(0.1, 4.125)),
                                mi3: Pdup(inf, Pexprand(0.1, 4.125)),
                                mi4: Pdup(inf, Pexprand(0.1, 4.125)),
                                en1: Pdup(inf, Pexprand(0.1, 0.6)) - 0.1,
                                en2: Pdup(inf, Pkey(\en1) + Pexprand(0.1, 0.6)),
                                en3: Pdup(inf, Pkey(\en1) + Pkey(\en2) / Pexprand(0.2, 0.7)),
                                en4: Pdup(inf, Pkey(\en1) + Pkey(\en2) / Pkey(\en3) + Pexprand(0.3, 0.8)),
                                cu1: Pdup(inf, Pwhite(-8.0, 8.0)),
                                cu2: Pdup(inf, Pwhite(-8.0, 8.0)),
                                cu3: Pdup(inf, Pwhite(-8.0, 8.0)),
                                cu4: Pdup(inf, Pwhite(-8.0, 8.0)),
                                pan: Pdup(inf, Pwhite(0.0, 1.0)),
                                lpf: Pdup(inf, Phprand(20, 20000)),
                                scale: Pdup(inf, Pxshuf([
                                    Scale.superLocrian(\sept1),
                                    Scale.whole(\sept1),
                                    Scale.dorian(\sept2),
                                    Scale.bartok(\sept1),
                                    Scale.mixolydian(\sept2)
                                ],inf)),
                                degree: Pdup(inf, Pxshuf((0 .. 7), inf)),
                                gtranspose: Pdup(inf, Pwhite(0, 6)),
                                mtranspose: Pdup(inf, Pexprand(1.0, 5.0).round) - 1,
                                calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
                                stretch: Pseg([1, 1, 2, 2, 2], Pexprand(15, 30), \lin, inf),
                                sustain: Pseed(0, Plprand(1.75, 2.0)),
                                legato: 1.75,
                                cav: 4,
                                cai: 1/4,
                                hpf: 75,
                            ])
                        },
                    ])
                )
            }
        )
    )
).play(quant:1);
)

Pdef(0).stop;
