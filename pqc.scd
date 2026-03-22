(
thisThread.randSeed = 9699;
~dusc = Scala("~/scl/dudon_saba-c.scl");
~alvs = Scala("~/scl/alves_slendro.scl");
~deg6 = Scala("~/scl/degung6.scl");
~han7 = Scala("~/scl/hahn_7.scl");
~yun2 = Scala("~/scl/young2.scl");
~jpg = Pdup(2, Pseg(Phprand(0.2, 2.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jts = Pdup(2, Pseg(Pwhite(0.0, 1.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jpd = Pdup(2, Pseg(Pwhite(0.0, 1.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jed = Pdup(2, Pseg(Pwhite(0.0, 1.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jpl = Pdup(2, Pseg(Phprand(0.25, 0.75), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jpm = Pdup(2, Pseg(Pwhite(0.0, 0.5), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jph = Pdup(2, Pseg(Plprand(0.0, 0.25), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jlc = Pdup(2, Pseg(Pwhite(0.0, 1.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~jhc = Pdup(2, Pseg(Pwhite(0.0, 1.0), Pwhite(15.0, 90.0), \lin, inf)).asStream;
~aux = Pdup(2, Pxshuf((0 .. 7), inf)).asStream; 
Pdef(0,
    Pseed(9699,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([\fm1, \fmc, \fmf, \fmj, \fmm, \fmn, \fmo, \fmw], inf),
            scale: Pdup(Pexprand(19, 149), Pxshuf([
                ~dusc.scale, ~alvs.scale, ~deg6.scale, ~han7.scale, ~yun2.scale,
            ], inf)),
            degree: Pdup(Pexprand(1, 19) 
                * Pexprand(1.0, 1.1), Pxshuf((-28 .. 7), inf)).round(2) 
                + Pdup(58 - Pexprand(9, 49), Pwhite(0, 1)),
            octave: 2 + Pexprand(1, 2).round 
                + Pexprand(1, 2).round + Pexprand(1, 2).round,
            pan: Pmeanrand(0.1, 0.9),
            en1: Pexprand(0.1, 0.9),
            en2: Pexprand(0.1, 0.9),
            en3: Pexprand(0.1, 0.9),
            en4: Pexprand(0.1, 0.9),
            en5: Pexprand(0.1, 0.9),
            en6: Pexprand(0.1, 0.9),
            mi1: Pexprand(1, 4) - 1,
            mi2: (Pexprand(1, 4) - 1) + (Pexprand(1.0, 1.5) - 1),
            mi3: Pexprand(1, 4) - 1,
            mi4: Pexprand(1, 4) - 1,
            mi5: Pexprand(1, 4) - 1,
            mi6: Pexprand(1, 4) - 1,
            sustain: Pexprand(0.4, 4.0) * Pexprand(1, 2) * Pexprand(1, 2),
            dur: 1 / (Phprand(1, 22) / Pkey(\sustain).linlin(0.4, 16, 1, 16)),
            hpf: Pexprand(20, 20000),
            lpf: 20020 - Pexprand(20, 20000),
            amp: Pdup(Pexprand(1, 5), Pexprand(0.5, 0.9)),
            jpr: 1/10,
            jpg: Pfunc{~jpg.next},
            jts: Pfunc{~jts.next},
            jpd: Pfunc{~jpd.next},
            jed: Pfunc{~jed.next},
            jpl: Pfunc{~jpl.next},
            jpm: Pfunc{~jpm.next},
            jph: Pfunc{~jph.next},
            jlc: Pfunc{~jlc.next},
            jhc: Pfunc{~jhc.next},
            ocd: Pexprand(1, 2) - 1,
            rma: Pexprand(1, 2) - 1,
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            frq: Pfunc{|ev|ev.use{ev.freq}},
            rmf: Pkey(\frq) - Pmeanrand(-25.0, 25.0),
            rdf: Pkey(\frq),
            rdt: Pkey(\sustain) / Pexprand(10, 20),
            fsh: Pmeanrand(-2.25, 2.25),
            aux: Pfunc{~aux.next},
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \sin,
        amp: 0,
        jpr: 1/10,
        jpg: Pfunc{~jpg.next},
        jts: Pfunc{~jts.next},
        jpd: Pfunc{~jpd.next},
        jed: Pfunc{~jed.next},
        jpl: Pfunc{~jpl.next},
        jpm: Pfunc{~jpm.next},
        jph: Pfunc{~jph.next},
        jlc: Pfunc{~jlc.next},
        jhc: Pfunc{~jhc.next},
        aux: Pfunc{~aux.next},
        dur: 1/16,
    ])
).play;
Routine{
    Pdef(0).play;
    Pdef(1).play;
    366.wait;
    Pdef(0).stop;
    240.wait;
    Pdef(1).stop;
}.play
)
