History.clear.end // reset history
History.start // start recording history

(
Pdef(0,
    Pseed(0,
        Pbind(*[
            type: \cln,
            snd: \saw,
            dur: 1/8,
            freq: Plprand(100.0, 400.0),
        ])
    )
).play
)

Pdef(0).stop

History.end // stop recording history
History.started // check if history is still being recorded
History.play // play back history

History.clear.end // reset history
History.start // start recording history

(
Pdef(0,
    Pseed(999,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\drm, \hat], [40, 1], inf),
            dvl: Plprand(7.0, 13.0),
            dvd: Pkey(\dvl).linlin(7.0, 13.0, 1, 37),
            dur: 1 / Pdup(Pkey(\dvd), Pkey(\dvl)),
            rel: Plprand(2.2, 100.1),
            crv: Pseg(Pmeanrand(-8.0, 8.0), Plprand(30.0, 90.0), \wel, inf),
            tun: Pdup(Pkey(\dvd), Plprand(3.0, 9.0)).round(1/5),
            amp: Pdup(Plprand(1, 2), Plprand(0.2, 2.0)) / Pkey(\tun).explin(3.0, 9.0, 1.0, 3.0),
            pan: Pwhite(0.0, 1.0),
            fed: Plprand(0.0, 0.9),
            shp: Phprand(0.0, 1.0),
            sho: Pmeanrand(0.0, 1.0),
            shi: Pmeanrand(0.0, 1.0),
            slo: Pmeanrand(0.0, 1.0),
            hit: Pmeanrand(0.0, 1.0),
            lot: Pmeanrand(0.0, 1.0),
            hpv: Plprand(20, 750),
            hpd: Pkey(\hpv).explin(20, 750, 37, 1),
            hpf: Pdup(Pkey(\hpd), Pkey(\hpv)),         
            lpf: Phprand(2000, 20000),
            lhf: Pkey(\tun).linlin(2.0, 11.0, 0.5, 0.125),
            legato: 29,
            cav: 1/2,
            cai: Pseg(Plprand(0.0, 0.5), Plprand(3.0, 90.0), \wel, inf).trace,
            rma: Pseg(Plprand(0.0, 1.0), Plprand(3.0, 90.0), \wel, inf),
            rmf: Plprand(400.0, 2000.0).round(200),
            tri: Plprand(0.0, 1.0),
        ])
    )
).play
)

Pdef(0).stop

History.end // stop recording history
History.saveStory("~/history.scd") // save current history to a location

History.loadStory("~/history.scd") // load up a saved history file
History.play // play back history
