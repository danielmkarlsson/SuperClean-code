~clean.orderModules(['rma', 'shp']); // run this line before running the block below
(
Pdef(0,
    Pseed(9999,
        Pbind(*[
            type: \cln,
            snd: \blp,
            dur: 1 / Pexprand(0.11, 11.0),
            ocv: Pexprand(2, 5).asInteger,
            ocp: Pkey(\ocv).linlin(2, 5, 9, 1),
            octave: Pdup(Pkey(\ocp), Pkey(\ocv)),
            scale: Pseed(0, Prand([Scale.pelog(\sept2), Scale.chromatic(\sept2)], inf)),
            harmonic: Pseed(0, Prand([Plprand(1, 5, 1), Plprand(1, 12, 1)], inf)),
            degree: Pseed(0, Prand([Plprand(0, 5, 1), Plprand(0, 12, 1)], inf)),
            nmh: Pexprand(1, 14),
            atk: Pexprand(9, 19),
            rel: Pexprand(9, 19),
            crv: Pwhite(-8.0, 8.0),
            crt: Pkey(\crv).neg,
            sustain: Pkey(\atk) + Pkey(\rel),
            pan: Pseq([Pxshuf((0.0, 0.01 .. 0.5), 1), Pxshuf((0.51, 0.52 .. 1.0), 1)], inf),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            frq: Pfunc{|ev|ev.use{ev.freq}},
            amp: (Pseg(Pdup(2, Pexprand(1/4, 2)), Pwhite(10.0, 20.0), \lin, inf) 
                / Pkey(\frq).linlin(32, 470, 1, 2)
                / Pkey(\nmh).linlin(1, 14, 1, 1.5)
                / Pkey(\harmonic).linlin(1, 5, 1, 1.5)),
            shp: 1,
            sho: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
            hit: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
            lot: Pseg(Pwhite(0.0, 1.0), Pwhite(10.0, 20.0), \lin, inf),
            hpf: Pseg([20, Pexprand(20, 80, 1), 20, 20], Pwhite(10.0, 20.0), \exp, inf),
            lpf: 25000 - Pseg(Pexprand(5000, 20000), Pwhite(10.0, 20.0), \exp, inf),
            rma: 1,
            rmf: Pexprand(0.25, 0.5),
            rdf: Pexprand(0.005, 0.05),
            rdt: Pkey(\sustain),
            dfm: 1,
            dfg: Pseg(Pexprand(1/8, 1.125), Pwhite(10.0, 20.0), \lin, inf),
            jpr: 2,
            jpg: Pseg(Pexprand(0.5, 2.0), Pwhite(10.0, 20.0), \lin, inf),
            fsh: Pseg(Pmeanrand(-200.0, 200.0), Pwhite(10.0, 20.0), \lin, inf),
            aux: Pseq((0 .. 31), inf),
            // ~clean.start([0].dup(32)); // you need this aux routing in your startup
        ])
    )
).play
)
