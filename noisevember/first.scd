(
Pdef(0,
    Pseed(9097,
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: Pxshuf([\sin, \dfd, \bow, \fmx], inf),
            dur: 1 / Pseg(Plprand(8.0, 88.0), Plprand(9.0, 99.0), \wel, inf), 
            pan: Prand([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
            legato: Plprand(Pkey(\dur) / Pkey(\dur) * 100, Pkey(\dur) / Pkey(\dur) * 300),
            freq: Pseg(Pmeanrand(17.0, 117.0), Plprand(0.001, 3.5), \wel, inf).midicps,
            bnd: Pseg(Pmeanrand(-0.1, 0.1), Plprand(0.001, 1.5), \wel, inf),
            bno: Pseg(Phprand(3.0, 7.5), Plprand(0.001, 1.5), \wel, inf),
            bnt: Pseg(Pmeanrand(9.5, 23.5), Plprand(0.001, 1.5), \wel, inf),
            calculatedFreq: Pfunc{|ev| ev.use { ~freq.value() }},
            clf: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            ampComp: Pfunc({|ev|
                var root = 60.0;
                var freq = ev[\calculatedFreq];
                var xa = root / freq;
                var xb = 0.111; // Exponent
                xa.pow(xb);
            }),
            amp: Pseg(Plprand(1/4, 4.0), Plprand(10.0, 20.0), \wel, inf) * Pkey(\ampComp),
            shp: Pseg(Phprand(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            hr1: Pseg(Pmeanrand(0.975, 1.025), Plprand(0.001, 1.5), \wel, inf),
            hr2: Pseg(Pmeanrand(0.975, 1.025), Plprand(0.001, 1.5), \wel, inf),
            hr3: Pseg(Pmeanrand(0.975, 1.025), Plprand(0.001, 1.5), \wel, inf),
            hr4: Pseg(Pmeanrand(0.975, 1.025), Plprand(0.001, 1.5), \wel, inf),
            mi1: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            mi2: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            mi3: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            mi4: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            en1: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            en2: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            en3: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            en4: Pseg(Plprand(0.0, 5.0), Plprand(0.001, 1.5), \wel, inf),
            cu1: Pseg(Pmeanrand(-8.0, 8.0), Plprand(0.001, 1.5), \wel, inf),
            cu1: Pseg(Pmeanrand(-8.0, 8.0), Plprand(0.001, 1.5), \wel, inf),
            cu3: Pseg(Pmeanrand(-8.0, 8.0), Plprand(0.001, 1.5), \wel, inf),
            cu4: Pseg(Pmeanrand(-8.0, 8.0), Plprand(0.001, 1.5), \wel, inf),
            sha: 0.0,
            sho: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            hit: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            lot: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            tri: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.5), \wel, inf),
            atk: Plprand(3.0, 19.9),
            hld: Plprand(1.5, 9.9),
            crv: 0.0,
            rel: Plprand(Pkey(\dur) * 25, Pkey(\dur) * 250),
            cav: 1/8,
            cai: Pseg([1, 0, 0], 200, \lin, 1),
            tnh: 1,
            tng: 1.25,
        ])
    )
).play
)


