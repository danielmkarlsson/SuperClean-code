(
thisThread.randSeed = 9799;
~jps = Pseg(Pdup(2, Pmeanrand(0.3, 0.7)), Pwhite(30.0, 60.0), \sin, inf).asStream;
~a = {arg snd, degree, amp, pan;
    var b = Pbind(*[
        type: \cln,
        snd: snd,
        scale: Scale.chromatic(\et31),
        dur: 1/3,
        octave: Pdup(Pexprand(9, 999), Pxshuf((2 .. 5), inf)),
        degree: degree,
        amp: (amp.clip(0.0, 1.0) / Pkey(\octave).linlin(2, 5, 0.9, 1.1)).trace,
        sustain: Phprand(0.5, 2.0),
        hr1: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        hr2: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        hr3: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        hr4: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        hr5: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        hr6: Pdup(Pexprand(99, 999), Pexprand(1, 5).round.unique),
        en1: 1 - Pexprand(0.2, 0.8),
        en2: 1 - Pexprand(0.2, 0.8),
        en3: 1 - Pexprand(0.2, 0.8),
        en4: 1 - Pexprand(0.2, 0.8),
        en5: 1 - Pexprand(0.2, 0.8),
        en6: 1 - Pexprand(0.2, 0.8),
        mi1: Pexprand(1, 1.5) - 1,
        mi2: Pexprand(1, 1.5) - 1,
        mi3: Pexprand(1, 1.5) - 1,
        mi4: Pexprand(1, 1.5) - 1,
        mi5: Pexprand(1, 1.5) - 1,
        mi6: Pexprand(1, 1.5) - 1,
        pan: pan,
        jpr: 1/2,
        jps: Pfunc{~jps.next},
        aux: Pxshuf((0 .. 7), inf),
    ]);
        Pseq([b], inf);
};
Pdef(0, ~a.(\fm0, 
    Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 54)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(1, ~a.(\fm1, 
    1 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 55)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(2, ~a.(\fm2, 
    2 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 56)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(3, ~a.(\fm3, 
    3 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 57)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(4, ~a.(\fm4, 
    4 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 58)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(5, ~a.(\fm5, 
    5 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 59)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(6, ~a.(\fm6, 
    6 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 60)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(7, ~a.(\fm7, 
    7 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 61)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(8, ~a.(\fm8, 
    8 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 62)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(9, ~a.(\fm9, 
    9 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 63)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(10, ~a.(\fma, 
    10 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 64)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(11, ~a.(\fmb, 
    11 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 65)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(12, ~a.(\fmc, 
    12 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 66)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(13, ~a.(\fmd, 
    13 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 67)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(14, ~a.(\fme, 
    14 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 68)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(15, ~a.(\fmf, 
    15 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 69)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(16, ~a.(\fmg, 
    16 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 70)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(17, ~a.(\fmh, 
    17 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 71)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(18, ~a.(\fmi, 
    18 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 72)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(19, ~a.(\fmj, 
    19 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 73)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(20, ~a.(\fmk, 
    20 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 74)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(21, ~a.(\fml, 
    21 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 75)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(22, ~a.(\fmm, 
    22 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 76)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(23, ~a.(\fmn, 
    23 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 77)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(24, ~a.(\fmo, 
    24 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 78)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(25, ~a.(\fmp, 
    25 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 79)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(26, ~a.(\fmq, 
    26 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 80)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(27, ~a.(\fmr, 
    27 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 81)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(28, ~a.(\fms, 
    28 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 82)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(29, ~a.(\fmt, 
    29 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 83)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(30, ~a.(\fmu, 
    30 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 84)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
Pdef(31, ~a.(\fmv, 
    31 + Pseg(Pseq([0, 0, Pwhite(-0.5, 0.5, 1)], inf), Pwhite(30.0, 75.0), \sin, inf), 
    Pseq([Pseq([0.9]), Pseq([0.4], 85)], inf) - Pseg([1, 0, 1], Pexprand(9, 99), \sin, inf),
    Pdup(inf, Pwhite(0.0, 1.0))
)).play;
)

32.do{|i|Pdef(i).stop;};
