(
Pdef(0,
    Pseed(9,
        Pbind(*[
            type: \cln,
            snd: \drm,
            fed: Pexprand(1.0, 111.0),
            tun: Pdup(Plprand(19, 79), Plprand(0.0, 5.0)).round(0.1),
            dur: 1 / Pdup(Plprand(3, 9), Pexprand(5.0, 11.0)),
            pan: 0.25,
            lpf: 20020 - Pexprand(20, 20000),
            dfm: 1,
            dfg: 19,
            dla: 1/8,
            dlf: 0.94,
            dlt: 1 / Pexprand(1, 1024).round(8),
            aux: 0,
            shp: Pwhite(0.0, 1.0),
            sho: Pwhite(0.0, 1.0),
            shi: Pwhite(0.0, 1.0),
            slo: Pwhite(0.0, 1.0),
            hit: Pwhite(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            lhf: Pmeanrand(0.0, 1.0),
            hlf: Pmeanrand(0.0, 1.0).trace,
            sustain: 1,
            rel: Pkey(\dur) * Pexprand(0.75, 4.0),
            jpr: 1/2,
            jpg: Pwrand2([0, 1], [199, 1], inf),
            jps: Pwhite(0.0, 1.0),
        ])
    )
).play;

Pdef(1,
    Pseed(9,
        Pbind(*[
            type: \cln,
            snd: \drm,
            fed: Pexprand(1.0, 111.0),
            tun: Pdup(Plprand(19, 79), Phprand(0.0, 5.0)).round(0.1),
            dur: 1 / Pdup(Plprand(3, 9), Pexprand(5.0, 11.0)),
            pan: 0.75,
            lpf: Pexprand(20, 20000),
            dfm: 1,
            dfg: 19,
            dla: 1/8,
            dlf: 0.94,
            dlt: 1 / (513 - Pexprand(1, 1024)).round(16),
            aux: 1,
            shp: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            sho: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            shi: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            slo: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            hit: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            lot: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            lhf: Pmeanrand(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            hlf: Pmeanrand(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
            sustain: 1,
            rel: Pkey(\dur) * Pexprand(0.75, 4.0),
            jpr: 1/2,
            jpg: Pwrand2([0, 1], [199, 1], inf),
            jps: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
        ])
    )
).play
)
// this needs two auxes both sending to the same output to sound right
