(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \dfd,
        res: 1.1,
        crv: -8,
        rps: Pwrand2((1..33),(33..1),inf), // made up parameter name, can be anything, calculates a value
        dur: 1/Pstutter(Pkey(\rps),Prand([5,7,9,11],inf)), // reference any parameter above this line with Pkey
        den: Pstutter(Pkey(\rps),Prand((0.0,0.01..1.0),inf)), // these all change together now
        scm: Pstutter(Pkey(\rps),Prand((0.0,0.0001..0.025),inf)),
        tri: Pstutter(Pkey(\rps),Prand((0.0,0.01..1.0),inf)),
        rin: Pstutter(Pkey(\rps),Prand((0.0,0.01..1.0),inf)),
        rev: Pstutter(Pkey(\rps),Prand((0.0,0.01..1.0),inf)),
        dry: Pstutter(Pkey(\rps),Prand((0.95,0.96..1.0),inf)),
        hlf: Pstutter(Pkey(\rps),Prand((0.0,0.01..0.7),inf)),
        lpf: Pstutter(Pkey(\rps),Prand((80,81..20000),inf)),
        hpf: Pstutter(Pkey(\rps),Prand((20,21..5000),inf)),
        bpf: Pstutter(Pkey(\rps),Prand((20,21..2000),inf)),
        rma: Pstutter(Pkey(\rps),Prand((0.0,0.01..0.8),inf)),
        rmf: Pstutter(Pkey(\rps),Prand((50,51..500),inf)),
        amp: Pstutter(Pkey(\rps),Prand((4.0,4.01..8.0),inf)),
        rel: Pstutter(Pkey(\rps),Prand((0.075,0.076..1.0),inf)),
        freq: 20*Pstutter(Pkey(\rps),Pwrand2((1..10),(10..1),inf)*Pwrand2((1..5),(5..1),inf)),
        dark: Pstutter(Pkey(\rps),Pwrand2((0,0.001..0.05),(0.05,0.049..0.0),inf)).trace,
        stretch: Pstutter(Pkey(\rps),Pwrand2((0.25,0.251..1.0),(1.0,0.999..0.25),inf)),
    ])
).play(quant:1);
)
