(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \dfd,
        amp: (Pdup(Prand((1..5),inf),Pseq((1.0,1.01..5.0),inf))*Pdup(Prand((1..3),inf),Prand((0.9..1.1),inf))),
        dur: 1/Pdup(Prand((1..10),inf),Pseq((21,20.9..1),inf)),
        den: Pdup(Prand((1..15),inf),Pseq((0.00001,0.00007..0.01),inf)),
        res: Pdup(Prand((1..20),inf),Pseq([Pseq((0.80,0.801..0.999),1),Pdup(1,0.999)],inf)).trace,
        pan: Pdup(Prand((1..25),inf),Pseq([Prand((0.0,0.01..0.5),inf),Prand((0.5,0.51..1.0),inf)],inf)),
        atk: Pdup(Prand((1..30),inf),Prand((10.0,9.9..0),inf)),
        rel: Pdup(Prand((1..35),inf),Prand((10.0,9.75..0),inf)),
        freq: 32*Pdup(Pwrand2((1..40),(40..1),inf),Pseq(((1..11)++(9,7..1)++(2,4..10)++(11..1)),inf)),
        crv: Prand((-8.0,-7.5..8.0),inf),
        dla: 1/9,
        dlf: 0.8,
        dlt: 4,
        sustain: 7,
    ])
).play
)
