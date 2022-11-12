(
Pdef(0,
    Pseed(9097,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\sin, \bow, \fmx], [1, 16, 4], inf),
            dur: Plprand(1/9, 1/5),
            atk: Plprand(0.0, 9.0),
            rel: Plprand(8.0, 49.0),
            hr1: Plprand(0.0, 9.0),
            hr2: Plprand(0.0, 7.0),
            hr3: Plprand(0.0, 5.0),
            hr4: Plprand(0.0, 3.0),
            mi1: Phprand(0.0, 9.0),
            mi2: Phprand(0.0, 7.0),
            mi3: Phprand(0.0, 5.0),
            mi4: Phprand(0.0, 3.0),
            crv: 0,
            legato: (Pkey(\atk) + Pkey(\rel)) * 2,
            freq: Pdup(Plprand(1, 11), Plprand(20.0, 1600.0)) / Pwrand2([1, 2], [1, 2], inf),
            pan: Pwhite(0.0, 1.0),
            clp: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            clf: Pfunc{|ev|ev.use{~freq.value()}},
            ampComp: Pfunc({|ev|
                var root = 60.0;
                var freq = ev[\clf];
                var xa = root / freq;
                var xb = 0.333; // exponent
                xa.pow(xb);
            }),
            amp: Plprand(1/7, 1/3) + Pseq([Pseg([0.0, 0.5], 240, \sin, 1), Pdup(99, 1)], 1),
            cav: 1/2,
            bnd: Prand([Plprand(-0.5, 0.0, 1), Phprand(0.0, 0.5, 1)], inf),
            bno: Plprand(5.0, 11.0),
            bnt: Pmeanrand(22.0, 33.0),
            lpf: Plprand(20.0, 20000.0),
            shp: 1/2,
            sho: Plprand(0.0, 1.0),
            shi: Plprand(0.0, 1.0),
            slo: Plprand(0.0, 1.0),
            hit: Plprand(0.0, 1.0),
            lot: Plprand(0.0, 1.0),
            tri: Plprand(0.0, 1.0),
            dst: Plprand(0.0, 1.0),
            fzv: Plprand(0.0, 5.0),
            fuz: Pwrand2([0, 1], [4, 1], inf),
            hal: Pseq([Pseg([1/9, 0], 180, \lin, 1), Pdup(99, 0)], 1),
            lhf: Pseq([Pseg([0.5, 0.25], 240, \sin, 1), Pdup(99, 0)], 1),
            rts: 149,
        ])
    )
).play
)
