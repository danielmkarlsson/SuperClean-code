(
~degree = Pseq((0 .. 7).mirror1, inf).asStream;
~octave = Pseq((4 .. 7).mirror1, inf).asStream;
~mtranspose = Pseq((0 .. 4).mirror1, inf).asStream;
~scale = Pdup(Pexprand(8, 16), Pseq([
    Scale.major.tuning_(Tuning.sept1),
    Scale.minor.tuning_(Tuning.sept1),
    Scale.harmonicMinor.tuning_(Tuning.sept1),
    Scale.aeolian.tuning_(Tuning.sept1),
    Scale.locrian.tuning_(Tuning.sept1),
    Scale.mixolydian.tuning_(Tuning.sept1),
].mirror1, inf)).asStream;
~pan = Pseq((0.0, 0.025 .. 1).mirror1, inf).asStream;
//~pan = Pseq([0, 1], inf).asStream; // enable for single speaker multichan
~aux = Pxshuf((0 .. 3), inf).asStream;

Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 3,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 1 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 1 * Pkey(\dur).linexp(1, 7, 8, 2),
        tempo: Pdup(Prand([6, 12, 18, 24], inf), Pseq([1.5, 2.25, 2, 5.75, 2.5, 4.25, 4.0, 5.75, 5.5].reverse, inf)).trace,
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 4,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 2 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 2 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(2,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 5,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 3 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 3 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(3,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 6,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 4 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 4 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(4,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 7,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 5 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 5 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);

Pdef(5,
    Pbind(*[
        type: \cln,
        snd: \kps,
        amp: Pdup(Pexprand(1, 3), Pexprand(1.5, 3.5)),
        scale: Pfunc({~scale}),
        octave: Pfunc({~octave}),
        degree: Pfunc({~degree}),
        pan: Pfunc({~pan}),
        mtranspose: Pfunc({~mtranspose}),
        //aux: Pfunc({~aux.next}),
        dur: 8,
        atk: Pexprand(0.01, 0.03) - 0.01,
        rel: 6 * Pkey(\dur).linexp(1, 7, 2, 1),
        sustain: 6 * Pkey(\dur).linexp(1, 7, 8, 2),
        lhf: Pexprand(0.15, 0.25),
        hpf: 400,
    ])
).play(quant: 1);
)

(
Pdef(0).stop;
Pdef(1).stop;
Pdef(2).stop;
Pdef(3).stop;
Pdef(4).stop;
Pdef(5).stop;
)
