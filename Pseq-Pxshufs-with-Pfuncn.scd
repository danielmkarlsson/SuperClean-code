(
var a = Pxshuf((0..3), inf).asStream;
var b = Pxshuf((4..7), inf).asStream;
var c = Pxshuf((8..11), inf).asStream;
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        num: Pseq([
            Pfuncn({ a.next }, 1),
            Pfuncn({ b.next }, 1),
            Pfuncn({ c.next }, 1),
        ], inf).trace,
        dur: 1/9,
        rel: 1/9,
        crv: -8,
        spd: Pxrand([1, 2, 4],inf),
        pan: Pxrand([0, 0.25, 0.75, 1],inf),
        legato: 1,
    ])
).play
)
