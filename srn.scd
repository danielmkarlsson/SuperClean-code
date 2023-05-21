~clean.lsf("~/snd/srn")
(
Pdef(0,
    Pseed(9396, 
        Pbind(*[
            type: Pwrand2([\cln, \rest], [4, 1], inf),
            snd: \srn,
            dur: 1 / Prand([2, 4], inf),
            num: Pdup(Pseg(Pdup(2, Plprand(1, 25), Plprand(3.0, 19.0), \wel, inf)), Pxshuf((0 .. 6), inf)),
            amp: Pdup(Plprand(1, 19), Plprand(1/8, 8.0)).trace,
            pan: Pseq([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
            spd: 1 / Pdup(Plprand(1, 4), Prand([1/4, 1/2, 1, 2, 4], inf)),
            tnh: 1,
            tng: Pseg(Pdup(2, Plprand(0.0, 1.5), Plprand(3.0, 19.0), \wel, inf)),
            lpf: Plprand(20, 20000),
            hpf: Pseg(Pdup(2, Plprand(20, 200)), Plprand(3.0, 19.0), \wel, inf),
            cav: 1/32,
            cai: Pseg(Pdup(2, Plprand(0.0, 1.0)), Plprand(3.0, 19.0), \wel, inf),
            stretch: Pseg(Pdup(2, Plprand(1/32, 0.5)), Plprand(3.0, 19.0), \wel, inf),
            fsh: Pseg(Pdup(2, Plprand(-2.0, 2.0)), Plprand(3.0, 19.0), \wel, inf),
            fsm: Pdup(Plprand(20, 200), Plprand(-1.0, 1.0)),
            legato: Pseg(Pdup(2, Plprand(4.0, 29.0)), Plprand(3.0, 19.0), \wel, inf),
        ])
    )
).play
)
