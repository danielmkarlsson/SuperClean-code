(
Pdef(0,
    Pseed(9,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\hat, \dfd, \drm, \], [1, 1, 1, 2], inf),
            dur: Plprand(0.5, 4.0),
            den: Plprand(0.0, 8.0),
            tun: Plprand(0.0, 6.0).round(1/2),
            res: Pwrand([Pwhite(0.0, 1.0, 1), 1.01], [10, 1], inf),
            bnd: Pmeanrand(-1.0, 1.0),
            atk: Pkey(\dur) / 8,
            hld: Pkey(\dur) + 8,
            rel: Pkey(\dur) * 8,
            legato: Pkey(\dur) / Pkey(\dur) + Pkey(\atk) + Pkey(\hld) + Pkey(\rel) + 2,
            crv: Pmeanrand(-8.0, 8.0),
            bpf: Pdup(Plprand(2, 20), Plprand(80, 800).round(40)),
            bpq: Pwhite(0.0, 1.0),
            rma: 1,
            rmf: Pdup(Plprand(2, 20), Plprand(80, 800).round(40)),
            rdf: Pdup(Plprand(2, 20), Pmeanrand(80, 800).round(40)),
            rdt: Plprand(29.0, 39.0),
            stretch: Pseg(Plprand(1/32, 1), Plprand(30.0, 90.0), \sin, inf),
            ocd: Pseg(Phprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            ocq: Pseg(Phprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            lpf: Pseg(Plprand(20, 20000), Plprand(3.0, 90.0), \sin, inf).trace,
            amp: Pseg(Phprand(1/16, 1/8), Plprand(30.0, 90.0), \sin, inf) * Pkey(\lpf).linlin(20, 20000, 2, 1/2) * 0.75,
            shp: Pdup(Pseed(48, Pseq([Plprand(1, 2, 1), Plprand(1, 8, 1)], inf)), Pseq([1/1024, 0], inf)),
            sho: Pseg(Phprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            shi: Pseg(Pmeanrand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            slo: Pseed(0, Pseg(Pmeanrand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf)),
            hit: Pseg(Pmeanrand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            lot: Pseg(Pmeanrand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            hlf: Pseg(Pwhite(0.0, 0.75), Plprand(30.0, 90.0), \sin, inf),
            cav: 2,
            cai: Pseg(Phprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            dst: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            tri: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \sin, inf),
            fsh: Pseg(Pmeanrand(-1.0, 0.0), Plprand(30.0, 90.0), \sin, inf),
            fsm: Pseg(Phprand(-2.0, 0.0), Plprand(30.0, 90.0), \sin, inf),
            tnh: 1/16,
            tng: 10.5,
        ])
    )
).play
)
