(
Pdef(0,
    Pseed(14,
        Pbind(*[
            type: \cln,
            snd: \hat,
            tun: Pmeanrand(-1.0, 1.0),
            atk: Plprand(1.0, 12.2),
            rel: Phprand(4.001, 12.2),
            crv: Pmeanrand(-6.0, 6.0),
            crt: Pmeanrand(-6.0, 6.0),
            pan: Pseq([
                Pmeanrand(0.0, 1.0, 1), 
                Plprand(0.0, 0.5, 1), 
                Phprand(0.5, 1.0, 1)
            ], inf),
            dur: Pwhite(0.01, 0.15),
            scale: Scale.prometheus(\mean5), 
            degree: Pdup(Pexprand(1, 7), Pmeanrand(-28, 7).asInteger.unique),
            frq: Pfunc{|ev|ev.use{ev.freq}},
            lpf: Pkey(\frq).trace,
            hpf: Pkey(\frq),
            lpq: Phprand(0.9, 1.0),
            hpq: Plprand(0.0, 0.9),
            lhf: Phprand(0.3, 0.7), 
            amp: Phprand(4.5, 5.0) 
                / Pkey(\degree).linexp(-28, 7, 0.25, 12)
                / Pkey(\lpq).linlin(0.9, 1.0, 1, 2)
                / Pkey(\hpq).linlin(0.0, 0.9, 1, 2),
            sustain: Pkey(\atk) + Pkey(\rel),
            dur: Pkey(\sustain) / Pwhite(100.0, 200.0),
            ocu: Plprand(0.0, 0.5),
            ocq: Phprand(0.0, 0.25),
            rma: Plprand(0.0, 0.75),
            rmd: Pdup(2, Prand([1, 2, 4], inf)),
            rmf: Pkey(\frq) / Pkey(\rmd) + Pmeanrand(-0.5, 0.5),
            rdf: Pkey(\frq) / Pkey(\rmd) + Pmeanrand(-0.5, 0.5),
            cav: 1.5,
            cai: Pseg(Pdup(2, Pexprand(0.1, 1.0)), Pexprand(15.0, 30.0), \wel, inf),
        ])
    )
).play
)
