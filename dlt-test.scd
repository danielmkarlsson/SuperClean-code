(
Pdef(0,
    Pseed(0,
        Pbind(*[
            type: \cln,
            snd: \sin,
            dla: 1,
            dlf: 1,
            dlt: 16,
            freq: Pseg(Pexprand(20,20000),Pwhite(1.0,64.0),\exp,inf).trace,
            pan: Pwhite(0.0,1.0),
            dur: 1/Pseg(Pwhite(1.0,64.0),Pwhite(1.0,256.0),\exp,inf),
            atk: Pwhite(1.0,4.0),
            hld: Pwhite(2.0,4.0),
            rel: Pwhite(1.0,4.0),
            crv: Pwhite(-4.0,4.0),
            sustain: 4,
            amp: Pkey(\freq).expexp(20,20000,6/9,1/9),
        ])
    )
).play
)
