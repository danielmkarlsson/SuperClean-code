(
Pdef(0,
    Pseed(9498,
        Pbind(*[
            type: \cln,
            snd: \dfd,
            dur: Plprand(1.0, 8.0),
            den: (Phprand(0.0, 1.0) * Pseg([1.0, 5.0], 180, \lin, 1)),
            res: Plprand(0.97, 1.005),
            atk: Plprand(0.0, 1.0),
            rel: Plprand(1.0, 18.0),
            nsl: Plprand(0.0, 0.00125),
            stretch: Pseg(Pwhite(1/8, 1.0), Pwhite(1/8, 1.0), \sin, inf),
            freq: Plprand(20, 1600),
            bnd: Pmeanrand(-0.75, 0.75),
            bno: Plprand(0.0, 10.0),
            bnt: Plprand(7.5, 18.0),
            clf: Pfunc{|ev| ev.use { ~freq.value() }},
            ampComp: Pfunc({|ev|
                var root = 60.0;
                var freq = ev[\clf];
                var xa = root / freq;
                var xb = 0.666; // Exponent

                xa.pow(xb);
            }),
            amp: Plprand(0.5, 1.0) * Pkey(\ampComp) * Pkey(\den).trace,
            legato: 99,
            cav: Pseg(Plprand(1.0, 4.0), Plprand(30.0, 90.0), \lin, inf),
            cvd: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            cai: Pseg(Phprand(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            tnh: 1,
            tng: Phprand(0.0, 0.4),
            tri: Phprand(0.0, 1.0),
            dst: Phprand(0.0, 1.0),
            dst: Phprand(0.0, 0.4),
            brf: Plprand(20.0, 1600),
            brq: Pwhite(0.0, 1.0),
            brn: Pwhite(0.0, 1.0),
            bro: Pwhite(0.0, 1.0),
            rma: Pwrand2([Plprand(0.0, 1.0, 1), 0], [1, 2], inf),
            rmf: Plprand(20, 40),
        ])
    )
).play
)
