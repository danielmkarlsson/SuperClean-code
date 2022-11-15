(
Pdef(0,
    Pseed(2843,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 6], inf),
            snd: Pwrand2([\sin, \saw, \bow, \ixa, \kps], [5, 4, 3, 2, 1], inf),
            dur: 1/9,
            wid: Plprand(0.0, 0.5),
            bnd: Pwrand2([0, Plprand(-0.25, 0.0, 1)], [1, 3], inf),
            bno: Plprand(0.5, 3.0),
            bnt: Phprand(9.0, 18.0) * 2,
            atk: Plprand(0.0, 0.5),
            rel: Phprand(12.0, 18.0),
            crv: -6,
            amp: Pdup(Plprand(4, 16), Plprand(1/2, 1.0)),
            legato: 49,
            pan: Pseq([Plprand(0.0, 0.5, 1), 0.5, Phprand(0.5, 1.0, 1), 0.5], inf),
            freq: Ptuple([
                Pdup(Plprand(4, 16), Plprand(40, 1280)),
                Pdup(Plprand(4, 16), Phprand(40, 2560)),
                Pdup(Plprand(4, 16), Plprand(40, 1280)),
                Pdup(Plprand(4, 16), Phprand(40, 2560)),
                Pdup(Plprand(4, 16), Plprand(40, 1280)),
            ], inf).round(40).trace,
            lpf: Pkey(\freq) * Prand([1, 2, 4, 8, 16], inf),
            cav: 1/8,
            cai: Pseq([Pseg([1, 0], 120, \lin, 1), Pdup(inf, 0)], inf),
            ocu: Plprand(0.0, 1.0),
            ocd: Plprand(0.0, 1/2),
            ocq: Plprand(0.0, 1/2),
            fsh: Pmeanrand(-20.0, 20.0),
            fuz: Pwrand2([0, 1], [2, 1], inf),
            fzv: 100,
            stretch: Pseg([1, 1/3], Plprand(9, 29), \sin, inf),
        ])
    )
).play
)
