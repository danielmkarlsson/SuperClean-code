(
Routine{
    s.record;
    1.wait;
Pdef(0,
    Pseed(9199,
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: \sin,
            dur: 1/11,
            freq: Pexprand(20, 200).round(10),
            pan: Pkey(\freq).linlin(20, 120, 0, 1),
            amp: Pexprand(1.25, 2.5),
            shp: Pexprand(1.0, 2.0) - 1,
            sha: 0,
            shi: Pwhite(0.0, 1.0),
            slo: Pwhite(0.0, 1.0),
            hit: Pwhite(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            rel: Pexprand(1/22, 1.75).round(1/22),
            ocd: Phprand(0.0, 1.0),
            ocu: Plprand(0.0, 1.0),
            lhf: Pmeanrand(0.0, 1.0),
            lpf: (20000 - Pexprand(20, 20000)).asInteger.trace,
            dst: Pexprand(1.0, 2.0) - 1,
            tnh: Phprand(0.0, 1.0),
            tng: Phprand(4.0, 16.0),
            dfm: Plprand(0.0, 1.0),
            dfg: Phprand(4.0, 16.0),
            sustain: 1.8,
            dla: Plprand(0, 1/128),
            dlt: 1/149
            / Pdup(Phprand(4, 64), Prand([0.1, 0.2, 0.3, 0.4, 0.475, 0.5, 1], inf))
            / Pwrand2([1, 2, 4, 8], [8, 4, 2, 1], inf),
            dlf: Pkey(\dlt).linlin(1/149/8, 1/149/0.1, 0.99, 0.94),
            aux: Pxshuf((0 .. 3), inf),
        ])
    )
).play;
200.wait;
Pdef(0).stop;
10.wait;
s.stopRecording;
}.play
)

s.record
