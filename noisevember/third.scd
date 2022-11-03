(
Pdef(0,
    Pseed(2,
        Pbind(*[
            type: \cln,
            snd: \clp,
            srp: Pdup(Plprand(11, 112), Plprand(0.0, 1.0)),
            srq: Pdup(Plprand(11, 113), Plprand(0.0, 0.5)),
            bdy: Pdup(Plprand(11, 114), Plprand(0.0, 1.0)),
            bdt: Pdup(Plprand(11, 115), Plprand(0.0, 1.0)),
            tha: Pdup(Plprand(11, 116), Plprand(0.0, 0.5)),
            tho: Pdup(Plprand(11, 117), Plprand(0.0, 0.5)),
            fco: Pdup(Plprand(11, 118), Plprand(0.0, 1.0)),
            atk: Pdup(Plprand(11, 119), Plprand(0.0, 10.0)),
            rel: Pdup(Plprand(11, 110), Phprand(19.0, 99.0)),
            ocd: Pdup(Plprand(11, 111), Phprand(0.0, 1.0)),
            ocq: Pdup(Plprand(11, 112), Phprand(0.0, 1.0)),
            rma: Pdup(Plprand(11, 113), Phprand(0.0, 1.0)),
            rmf: Pdup(Phprand(11, 114), Phprand(20, 2000)),
            rdf: Pdup(Phprand(11, 115), Phprand(20, 2000)),
            rdt: Pdup(Plprand(11, 116), Phprand(32.0, 64.0)),
            fsh: Pdup(Plprand(11, 117), Pmeanrand(-8.0, 8.0)),
            fsm: Pdup(Plprand(11, 118), Pmeanrand(-8.0, 8.0)),
            legato: 99,
            pan: Pwhite(0.0, 1.0),
            amp: Plprand(1/8, 0.55),
            dur: 1 / Plprand(1.0, 99.0).trace,
            dst: 1,
            cav: 1/8,
        ])
    )
).play
)
