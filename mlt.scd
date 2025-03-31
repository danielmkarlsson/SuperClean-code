~clean.lsf("~/snd/mlt");
(
Pdef(0,
    Pseed(9993,
        Pbind(*[
            type: \cln,
            snd: \mlt,
            bgn: Pwhite(0.0, 0.9),
            spd: Plprand(0.25, 1.0),
            atk: Plprand(20.0, 40.0),
            hld: Plprand(20.0, 20.0),
            rel: Plprand(20.0, 40.0),
            crv: 8,
            crt: -8,
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            pan: Pwhite(0.0, 1.0),
            lpf: 20320 - Pexprand(320.0, 20000.0),
            hpf: Pexprand(20.0, 1250.0).trace,
            amp: Pdup(Plprand(1, 9), Plprand(1/8, 1/4)),
            dur: 1/4,
            fsh: Pmeanrand(-1.0, 1.0),
            fsm: Pmeanrand(-12.5, 12.5),
            bnd: Pmeanrand(-1.0, 1.0),
            bnt: Pkey(\sustain),
            rma: 1,
            rmf: Pexprand(0.01, 20.0),
            rdf: Pexprand(0.0001, 0.2),
            rdt: Pkey(\sustain) / Pwhite(1.0, 2.0),
            jpr: 1/2,
            jpg: 4,
            shp: 1,
            sha: 0,
            sho: Pwhite(0.0, 1.0),
            shi: Pwhite(0.0, 1.0),
            slo: Pwhite(0.0, 1.0),
            hit: Pwhite(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            tri: 1,
            tnh: 1,
            tng: 8,
        ])
    )
).play
)


s.record
