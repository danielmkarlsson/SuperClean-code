History.clear.end // reset history
History.start // start recording history
(
Pdef(0, 
    Pbind(*[
        type: \cln,
        snd: Prand([\drm, \dfd], inf),
        dur: 1 / Plprand(4.0, 8.0, 15), // finite events
        tun: Plprand(3.0, 9.0, 15).round(1/6), // finite events
        fed: Plprand(1.0, 5.0).trace,
        freq: Pkey(\tun).linlin(3.0, 9.0, 100.0, 400.0).round(50),
        rel: 9,
        legato: 9,
        pew: Phprand(0.5, 1.0),
        pan: Pwhite(0.0, 1.0),
        tnh: 1,
        tng: 8,
        shp: 1/99,
        shi: Pdup(inf, Pmeanrand(0.1, 0.9)),
        slo: Pdup(inf, Pmeanrand(0.1, 0.9)),
        sha: 1,
        amp: Pdup(inf, Plprand(0.5, 1.0)),
    ])
).play
)

History.end // stop recording history
History.started // check if history is still being recorded
(
Routine{
History.play; // play back history
	6.wait;
}.loop.play // same instruction yielding new results every time
)
