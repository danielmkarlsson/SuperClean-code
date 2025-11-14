(
~dgr = Pdup(19, Pxshuf((-32 .. 12), 1)).asStream;
~a = {arg snd, amp;
    var b = Pbind(*[
        type: \cln,
        snd: snd,
        dur: Pseq([6]),
        amp: Plprand(0.45, 0.9),
        pan: Pxshuf((0, 1/10 .. 1), inf),
        sustain: Pexprand(1/18, 5.0),
        en1: Pwhite(0.0, 0.9),
        en2: Pwhite(0.0, 0.9),
        en3: Pwhite(0.0, 0.9),
        en4: Pwhite(0.0, 0.9),
        en5: Pwhite(0.0, 0.9),
        en6: Pwhite(0.0, 0.9),
        scale: Scale.chromatic(\sept1),
        degree: Pfunc{~dgr.next}.trace,
    ]);
        Pseq([b], inf);
};
Pdef(0, ~a.(\fm0)).play;
Pdef(1, ~a.(\fm1)).play;
Pdef(2, ~a.(\fm3)).play;
Pdef(3, ~a.(\fm7)).play;
Pdef(4, ~a.(\fma)).play;
Pdef(5, ~a.(\fme)).play;
Pdef(6, ~a.(\fmf)).play;
Pdef(7, ~a.(\fmg)).play;
Pdef(8, ~a.(\fmh)).play;
Pdef(9, ~a.(\fmi)).play;
Pdef(10, ~a.(\fmj)).play;
Pdef(11, ~a.(\fmk)).play;
Pdef(12, ~a.(\fml)).play;
Pdef(13, ~a.(\fmp)).play;
Pdef(14, ~a.(\fmq)).play;
Pdef(15, ~a.(\fmr)).play;
Pdef(16, ~a.(\fms)).play;
Pdef(17, ~a.(\fmu)).play;
Pdef(18, ~a.(\fmv)).play;
)

(
var n = 19;
n.do {|i|
    "Pdef(%) stopped".format(i).postln;
    Pdef(i).stop;
};
)

s.record
