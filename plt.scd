~clean.lsf("~/snd/plt");
(
Routine{
    //s.record;
    //1.wait;
    Pdef(0,
        Pseed(3,
            Pbind(*[
                type: \cln,
                snd: \plt,
                dur: Phprand(55.0, 105.0),
                amp: Phprand(0.4, 0.5).trace,
                num: Pxshuf((0 .. 4), inf),
                spd: Pexprand(0.75, 1.5),
                flp: Pwhite(0, 1),
                sustain: 999,
            ])
        )
    ).play;
    4800.wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
}.play
)

