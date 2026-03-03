(
thisThread.randSeed = 9992;
~div = Pexprand(1, 7).asStream;
~sgt = Pdup(3, Pwhite(8, 16).unique).asStream;
~dgr = Pdup(2, Pexprand(2, 29), Pxshuf((-14 .. 14), inf)).round(2).asStream;
~jps = Pdup(2, Pbrown(0.2, 1.0, Pexprand(0.0001, 0.001))).asStream;
~jpl = Pdup(2, Pbrown(Phprand(0.5, 1.0), Pexprand(0.0001, 0.01))).asStream;
~jpm = Pdup(2, Pbrown(Phprand(0.5, 1.0), Pexprand(0.0001, 0.01))).asStream;
~jph = Pdup(2, Pbrown(Phprand(0.5, 1.0), Pexprand(0.0001, 0.01))).asStream;
~jlc = Pdup(2, Pbrown(Phprand(0.5, 1.0), Pexprand(0.0001, 0.01))).asStream;
~jhc = Pdup(2, Pbrown(Phprand(0.5, 1.0), Pexprand(0.0001, 0.01))).asStream;
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: Pxshuf([\fm0, \fm1, \fm3, \fm7, \fmf], inf),
        dur: 2.6 / Pseg(Pdup(2, Pfunc{~div.next}), Pfunc{~sgt.next}, \lin, inf),
        scale: Scale.major(\wcSJ),
        degree: Pfunc{~dgr.next},
        octave: Phprand(3, 6),
        harmonic: Pexprand(1, 4) - 1,
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        sustain: Pkey(\dur) * Phprand(1.0, 20.0) / Pkey(\frq).explin(3, 2163, 1, 2),
        en1: Pwhite(0.1, 0.4),
        en2: Pwhite(0.2, 0.5),
        en3: Pwhite(0.3, 0.6),
        en4: Pwhite(0.4, 0.7),
        en5: Pwhite(0.5, 0.8),
        en6: Pwhite(0.6, 0.9),
        jpr: 4.0,
        jps: Pfunc{~jps.next},
        jpl: Pfunc{~jpl.next},
        jpm: Pfunc{~jpm.next},
        jph: Pfunc{~jph.next},
        jlc: Pfunc{~jlc.next},
        jhc: Pfunc{~jhc.next},
        amp: Pdup(Pexprand(1, 19), Plprand(0.6, 0.8)) / Pkey(\frq).explin(3, 2163, 1, 2),
        val: Pexprand(1.0, 1.5) - 1,
        pan: Pseq([Pexprand(1.0, 1.5, 1) - 1, 1.5 - Pexprand(0.5, 1.0, 1)], inf),
        bno: 0,
        bnt: Pkey(\sustain),
        bnd: Pbrown(Phprand(-0.025, 0.025), Pexprand(0.0001, 0.01)) 
            / Pkey(\frq).explin(3, 2163, 1, 2),
        aux: Pxshuf((0 .. 7), inf),
    ])
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        dur: 1/8,
        amp: 0,
        jpr: 4,
        jps: Pfunc{~jps.next},
        jpl: Pfunc{~jpl.next},
        jpm: Pfunc{~jpm.next},
        jph: Pfunc{~jph.next},
        jlc: Pfunc{~jlc.next},
        jhc: Pfunc{~jhc.next},
    ])
);
Routine{
    Pdef(1).play;
    1.wait;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    Pdef(1).stop;
}.play
)
