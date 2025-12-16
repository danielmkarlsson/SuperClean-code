(
Pdef(0,
    Pseed(9994,
        Pbind(*[
            type: \cln,
            snd: Prand([\fm0, \fm3, \fm6, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi], inf),
            dur: Pseq([Pexprand(0.01, 1.1), 1/1024, 1/1024, 1/1024, 1/1024], inf),
            sustain: Pkey(\dur) / Pseq([Pexprand(1/8, 1, 1), 1/8, 1/8, 1/8, 1/8], inf),
            pan: Pseq([0.5, 0, 1, 0.25, 0.75], inf),
            scales: Pxshuf([\major, \mixolydian, \melodicMinor, \harmonicMinor], inf),
            tunings: Pxshuf([\just, \sept1, \sept2, \et12], inf),
            #[scaleName, tuningName], Ptuple([Pkey(\scales), Pkey(\tunings)], inf),
            scale: Pdup(Pexprand(99, 299), 
                Pfunc{|ev| Scale.perform(ev.scaleName, ev.tuningName)}),
            degree: Pdup(5, Pxshuf((-2, 0 .. 12), inf)),
            mtranspose: Pseg([0, 1], Pwhite(30.0, 90.0), \lin, inf).round,
            octave: Pdup(5, Pmeanrand(2, 6)).asInteger,
            amp: (Pkey(\dur).linlin(0.01, 1.1, 0.6, 0.9) 
                / Pkey(\octave).linlin(2, 6, 1, 2)).trace,
            bnd: Pseq([0, 0, 0, Pmeanrand(-0.015, 0.015, 4)], inf),
            bnt: Pkey(\sustain),
            en1: Pseg(Phprand(0.1, 0.9), Pwhite(20.0, 40.0), \wel, inf),
            en2: Pseg(Plprand(0.0, 0.8), Pwhite(20.0, 40.0), \wel, inf),
            en3: Pseg(Phprand(0.1, 0.9), Pwhite(20.0, 40.0), \wel, inf),
            en4: Pseg(Plprand(0.0, 0.8), Pwhite(20.0, 40.0), \wel, inf),
            en5: Pseg(Phprand(0.1, 0.9), Pwhite(20.0, 40.0), \wel, inf),
            en6: Pseg(Plprand(0.0, 0.8), Pwhite(20.0, 40.0), \wel, inf),
            mi1: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            mi2: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            mi3: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            mi4: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            mi5: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            mi6: Pseg(Pexprand(1, 5) - 1, Pexprand(2.0, 40.0), \wel, inf),
            jpr: 1/2,
            jpg: Pseg(Pdup(2, Pwhite(0.5, 1.0)), Plprand(20.0, 40.0), \wel, inf),
            jps: Pseg(Pdup(2, Pmeanrand(0.45, 0.55)), Plprand(20.0, 40.0), \wel, inf),
            ocu: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(20.0, 40.0), \wel, inf),
            rma: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(30.0, 90.0), \wel, inf),
            rmf: Pexprand(0.001, 2.0),
            rdf: Pkey(\rmf) * Pwhite(0.333, 3.0),
            hpf: Pseg(Pdup(2, Pexprand(20, 200)), Pwhite(30.0, 90.0), \wel, inf),
        ])
    )
);
Routine{
    //s.record;
    //1.wait;
    Pdef(0).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)
