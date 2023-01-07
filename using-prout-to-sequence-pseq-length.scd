(
Pdef(0,
    Pseed(3,
        Pbind(*[
            type: \cln,
            snd: \saw,
            dur: 1/8,
            rel: 2,
            crv: -8,
            legato: 9,
            scale: Scale.pelog(\just),
            degree: Prout({ arg ev; 
                Pxshuf([1, 2, 3, 4, 5], inf).asStream.do { arg x; 
                    ev = Pseries(0, 1, x).embedInStream(ev); 
                }
            }),
            pan: Pmeanrand(0.25, 0.75),
            amp: Plprand(0.4, 0.6),
            lpf: Plprand(5000, 20000),
            cai: Phprand(0.0, 1.0),
            wid: Phprand(0.5, 0.75),
            cav: 1/8,
        ])
    )
).play
)
