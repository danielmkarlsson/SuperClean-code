// Pdup (repeat values)
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        amp: Pseq([1/8, 2/8, 3/8, 4/8, 5/8, 6/8, 7/8, 1], inf),
        freq: 40 * Pdup(8, Pseq([1, 2, 3, 4], inf)),
    ])
).play(quant:1);
)

// List juggling
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/32,
        freq: 40 * Pseq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100], inf), // one to a hundred, tired
        ])
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/32,
        freq: 40 * Pseq((1..100),inf), // one to a hundred, wired
    ]) // sounds the same but requires significantly less typing
).play(quant:1);
)

// Pwrand (weighted choice, but it's _so_ clunky)
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwrand([1, 2, 3, 4], [0.4, 0.3, 0.2, 0.1], inf), 
    ]) // This way the weights have to add up to 1.0
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwrand([1, 2, 3, 4], [4, 3, 2, 1].normalizeSum, inf), 
    ]) // This way the weights can be anything
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwrand2([1, 2, 3, 4], [4, 3, 2, 1], inf), 
    ]) // This way the weights can be anything _and_, less typing!
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwrand2((1 .. 4), (4 .. 1), inf), 
    ]) // This way the weights can be anything _and_, even less typing!
).play(quant:1);
)

// https://github.com/ffforces/Pwrand2
// try changing the ranges and reevaluating

//Pwhite
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwhite(1, 4), 
        ]) // integers one to four
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwhite(1.0, 4.0), 
        ]) // floats one point zero to four point zero
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwhite(1.0, 4.0).round, 
        ]) // This is ridiculous, but now we're back at integers
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: 40 * Pwhite(1.0, 4.0).round(0.5), 
        ]) // round takes an argument, here we get halves
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: [40, 60, 80] * 2, 
        ]) // freq can take a list of pitches, we can do chords this way
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: (40, 60  .. 80) * 2, // control the step size in an array this way
        ]) // change the third number to make the chord bigger 
).play(quant:1); // change the second number to change the interval
) // change the first number to change the fundamental

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: Prand([(40,45 .. 75), (40,50 .. 150), (40,55 .. 225), (40,60 .. 300)], inf) * Pwhite(1, 4), 
        ]) // choose between lists 
).play(quant:1);
)

// try adding .trace to the above examples to see what's going on

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: Prand([(40,45 .. 75), (40,50 .. 150), (40,55 .. 225), (40,60 .. 300)], inf) * Pwhite(1, 4).trace, 
        ]) // this only gave us numbers from the last part of the calculation above
).play(quant:1);
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: 1/8,
        freq: (Prand([(40,45 .. 75), (40,50 .. 150), (40,55 .. 225), (40,60 .. 300)], inf) * Pwhite(1, 4)).trace, 
        ]) // the extra parentheses (plural, one at beginning and one at end of line) give us the whole calculation above
).play(quant:1);
)

// For next time, try using the new words and techniques we have used above to make something of your own
