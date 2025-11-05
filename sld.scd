(
~wvl = Pdup(3, Pexprand(1.0, 30.0)).asStream;
r.stop;
r = {
    loop {
        Pdef(0,
            Pbind(*[
                type: \cln,
                snd: Pn(Pshuf([
                    \fm0, \fm1, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9, 
                    \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi,
                    \fmj, \fml,
                ], 5), inf),
                dur: Pseg([1, 0.0225, 1], Pfunc{~wvl.next}, \exp, 1),
                sustain: Pkey(\dur).expexp(0.0225, 1, 1/10, 8.0).trace,
                pan: Pn(Pshuf((0, 1/19 .. 1), 5), inf),
                amp: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.2, 0.7),
                mi1: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                mi2: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                mi3: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                mi4: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                mi5: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                mi6: Pn(Pshuf((0, 1/19 .. 1), 5), inf).linlin(0.0, 1.0, 0.25, 3.0),
                scale: Scale.harmonicMinor(\sept2),
                degree: Pdup(inf, Pwhite(-14, 0)),
                dla: 1/2,
                dlf: 0.94,
                dlt: 90,
            ])
        ).play(quant:0);
        (~wvl.next * 2).wait;
        Pdef(0).stop;
        2.wait;
    }
}.fork;
)

(
r.stop;
Pdef(0).stop;
)

s.record
