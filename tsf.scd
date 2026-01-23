(
thisThread.randSeed = 9999;
~snd = Pxshuf([
    \fm0, \fm1, \fm2, \fm3, \fm4, \fm6, \fm7, \fm8, \fm9, \fma,
    \fmb, \fmd, \fme, \fmf, \fmg, \fmi, \fmm, \fmn, \fms, \fmu
], inf).asStream;
);

(
Routine{
    //s.record;
    //1.wait;
    ((
        ~zer.stop;
        ~zer = {
            loop {
                Pdef(0,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 0,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 0,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(0).stop;
            }
        }.fork;
    );

    (
        ~one.stop;
        ~one = {
            loop {
                Pdef(1,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 2,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 1,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(1).stop;
            }
        }.fork;
    );

    (
        ~two.stop;
        ~two = {
            loop {
                Pdef(2,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 4,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 2,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(2).stop;
            }
        }.fork;
    );

    (
        ~thr.stop;
        ~thr = {
            loop {
                Pdef(3,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 6,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 3,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(3).stop;
            }
        }.fork;
    );

    (
        ~fou.stop;
        ~fou = {
            loop {
                Pdef(4,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 0,
                        octave: 4,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 4,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(4).stop;
            }
        }.fork;
    );

    (
        ~fiv.stop;
        ~fiv = {
            loop {
                Pdef(5,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 2,
                        octave: 4,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 5,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(5).stop;
            }
        }.fork;
    );

    (
        ~six.stop;
        ~six = {
            loop {
                Pdef(6,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 4,
                        octave: 4,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 6,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(6).stop;
            }
        }.fork;
    );

    (
        ~sev.stop;
        ~sev = {
            loop {
                Pdef(7,
                    Pbind(*[
                        type: \cln,
                        snd: Pdup(inf, Pfunc{~snd.next}),
                        scale: Scale.major(\wcSJ),
                        degree: 6,
                        octave: 4,
                        dur: Pseg([4, 1/1024, 4], Pdup(2, Pwhite(15.0, 30.0)), \sin, 1),
                        jpr: 1/4,
                        jpg: Pkey(\dur).linlin(1/1024, 4, 3, 0),
                        amp: Pkey(\dur).explin(1/1024, 4, 0.4, 0.8).trace,
                        aux: 6,
                    ])
                ).play(quant:0);
                exprand(45, 60).wait;
                Pdef(7).stop;
            }
        }.fork;
    );
);
480.wait;
Pdef(0).stop; ~zer.stop;
Pdef(1).stop; ~one.stop;
Pdef(2).stop; ~two.stop;
Pdef(3).stop; ~thr.stop;
Pdef(4).stop; ~fou.stop;
Pdef(5).stop; ~fiv.stop;
Pdef(6).stop; ~six.stop;
Pdef(7).stop; ~sev.stop;
240.wait;
//s.stopRecording;
}.play;
)
