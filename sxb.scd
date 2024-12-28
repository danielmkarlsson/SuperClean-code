~clean.lsf("~/snd/sxb")
(
~a={|seed, num, amp, flp, dur|
	var b =
	Pbind(*[
        type: Pseq([\rest, Pseq([\cln], inf)], inf),
        snd: \sxb,
        num: num,
        amp: amp,
        flp: flp,
        spd: Phprand(0.25, 1.0).trace,
        dur: dur,
	]);
	Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(40, 0, 0.7, 1, Pseq([Pwhite(0.01, 20.0, 1), 37 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
Pdef(1, ~a.(51, 1, 0.7, 1, Pseq([Pwhite(0.01, 20.0, 1), 104 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
Pdef(2, ~a.(52, 2, 0.6, 1, Pseq([Pwhite(0.01, 20.0, 1), 59 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
Pdef(3, ~a.(43, 3, 0.5, 1, Pseq([Pwhite(0.01, 20.0, 1), 83 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
Pdef(4, ~a.(54, 4, 0.9, 1, Pseq([Pwhite(0.01, 20.0, 1), 136 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
Pdef(5, ~a.(55, 5, 1.0, 1, Pseq([Pwhite(0.01, 20.0, 1), 124 * Pkey(\spd).linlin(0.25, 1.0, 4.0, 1.0) + Pwhite(0.0, 4.0)], inf))).play;
)
