~clean.lsf("~/snd/cbg")
(
var scales = Pseed(0, 
    Pxshuf([
        Scale.augmented,
        Scale.bartok,
        Scale.minor,
        Scale.harmonicMinor,
        Scale.mixolydian
    ], inf)
).asStream;

Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(1238,
            Pbind(*[
                type: \cln,
                snd: \cbg,
                num: Pseq([0, 1], inf),
                dur: Plprand(1.0, 8.0),
                bgn: Plprand(0.0, 0.5),
                tun: Pxshuf([
                    Tuning.pythagorean, 
                    Tuning.just, 
                    Tuning.sept1, 
                    Tuning.vallotti,
                    Tuning.wcSJ,
                ], inf),
                scale: Pdup(Plprand(5, 15), Pfunc {|ev| 
                    var scale = scales.next;
                    scale.tuning = ev[\tun];
                    "% : %".format(scale.name, scale.tuning.name).debug('scale');
                    scale;
                }),
                degree: Pdup(Plprand(5, 15), Plprand(0, 7)),
                octave: Pdup(Plprand(5, 15), Plprand(4, 6)),
                mtranspose: Pdup(Plprand(55, 111), Plprand(-4, 3)),
                calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
                frq: Pfunc{|ev|ev.use{ev.freq}},
                legato: 99,
                sustain: 99,
                atk: Plprand(9.0, 15.0),
                rel: Plprand(9.0, 15.0),
                crv: Phprand(4.0, 8.0),
                pan: Pmeanrand(0.0, 1.0),
                amp: Pseg(Plprand(1/8, 1/2), Plprand(15.0, 115.0), \wel, inf) 
                / Pkey(\frq).expexp(130, 523, 0.75, 1.25),
                lpf: Phprand(20, 20000),
                cav: 2,
                cai: Pwhite(0.0, 1.0),
                ocd: Pkey(\cai).linlin(0.0, 1.0, 1.0, 0.0),
            ])
        )
    ).play;
    (19 * 60).wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording
}.play
)
)
