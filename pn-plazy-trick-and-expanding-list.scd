// You need SuperClean to run this code: https://github.com/danielmkarlsson/SuperClean

(
var sequence = [5, 7, 9];
var originalSequence = sequence.copy;
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        dur: 1 / Pn(Plazy {
            var value = exprand(4, 10);
            sequence = sequence ++ value;
            if (sequence.size > exprand(4, 10)) {
                sequence = originalSequence;
            };
            sequence.debug('seq');
            Pseq(sequence);
        }),
        amp: Prand([0.7, 1.0], inf),
        fed: Plprand(0.0, 2.0),
    ])
).play;
)
