~clean.lsf("~/snd/nsb")
(
Routine{
    s.record;
    1.wait;
    ~a = {|seed, pan, aux| 
        var b = 
        Pbind(*[ 
            type: \cln,
            snd: \nsb,
            dur: Plprand(1.0, 5.0),
            bgn: Plprand(0.0, 0.9),
            atk: 0.5 * Pkey(\dur),
            hld: 2.0 * Pkey(\dur),
            rel: 0.5 * Pkey(\dur),
            crv: 0.0,
            legato: 5 * Pkey(\dur),
            scale: Pdup(Plprand(13, 17), Pxshuf([
                Scale.harmonicMinor(\sept1),
                Scale.mixolydian(\sept2),
                Scale.aeolian(\sept1),
                Scale.enigmatic(\sept2),
            ], inf)),
            degree: Pdup(Plprand(3, 7), Pmeanrand(-7, 7)).round,
            octave: Pdup(Plprand(3, 7), Plprand(3, 5)),
            mtranspose: Pdup(Plprand(13, 17), Pmeanrand(-1, 3).round),
            lpf: Plprand(15000, 20000),
            acc: Pfunc{|ev| ev.use { ~freq.value() }},
            acp: Pfunc({|ev|
                var root = 60.0;
                var freq = ev[\acc];
                var xa = root / freq;
                var xb = 0.222; // Exponent
                xa.pow(xb);
            }),
            amp: (Pseg(Pseq([0.15, Plprand(0.25, 0.5, inf)], inf), Pseq([19, Plprand(3.0, 90.0, inf)], inf), \wel, inf) 
                * Pkey(\acp)).trace,
            cav: 2,
            cai: Pseg(Pseq([0, Phprand(0.0, 1.0, inf)], inf), Pseq([90, Plprand(3.0, 90.0, inf)], inf), \wel, inf),
            pan: pan,
            aux: aux, 
        ]);
        Pseed(seed, Pseq([b], inf)); 
    };
    Pdef(0, ~a.(3480, Pseq([0, Phprand(0.1, 0.5, inf)], inf), 0)).play; 
    Pdef(1, ~a.(5690, Pseq([1, Plprand(0.5, 0.9, inf)], inf), 1)).play; 
    (19 * 60).wait;
    Pdef(0).stop;
    Pdef(1).stop;
    240.wait;
    s.stopRecording;
}.play
)
