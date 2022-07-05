( // reeval a couple times to hear some different versions of this
~a = {|seed, octave, stretch| 
    var b = 
    Pbind(*[ 
        type: \cln,
        snd: \ixa,
        dur: 1/7,
        scale: Scale.chromatic, 
        degree: (Pseq((0 .. 11).scramble.drop(rrand(6, 11)), inf) * 2),
        amp: Pseq(((0.625!9) ++ (0.775!2)).scramble.drop(rrand(1, 3)), inf),
        pan: Pseq((0/8, 1/8 .. 8/8).scramble.drop(rrand(1, 3)), inf),
        cav: 1/8, // note that scramble and rrand are ungoverned by seed 
        lhf: Plprand(0.375, 0.8).trace,
        rel: 8,         
        crv: -8,
        legato: 8,
        octave: octave, 
        stretch: stretch, 
	]);
	Pseed(seed, Pseq([b], inf)); 
};
Pdef(0, ~a.(0, 5, 3)).play; 
Pdef(1, ~a.(1, 5, 1)).play; 
Pdef(2, ~a.(2, Phprand(4, 5), 5)).play; 
Pdef(3, ~a.(3, Plprand(4, 5), 7)).play; 
)
