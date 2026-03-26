(
~a = {arg seed, dgr, aux;
    var b = Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: Pxshuf([
            \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
            \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
            \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fmi, \fmj,
            \fmu, \fmv, \fmw,
        ], inf),
        amp: 1,
        sustain: Pexprand(0.004, 16.0).trace,
        dur: Pkey(\sustain) / Pseg(Pwhite(9.0, 18.0), Pwhite(1.0, 8.0), \wel, inf),
        pan: Pseq([0, 1, 0.5, 0.25, 0.75], inf),
        octave: Pxshuf((2 .. 8), inf),
        scale: Scale.chromatic24,
        degree: dgr,
        frq: Pfunc{|ev|ev.use{ev.freq}},
        hr1: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        hr2: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        hr3: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        hr4: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        hr5: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        hr6: Pseg(Pexprand(1, 11), Pexprand(1.8, 18.0), \lin, inf).round(0.5).unique,
        en1: Pseg(Pwhite(0.1, 0.9), Pwhite(90.0, 180.0), \lin, inf),
        en2: Pkey(\en1),
        en3: Pkey(\en1),
        en4: Pkey(\en1),
        en5: Pkey(\en1),
        en6: Pkey(\en1),
        mi1: Pseg(Pexprand(0.3, 30.0), Pexprand(1.0, 180.0), \lin, inf),
        mi2: Pkey(\mi1),
        mi3: Pkey(\mi1),
        mi4: Pkey(\mi1),
        mi5: Pkey(\mi1),
        mi6: Pkey(\mi1),
        amp: Pseg([1/16, Plprand(0.45, 0.9, 1)], Pexprand(1.8, 18.0), \exp, inf)
            / Pkey(\sustain).linlin(0.004, 16.0, 1, 1.5)
            / Pkey(\frq).expexp(20, 10000, 1, 3),
        hpf: 40,
        cav: 1/5,
        aux: aux,
    ]);
        Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(9089, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 0)).play;
Pdef(1, ~a.(9189, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 1)).play;
Pdef(2, ~a.(9289, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 2)).play;
Pdef(3, ~a.(9389, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 3)).play;
Pdef(4, ~a.(9489, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 4)).play;
Pdef(5, ~a.(9589, Pdup(Pexprand(99, 9999), Pxshuf((0 .. 24), inf)), 5)).play;
)

