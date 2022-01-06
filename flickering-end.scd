(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: Pwrand2([\hat, \drm, \dfd, \kps, \r], [2, 4, 8, 1, 2], inf),
        dur: 1 / Pdup(Plprand(5, 13), Plprand(1/2, 222)),
        atk: Plprand(0.0, 1.0),
        rel: Plprand(0.0, 3.75),
        tun: Plprand(0.0, 0.75), // oh hey, cool that it actually works on invideous too, thanks!
        freq: Pkey(\tun).linexp(0.0, 1.0, 20, 400),
        pew: Plprand(0.25, 1.0),
        bnd: Plprand(1/16, 1/8),
        amp: Pseg(Plprand(0.2, 2.0), Plprand(1.0, 10.0), \exp, inf),
        fsh: Plprand(-1.0, 1.0),
        fsm: Plprand(-4.0, 4.0),
        pan: Pmeanrand(0.0, 1.0),
        legato: Plprand(2, 80), 
        cav: 1,
        cai: Pdup(Plprand(9, 19), Plprand(0.0, 1/128)),
        shp: Phprand(0.0, 1.0), // Hey @draco, thanks for letting me know.
        sha: Plprand(0.0, 1.0),
        sho: Prand([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
        shi: Plprand(0.0, 1.0),
        slo: Phprand(0.0, 1.0),
        hit: Plprand(0.0, 1.0),
        lot: Phprand(0.0, 1.0),
        lhf: Pseed(0, Pmeanrand(0.2, 0.8)), // What is #sfsound?
        ocq: Plprand(0.0, 1.0),
        ocd: Plprand(0.0, 1.0), // anyone catch that umlaut?
        hal: Pdup(Plprand(1, 111), Prand([0, 0, 1], inf)),
        hai: Pseq([0, Plprand(0.0, 0.5, 1)], inf).trace,
        rts: Pseg([0, Plprand(0.0, 12.5, 1)], 20, \wel, inf), // winding down I guess
        tnh: 1, // Thanks for letting me try out some stuff
        tng: Pseg(Plprand(0.0, 8.0), Plprand(2.0, 20.0), \exp, inf), // See you around.
    ]) // stay safe (proly means stay at home right?)
).play // Read a book maybe?
) // Write some code maybe?
// Peace!
Pdef(0).stop

