(
r = Routine{
    loop{
        Pdef(0,
            Pseed(1914,
            Pbind(*[
                type: \cln,
                snd: \drm,
                dur: 1 / Pdup(Plprand(1, (9 * 1)), Pwrand2([8, 4], [1.5, 1], 3)), // steps
                amp: Plprand(1.0, 8.0).trace,
                pan: Pmeanrand(0.0, 1.0),
                fed: Plprand(0.0, 3.5),
                rel: Pexprand(0.1, 2.0),
                shp: 1/8,
                shi: Pwhite(1.0, 1.0),
                slo: Pwhite(0.0, 1.0),
                hit: Pwhite(0.0, 1.0),
                lot: Pwhite(0.0, 1.0),
                shp: Pwhite(0.0, 1.0),
                shi: Pwhite(0.0, 1.0),
                slo: Pwhite(0.0, 1.0),
                hit: Pwhite(0.0, 1.0),
                lot: Pwhite(0.0, 1.0),
                dfm: Plprand(0.0, 1.0),
                dfg: Plprand(0.0, 10.0),
                tnh: Plprand(0.0, 1.0),
                tng: Plprand(0.0, 10.0),
                tun: Plprand(0.0, 8.0).round(0.8), // pitches
                legato: 10,
                stretch: 0.8,
            ])
        )
    ).play;
    1/999.wait;
    Pdef(0).stop;
}
}.play
)

r.stop // no go
