~clean.lsf("~/snd/fms")
(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(3471, 
            Pbind(*[
                type: \cln,
                snd: \fms,
                dur: Plprand(1.0, 4.0),
                bgn: Pwrand2([Pwhite(0.0, 0.5, 1), Pwhite(0.5, 1.0, 1)], [2, 1], inf),
                scale: Scale.bartok(\sept2),
                octave: Pdup(9, Pmeanrand(3, 7)),
                degree: Pdup(Phprand(6, 9), Pmeanrand(-7, 7)),
                mtranspose: Pdup(Phprand(4, 9), Phprand(0, 7)),
                harmonic: Pdup(Phprand(2, 9), Phprand(1, 4)),
                calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
                frq: Pfunc{|ev|ev.use{ev.freq}},
                amp: Pseg(Pmeanrand(0.333, 0.666), Phprand(30.0, 90.0), \sin, inf) / Pkey(\frq).linlin(209, 4735, 1, 4),
                bnd: Pmeanrand(-0.25, 0.25),
                bno: Pmeanrand(3.0, 9.0),
                bnt: Pmeanrand(3.0, 9.0),
                pan: Pkey(\bnd).linlin(-0.25, 0.25, 0.1, 0.9),
                atk: Pwhite(9.0, 18.0),
                hld: Pwhite(3.0, 9.0),
                rel: Pwhite(3.0, 9.0),
                crv: 0,
                legato: 99,
                cav: 1,
                cai: Pseg(Plprand(0.0, 1.0), Phprand(30.0, 90.0), \sin, inf),
                stretch: Pseg(Phprand(0.5, 1.0), Phprand(30.0, 90.0), \sin, inf),
            ])
        )
    ).play;
    (19 * 60).wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
}.play
)

0.75 * 1.5 
