(
thisThread.randSeed = 9599;
~aux = Pdup(2, Pxshuf((0 .. 15), inf)).asStream;
~jps = Pdup(2, Pbrown(0.5, 0.75, Pexprand(0.00001, 0.0001))).asStream;
Pdef(16,
    Pbind(*[
        type: \cln,
        snd: \sin,
        amp: 0,
        dur: 1/16,
        aux: Pfunc{~aux.next}, // keep auxes open
        jps: Pfunc{~jps.next},
        jpr: 1/4,
    ])
).play;
~snd = Pxshuf([
    \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9, 
    \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj, 
    \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt, 
    \fmu, \fmv
], inf).asStream;
~oct = Pxshuf((4 .. 6), inf).asStream;
~dgr = Pxshuf((-7, -6 .. 7), inf).asStream;
~pan = Pxshuf((0, 1/31 .. 1), inf).asStream;
~a = {arg snd, octave, degree, pan, aux, cut;
    var b = Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: snd,
		dur: Pexprand(0.01, 0.08 * 14).round(0.08),
        octave: octave,
        degree: degree,
        amp: Pseg([0, 0.7, 0], Pdup(2, Pexprand(4.0, 22.0)), \wel, 1) 
            + (Pexprand(1.0, 1.1) - 1) 
            / Pkey(\octave).linlin(4, 6, 1, 1.125),
        cut: cut,
        mi1: Pexprand(1, 4) - 1,
        mi2: Pexprand(1, 4) - 1,
        mi3: Pexprand(1, 4) - 1,
        mi4: Pexprand(1, 4) - 1,
        mi5: Pexprand(1, 4) - 1,
        mi6: Pexprand(1, 4) - 1,
        jpr: 1/4,
        jps: Pfunc{~jps.next},
        lhf: Pwrand2([
            Pseg([0, 0.5, 0], Pdup(2, Pexprand(4.0, 22.0)), \wel, 1),
            Pseg([1, 0.5, 1], Pdup(2, Pexprand(4.0, 22.0)), \wel, 1),
        ], [4, 1], 1),
        hlf: Pwrand2([
            Pseg([0, 0.5, 0], Pdup(2, Pexprand(4.0, 22.0)), \wel, 1),
            Pseg([1, 0.5, 1], Pdup(2, Pexprand(4.0, 22.0)), \wel, 1),
        ], [4, 1], 1).trace,
        aux: aux,
    ]);
        Pseq([b], inf);
};
Pdef(0, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 1)).play;
Pdef(1, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 2)).play;
Pdef(2, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 3)).play;
Pdef(3, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 4)).play;
Pdef(4, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 5)).play;
Pdef(5, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 6)).play;
Pdef(6, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 7)).play;
Pdef(7, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 8)).play;
Pdef(8, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 9)).play;
Pdef(9, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 10)).play;
Pdef(10, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 11)).play;
Pdef(11, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 12)).play;
Pdef(12, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 13)).play;
Pdef(13, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 14)).play;
Pdef(14, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 15)).play;
Pdef(15, ~a.(Pdup(inf, Pfunc{~snd.next}), Pdup(inf, Pfunc{~oct.next}), Pdup(inf, Pfunc{~dgr.next}), Pdup(inf, Pfunc{~pan.next}), Pdup(inf, Pfunc{~aux.next}), 16)).play;
)

( // this comes in real handy when you have a bunch more Pdefs
var n = 16;
n.do {|i|
    Pdef(i).stop;
};
)



