(
thisThread.randSeed = 9999;
~a = {arg aux;
    var b = Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: Pxshuf([
            \fm0, \fm1, \fm3, \fm7, \fma, \fmd, \fmf, \fmg, 
            \fmi, \fmk, \fmm, \fmn, \fmq, \fmr, \fms, \fmu
        ], inf),
        dur: 1 / Pwhite(1.0, 22.0),
        scale: Scale.chromatic(\et31),
        octave: Pdup(Pexprand(1, 19), Pwhite(3, 5)),
        degree: Pdup(Pexprand(19, 199), Pxshuf((0, 7 .. 31), inf)),
        sustain: Pexprand(1, 5),
        en1: Pwhite(0.1, 0.9),
        en2: Pwhite(0.1, 0.9),
        en3: Pwhite(0.1, 0.9),
        en4: Pwhite(0.1, 0.9),
        en5: Pwhite(0.1, 0.9),
        en6: Pwhite(0.1, 0.9),
        amp: Pdup(Pexprand(1, 5), Pexprand(0.1, 0.9)),
        jpr: 1/4,
        jps: Pbrown(0.25, 0.75, Pwhite(0.0001, 0.01), inf),
        lpf: Pseg(Pexprand(20, 20000), Pwhite(2.0, 20.0), \exp, inf),
        hpf: Pseg(Pexprand(20, 2000), Pwhite(2.0, 20.0), \exp, inf).trace,
        aux: aux,
    ]);
        Pseq([b], inf);
};
Pdef(0, ~a.(0)).play;
Pdef(1, ~a.(1)).play;
Pdef(2, ~a.(2)).play;
Pdef(3, ~a.(3)).play;
Pdef(4, ~a.(4)).play;
Pdef(5, ~a.(5)).play;
Pdef(6, ~a.(6)).play;
Pdef(7, ~a.(7)).play;
Pdef(8, ~a.(8)).play;
Pdef(9, ~a.(9)).play;
Pdef(10, ~a.(10)).play;
Pdef(11, ~a.(11)).play;
)

(
var n = 12;
n.do {|i|
    Pdef(i).stop;
};
)
