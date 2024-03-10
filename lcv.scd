(
~sgt = Pmeanrand(8, 64).unique.asStream;
~a={|type|
	var b =
	Pspawn(
        Pbind(*[
            method: \seq,
            pattern: Pfunc{|ev|
                Pbind(*[
                    type: type,
                    snd: \mmd,
                    num: Pdup(inf, Pxshuf((0 .. 12), 1)),
                    pan: Pdup(inf, Pmeanrand(0.1, 0.9)),
                    dur: 1/8,
                    rel: Pdup(inf, Pexprand(1/8, 8.0)),
                    crv: -8,
                    sustain: Pkey(\rel) / Pdup(inf, Pwrand2([1, 100], [8, 1], inf)),
                    amp: Pseg([0, 1, 0], Pfunc({~sgt.next}), \wel, 1).trace,
                    shp: Pdup(inf, Pexprand(1.0, 2.0) - 1),
                    sho: Pdup(inf, Pwhite(0.0, 1.0)),
                    shi: Pdup(inf, Pwhite(0.0, 1.0)),
                    slo: Pdup(inf, Pwhite(0.0, 1.0)),
                    hit: Pdup(inf, Pwhite(0.0, 1.0)),
                    lot: Pdup(inf, Pwhite(0.0, 1.0)),
                    tri: Pdup(inf, Pwhite(0.0, 1.0)),
                    dst: Pdup(inf, Pexprand(1.0, 2.0) - 1),
                    lhf: Pdup(inf, Pexprand(0.2, 0.7)),
                    lpf: Pdup(inf, Pexprand(20, 20000)),
                    tnh: 1,
                    tng: 5,
                    rma: 1,
                    rmf: Pdup(inf, Pexprand(0.01, 2.0)),
                    rdf: Pdup(inf, Pexprand(0.01, 2.0)),
                ])
            },
        ])
    );
	Pseq([b], inf);
};
)

(
Pdef(0, ~a.(Pshuf(((\!8) ++ (\cln!4)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(1, ~a.(Pshuf(((\!8) ++ (\cln!3)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(2, ~a.(Pshuf(((\!8) ++ (\cln!2)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(3, ~a.(Pshuf(((\!8) ++ (\cln!4)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(4, ~a.(Pshuf(((\!8) ++ (\cln!3)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(5, ~a.(Pshuf(((\!8) ++ (\cln!2)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(6, ~a.(Pshuf(((\!8) ++ (\cln!4)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
Pdef(7, ~a.(Pshuf(((\!8) ++ (\cln!3)).scramble.drop(exprand(1, 6).asInteger), inf))).play;
)

(
Pdef(0).stop; Pdef(1).stop; Pdef(2).stop; Pdef(3).stop;
Pdef(4).stop; Pdef(5).stop; Pdef(6).stop; Pdef(7).stop;
)
