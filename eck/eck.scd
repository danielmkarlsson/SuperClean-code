~clean.lsf("~/snd/eck")
(
Pdef(0,
    Pseed(9199,
        Pbind(*[
            type: \cln,
            snd: \eck,
            dur: 1 / Pwhite(0.25, 4.0),
            amp: Plprand(0.5, 1.0),
            num: 0,
            legato: 99,
            scale: Scale.chromatic(\sept1),
            degree: Pdup(Plprand(1, 7), Plprand(0, 12)),
            octave: Plprand(3, 7),
            atk: 3, 
            hld: 3, 
            rel: 3, 
            crv: 8.0,
            crt: -8.0,
            cav: 1/2,
            pan: Pwhite(0.0, 1.0),
        ])
    )
).play
)

Pdef(0).stop

s.record
