(
var scales = Pxrand([
    Scale.augmented,
    Scale.bartok,
    Scale.minor,
    Scale.harmonicMinor,
    Scale.mixolydian
], inf).asStream;

Pdef(0,
    Pseed(9134,
        Pbind(*[
            type: \cln,
            snd: \saw,
            dur: Pseq([1, 1, 1/2, 1, 1, 1, 1/2, 1, 1, 1, 1, 1], inf),
            wid: Plprand(1/16, 1/4),
            pan: Pseq([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
            rel: 19,
            legato: 16,
            degree: Plprand(0, 7),
            amp: 0.9,
            tun: Pxrand([
                Tuning.pythagorean, 
                Tuning.just, 
                Tuning.sept1, 
                Tuning.vallotti,
                Tuning.wcSJ,
            ], inf),
            scale: Pfunc {|ev| 
                var scale = scales.next;
                scale.tuning = ev[\tun];
                "% : %".format(scale.name, scale.tuning.name).debug('scale');
                scale;
            },
        ])
    )
).play
)

Pdef(0).stop
