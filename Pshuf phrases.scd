~sgt = Pdup(2, Pexprand(12, 24).asInteger.unique).asStream;
(
r.stop;
r = {
    loop{
        Pdef(0,
            Pbind(*[
                type: Pshuf(((\!11) ++ (\cln!8)).scramble.drop((4 .. 7).choose.postln), inf),
                snd: \fm1,
                degree: Pshuf((0 .. 7), inf),
                mtranspose: Pdup(inf, Pxshuf((-7 .. 7), inf)),
                dur: 1/8,
                sustain: 1,
                amp: Pseg([0, 0.75, 0], Pfunc({~sgt.next}), \wel, 1).trace,
                jpr: 2,
                jpg: Pkey(\amp).linlin(0, 0.75, 2, 0),
                jpl: Plprand (0.2, 0.6),
                jpm: Phprand (0.1, 0.6),
                dla: 0.75,
                dlf: 0.94, 
                dlt: 14,
                pan: Pdup(inf, Pmeanrand(0.1, 0.9)),
            ])
        ).play(quant:1);
        (~sgt.next * 2).wait;
        Pdef(0).stop;
    }
}.fork;
)

s.record
