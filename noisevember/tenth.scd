(
Pdef(0,
    Pseed(9193,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \drm, \hat, \clp, \ixa, 
                \fmx, \saw, \sqr, \kps
            ], inf),
            dur: Plprand(1.0, 10.0),
            rel: Plprand(5.0, 50.0),
            freq: Plprand(20.0, 300.0),
            dry: Pseg([0.0, 1.0], 210, \lin, 1),
            hal: 1/8 - Pkey(\dry).linlin(0.0, 1.0, 0.0, 1/8),
            rts: 49 - Pkey(\dry).linlin(0.0, 1.0, 0.0, 49.0),
            pan: Pwhite(0.0, 1.0),
            lhf: Plprand(0.25, 0.5),
            fuz: 1,
            fzv: 999,
            tun: Plprand(0.6, 6.0),
            cav: 1/4 - Pkey(\dry).linlin(0.0, 1.0, 0.0, 1/4),
            dst: 1,
            tri: 1,
            wid: Plprand(0.0, 0.5),
            shp: 1,
            shp: Plprand(0.0, 0.5),
            sho: Plprand(0.0, 0.5),
            shi: Plprand(0.0, 0.5),
            slo: Plprand(0.0, 0.5),
            hit: Plprand(0.0, 0.5),
            lot: Plprand(0.0, 0.5),
            rma: 1,
            clp: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            clf: Pfunc{|ev|ev.use{~freq.value()}},
            ampComp: Pfunc({|ev|
                var root = 60.0;
                var freq = ev[\clf];
                var xa = root / freq;
                var xb = 0.333; // exponent
                xa.pow(xb);
            }),
            amp: 1 * Pkey(\ampComp),
            rmf: Pkey(\freq).expexp(20.0, 400.0, 21.0, 278.0),
            stretch: Pseg([1, 1/16], 210, \lin, 1),
        ])
    )
).play;
)
