(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(9393,
            Pbind(*[
                type: Pwrand2([\cln, \], [1, 64], inf),
                snd: \mmd,
                dur: 1/99,
                rel: (Pkey(\dur) * Pseries(1, 0.025, inf)).trace,
                legato: Pkey(\dur) * Pseries(1, 0.025, inf),
                num: Pseq([
                    0,1,1,0,2,2,2,0,3,2,4,1,1,0,4,4,4,1,4,0,5,5,4,1,6,2,1,0,6,7,5,
                    1,6,3,3,1,0,7,9,5,3,6,4,4,2,0,8,9,6,4,9,4,5,2,1,3,0,9,10,7,5,
                    10,6,6,3,1,4,2,0,10,11,8,6,11,6,9,3,2,5,3,2,0,11,11,10
                ], inf),
                amp: Plprand(1/32, 32.0),
                tun: Plprand(1/32, 4.0),
                fed: Plprand(0.0, 20.0),
                pan: Pmeanrand(0.25, 0.75),
                spd: Plprand(1/64, 32.0),
                dst: Pwhite(0.0, 1.0),
                fuz: Pwhite(0.0, 1.0),
                tnh: Pwhite(0.0, 1.0),
                tng: Pwhite(0.0, 10.0),
                lhf: Pwhite(0.0, 0.5),
                tmr: Pseg([0.0, 1.0], 239, \lin, 1), 
                hal: (8 - Pkey(\tmr).linlin(0.98, 0.99, 0.0, 8.0)),
                hai: Plprand(0.0, 1.0),
                rts: Plprand(10.0, 100.0) - Pkey(\tmr).linlin(0.98, 0.99, 0, 100),
                dla: Pseg([0, 1/32], 9, \sin, inf),
                dlf: 0.94 - Pkey(\tmr).linlin(0.98, 0.99, 0.0, 94.0),
                dlt: Pdup(Plprand(99, 999), Phprand(1/11, 1/5)),
                shp: 1,
                sho: Pmeanrand(0.0, 1.0),
                shi: Plprand(0.0, 1.0),
                slo: Phprand(0.0, 1.0),
                hit: Plprand(0.0, 1.0),
                lot: Phprand(0.0, 1.0),
                fuz: 1,
                fzv: 100,
            ])
        )
    ).play;
    240.wait;
    Pdef(0).stop;
}.play
)
