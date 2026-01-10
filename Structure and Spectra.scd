(
thisThread.randSeed = 9099;
~a = {arg snd, degree;
    var b = Pbind(*[
        type: \cln,
        snd: snd,
        mi1: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mi2: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mi3: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mi4: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mi5: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mi6: Pseg(Pwhite(0.05, 2.5), Pexprand(3.0, 9.0), \wel, inf) / Pexprand(1/4, 4.0),
        mia: Pkey(\mi1) + Pkey(\mi2) + Pkey(\mi3) + Pkey(\mi4) + Pkey(\mi5) +Pkey(\mi6), 
        dur: 1/8,
        degree: degree,
        scale: Scale.major(\wcSJ),
        octave: Pdup(inf, Prand((2 .. 5), inf)),
        frq: Pfunc{|ev|ev.use{ev.freq}},
        sustain: Pseg(Pwhite(1/6, 1/2), Pwhite(4.0, 16.0), \wel, inf),
        amp: (Pseg(Pexprand(0.3, 0.9), Pexprand(8.0, 32.0), \wel, inf) 
            / Pkey(\frq).expexp(43, 4186, 1, 3)
            / Pkey(\mia).linlin(0.075, 600, 1, 3)).trace,
        pan: Pxshuf([Pexprand(0.1, 0.4, 1), Pmeanrand(0.1, 0.9, 1), 1.5 - Pexprand(0.6, 0.9, 1)], inf),
    ]);
    Pseq([b], inf);
};
Pdef(0, ~a.(\fm0, 0)).play;
Pdef(1, ~a.(\fm1, 1)).play;
Pdef(2, ~a.(\fm2, 2)).play;
Pdef(3, ~a.(\fm3, 3)).play;
Pdef(4, ~a.(\fm4, 4)).play;
Pdef(5, ~a.(\fm5, 5)).play;
Pdef(6, ~a.(\fm6, 6)).play;
Pdef(7, ~a.(\fm7, 7)).play;
Pdef(8, ~a.(\fm8, 8)).play;
Pdef(9, ~a.(\fm9, 9)).play;
Pdef(10, ~a.(\fma, 10)).play;
Pdef(11, ~a.(\fmb, 11)).play;
Pdef(12, ~a.(\fmc, 12)).play;
Pdef(13, ~a.(\fmd, 13)).play;
Pdef(14, ~a.(\fme, 14)).play;
Pdef(15, ~a.(\fmf, 15)).play;
Pdef(16, ~a.(\fmg, 16)).play;
Pdef(17, ~a.(\fmh, 17)).play;
Pdef(18, ~a.(\fmi, 18)).play;
Pdef(19, ~a.(\fmj, 19)).play;
Pdef(20, ~a.(\fmk, 20)).play;
Pdef(21, ~a.(\fml, 21)).play;
Pdef(22, ~a.(\fmm, 22)).play;
Pdef(23, ~a.(\fmn, 23)).play;
Pdef(24, ~a.(\fmo, 24)).play;
Pdef(25, ~a.(\fmp, 25)).play;
Pdef(26, ~a.(\fmq, 26)).play;
Pdef(27, ~a.(\fmr, 27)).play;
Pdef(28, ~a.(\fms, 28)).play;
Pdef(29, ~a.(\fms, 29)).play;
Pdef(30, ~a.(\fmt, 30)).play;
Pdef(31, ~a.(\fmu, 31)).play;
r.stop;
r = {
    loop{
        32.do{|i|Pdef(i).reset;};
        [2, 4, 8, 16, 32, 48, 64, 80].wchoose
        ([1, 15, 5, 11, 7, 8, 13, 3].normalizeSum).wait;
    }
}.fork;
Routine{
    5400.wait;
    32.do{|i|Pdef(i).stop;};
}.play
)
