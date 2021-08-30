~clean.lsf("hse") // You may have to change this path.
( // Eval this block then scroll down to the the bottom.
Pdef(0,
    Pdup(inf,
        Pbind(*[
            type: \cln,
            snd: \hse,
            dur: Pwhite(1.0, 5.0),
            bgn: Pwhite(0.0, 1.0),
            pan: Plprand(0.0, 0.4),
            amp: Plprand(0.125, 0.5),
            atk: Plprand(0.0, 3.0),
            hld: Plprand(3.0, 6.0),
            rel: Plprand(3.0, 6.0),
            lpf: Phprand(100, 20000),
            hpf: Plprand(20, 500),
            octave: Pmeanrand(3, 5).round,
            degree: Pwhite(0, 7),
            legato: Plprand(0.25, 4.0),
            cav: 2,
            cai: Pwhite(0.0, 1.0).trace,
            tnh: Plprand(0.0, 1.0),
            tng: Plprand(0.0, 1.0),
            shp: Plprand(0.0, 1.0),
            slo: Phprand(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            hit: Plprand(0.0, 1.0),
            tri: Plprand(0.0, 1.0),
        ])
    )
).play(quant:1);

Pdef(1,
    Pdup(inf,
        Pbind(*[
            type: \cln,
            snd: \hse,
            dur: Pwhite(1.0, 5.0),
            bgn: Pwhite(0.0, 1.0),
            pan: Phprand(0.6, 1.0),
            amp: Plprand(0.125, 0.5),
            atk: Plprand(0.0, 3.0),
            hld: Plprand(3.0, 6.0),
            rel: Plprand(3.0, 6.0),
            lpf: Phprand(100, 20000),
            hpf: Plprand(20, 500),
            octave: Pmeanrand(3, 5).round,
            degree: Pwhite(0, 7),
            legato: Plprand(0.25, 4.0),
            cav: 2,
            cai: Pwhite(0.0, 1.0).trace,
            tnh: Plprand(0.0, 1.0),
            tng: Plprand(0.0, 1.0),
            shp: Plprand(0.0, 1.0),
            slo: Phprand(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            hit: Plprand(0.0, 1.0),
            tri: Plprand(0.0, 1.0),
        ])
    )
).play(quant:1);
)

( // Eval one or both until you get an interesting combination of the two loops and then leave it on for a while.
Pdef(0).reset;
Pdef(1).reset;
)

( // Eval this for a real smoof ending.
Pdef(0).stop;
Pdef(1).stop;
)
