(
~a = {|aux, freq|
    var b =
    Pbind(*[
        type: \cln,
        snd: \fmx,
        hr1: Pseg(Pdup(2, Plprand(0, 6).unique), Plprand(2.0, 20.0), \wel, inf).asInteger,
        hr2: Pseg(Pdup(2, Plprand(0, 6).unique), Plprand(2.0, 20.0), \wel, inf).asInteger,
        hr3: Pseg(Pdup(2, Plprand(0, 6).unique), Plprand(2.0, 20.0), \wel, inf).asInteger,
        hr4: Pseg(Pdup(2, Plprand(0, 6).unique), Plprand(2.0, 20.0), \wel, inf).asInteger,
        mi1: Pseg(Pdup(2, Pexprand(0.00001, 10.0)), Pexprand(2.0, 20.0), \wel, inf),
        mi2: Pseg(Pdup(2, Pexprand(0.00001, 10.0)), Pexprand(2.0, 20.0), \wel, inf),
        mi3: Pseg(Pdup(2, Pexprand(0.00001, 10.0)), Pexprand(2.0, 20.0), \wel, inf),
        mi4: Pseg(Pdup(2, Pexprand(0.00001, 10.0)), Pexprand(2.0, 20.0), \wel, inf),
        en1: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(2.0, 20.0), \wel, inf),
        en2: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(2.0, 20.0), \wel, inf),
        en3: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(2.0, 20.0), \wel, inf),
        en4: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(2.0, 20.0), \wel, inf),
        cu1: Pseg(Pdup(2, Pmeanrand(-8.0, 8.0)), Pexprand(2.0, 20.0), \wel, inf),
        cu2: Pseg(Pdup(2, Pmeanrand(-8.0, 8.0)), Pexprand(2.0, 20.0), \wel, inf),
        cu3: Pseg(Pdup(2, Pmeanrand(-8.0, 8.0)), Pexprand(2.0, 20.0), \wel, inf),
        cu4: Pseg(Pdup(2, Pmeanrand(-8.0, 8.0)), Pexprand(2.0, 20.0), \wel, inf),
        dur: 1/8,
        atk: 0.01,
        rel: 7.5,
        crv: Plprand(-8.0, 0.0),
        crt: Phprand(0.0, 8.0),
        sustain: 7.52,
        freq: freq,
        amp: Pseg(Pseq([0, Pdup(inf, Phprand(0.15, 0.3))], 1), Pseq([5, inf], 1), \wel, 1) / Pkey(\freq).linlin(40, 320, 1, 2),
        pan: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(2.0, 20.0), \wel, inf),
        lpf: Pseg(Pdup(2, Plprand(20.0, 20000.0)), Pwhite(2.0, 20.0), \exp, inf),
        cav: 1/2,
        cai: Pkey(\lpf).linlin(20, 20000, 1, 0),
        aux: aux,
    ]);
    Pseq([b], inf);
};
Routine{
    loop{
        Pdef(0, ~a.(0, Pseg(Pdup(2, Plprand(20, 160).round(20).unique), Pseq([30, 30, inf], 1), \wel, 1).trace(prefix: "freq_0: "))).play;
        exprand(30.0, 60.0).wait;
        Pdef(1, ~a.(1, Pseg(Pdup(2, Plprand(20, 160).round(20).unique), Pseq([30, 30, inf], 1), \wel, 1).trace(prefix: "freq_1: "))).play;
        exprand(30.0, 60.0).wait;
        Pdef(2, ~a.(2, Pseg(Pdup(2, Plprand(20, 160).round(20).unique), Pseq([30, 30, inf], 1), \wel, 1).trace(prefix: "freq_2: "))).play;
        exprand(30.0, 60.0).wait;
        Pdef(3, ~a.(3, Pseg(Pdup(2, Plprand(20, 160).round(20).unique), Pseq([30, 30, inf], 1), \wel, 1).trace(prefix: "freq_3: "))).play;
        exprand(30.0, 60.0).wait;
    }.play;
}.play
)

// this lil snip uses four auxes all coming out of the first available stereo pair in SuperClean
// you can set this up in your startup.scd file with this line:
// ~clean.start([0, 0, 0, 0]);
