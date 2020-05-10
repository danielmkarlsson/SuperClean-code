~clean.loadSoundFiles("Downloads/fourBQLE_RrTSU");
(
    Pdef(\0,
        Pseed(10,
        Pbind(*[
            type: \clean,
            s: \fourBQLE_RrTSU,
            tme: Pexprand(7,19),
            rps: Pexprand(15,115),
            legato: Pseg(Pexprand(2,8),Pkey(\tme),\lin,inf),
            dur: 1/Pwhite(3,13)/Pstutter(Pkey(\rps),Pseg(Pexprand(0.5,4),Pkey(\tme),\exp,inf)),
            begin: Pstutter(Pkey(\rps),Pseg(Pwhite(0.0,1.0),Pkey(\tme),\lin,inf)),
            gain: Pseg(Pexprand(0.85,8.5),Pkey(\tme),\exp,inf),
            pan: Pseg(Pwhite(0.25,0.75),Pkey(\tme),\lin,inf),
            bpf: Pstutter(Pkey(\rps),Pseg(Pexprand(20,1000),Pkey(\tme),\lin,inf)),
            rel: Pkey(\dur)*Pkey(\legato),
            crv: -18,
            dla: Pseg(Pexprand(0.01,1.0),Pkey(\tme),\exp,inf).trace,
            dlf: 0.94,
            dlt: Pstutter(Pkey(\rps),1/283/Pseg(Pexprand(0.25,1.0),Pkey(\tme),\exp,inf)),
        ])
    )
    ).play
)

Pdef(\0).stop
