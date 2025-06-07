(
~sgt = Pexprand(15, 45).asStream;
~sus = Phprand(0.4, 4.0).asStream;
~oct = Pmeanrand(3, 5).round.asStream;
~dgr = Plprand(0, 7).asStream;
~hr1 = Pdup(inf, Plprand(0, 5).unique).asStream;
~hr2 = Pdup(inf, Plprand(0, 5).unique).asStream;
~hr3 = Pdup(inf, Plprand(0, 5).unique).asStream;
~hr4 = Pdup(inf, Plprand(0, 5).unique).asStream;
~mi1 = (Pexprand(1.0, 3.0) - 1).asStream;
~mi2 = (Pexprand(1.0, 3.0) - 1).asStream;
~mi3 = (Pexprand(1.0, 3.0) - 1).asStream;
~mi4 = (Pexprand(1.0, 3.0) - 1).asStream;
~dup = Pexprand(9, 299).asStream;
)

(
~a = {|seed, pan, aux|
    var b = Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        amp: Pseg([1/8, 0.7, 1/8], Pfunc{~sgt.next}, \sin, inf),
        sustain: Pkey(\dur) * Pfunc{~sus.next},
        en1: 0.005,
        scale: Scale.harmonicMinor,
        octave: Pdup(Pfunc{~dup.next}, Pfunc{~oct.next}),
        degree: Pdup(Pfunc{~dup.next}, Pfunc{~dgr.next}),
        hr1: Pfunc{~hr1.next},
        hr2: Pfunc{~hr2.next},
        hr3: Pfunc{~hr3.next},
        hr4: Pfunc{~hr4.next},
        mi1: Pfunc{~mi1.next},
        mi2: Pfunc{~mi2.next},
        mi3: Pfunc{~mi3.next},
        mi4: Pfunc{~mi4.next},
        mir: 1/9,
        mii: Pseg(Pdup(2, Pexprand(0.1, 1.0)), Pwhite(5.0, 10.0), \wel, inf).trace,
        lpf: Pseg(Pdup(2, Pexprand(200, 20000)), Pwhite(5.0, 10.0), \wel, inf),
        hpf: Pseg(Pdup(2, Pexprand(20, 200)), Pwhite(5.0, 10.0), \wel, inf),
        aux: aux,
        pan: pan,
    ]);
    Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(0, 0, 0)).play;
Pdef(1, ~a.(1, 1, 1)).play;
Pdef(2, ~a.(2, 2, 1/8)).play;
Pdef(3, ~a.(3, 3, 2/8)).play;
Pdef(4, ~a.(4, 4, 3/8)).play;
Pdef(5, ~a.(5, 5, 4/8)).play;
Pdef(6, ~a.(6, 6, 5/8)).play;
Pdef(7, ~a.(7, 7, 6/8)).play;
Pdef(8, ~a.(8, 8, 7/8)).play;
)

( 
var n = 9;
n.do {|i|
    "Pdef(%) stopped.".format(i).postln;
    Pdef(i).stop;
};
)
