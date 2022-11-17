(
Pdef(0,
    Pseed(9999,
        Pbind(*[
            type: \cln,
            snd: \ixa,
            dur: 1/19,
            freq: Pseg(Plprand(20, 2000), Plprand(1.9, 19.0), \exp, inf),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            hpf: Pkey(\freq) 
            * Pseg(Plprand(1/4, 2.0), Plprand(9.1, 19.0), \exp, inf),
            amp: Pseg(Plprand(0.333, 0.666), Plprand(1.9, 19.0), \wel, inf),
            legato: 599,
            atk: Plprand(1.0, 10.0),
            hld: Plprand(1.0, 10.0),
            rel: Plprand(1.0, 10.0),
            bnd: Pmeanrand(-0.5, 0.5),
            bno: Plprand(1.0, 10.0),
            bnt: Plprand(10.0, 20.0),
            pan: Pwhite(0.0, 1.0),
            hal: 2,
            hai: Pseg(Pwhite(0.0, 1.0), Plprand(9.1, 19.0), \sin, inf),
            rts: Pseg(Plprand(0.0, 10.0), Plprand(9.1, 19.0), \sin, inf),
            tnh: 1,
            tng: 9,
            tri: 1,
        ])
    )
).play;
)
