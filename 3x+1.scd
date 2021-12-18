// Watch a video maybe?  
// https://www.youtube.com/watch?v=094y1Z2wpJg  
// Do some maths.

27 * 3 + 1

82 / 2

41 * 3 + 1

124 / 2

62 / 2

31 * 3 + 1

94 / 2

47 * 3 + 1

142 / 2

71 * 3 + 1

214 / 2

107 * 3 + 1

322 / 2

161 * 3 + 1

484 / 2

242 / 2

121 * 3 + 1

364 / 2

182 / 2

// Play the sequence once.

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \sin,
        freq: Pseq([27, 82, 41, 124, 62, 31, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91], 1).trace * 3,
        rel: 99,
        legato: 99,
        amp: 0.46,
        dur: 1/8,
        cav: 1,
    ])
).play
)

// Play the chord for an indefinate duration.

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \sin,
        freq: [27, 82, 41, 124, 62, 31, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91] * 3,
        rel: 1/8,
        crv: Pmeanrand(-8.0, 8.0),
        amp: Plprand(0.25, 1.0).trace,
        dur: 1/8,
        pan: Pmeanrand(0.0, 1.0),
    ])
).play
)
