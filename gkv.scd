(
~a = {|type, stretch, amp| 
    var b = 
    Pbind(*[ 
        type: type,
        snd: \saw,
        wid: Phprand(1/4, 1/2),
        dur: Pdup(Pseq([10, 1], inf), Pseq([1/1024, 3.5], inf)),
        freq: (128 * Pn(Pgeom(1, 1.5, 11), inf)),
        lpf: Pkey(\freq) * Plprand(0.5, 2.0),
        atk: Plprand(0.2, 2.0),
        rel: 9,
        crv: Plprand(-8.0, -4.0),
        sustain: 20, 
        stretch: stretch,
        amp: amp.dbamp,
        pan: Pdup(Pseq([11, Pseq([1], inf)], inf), Pseq([0.5, Pwhite(0.0, 1.0)], inf)).trace,
        jpr: 1/2,
        jpg: Pwhite(0.5, 1.0),
        //aux: Pxshuf((0 .. 10), inf),
	]);
	Pseq([b], inf); 
};
Pdef(0, ~a.(Pdup(Pseq([1, 10], inf), Pseq([\cln, \], inf)), 1, Plprand(-9.0, -6))).play; 
Pdef(1, ~a.(Pdup(Pseq([1, 1, 9], inf), Pseq([\, \cln, \], inf)), 1.005, Plprand(-11.0, -8.0))).play; 
Pdef(2, ~a.(Pdup(Pseq([2, 1, 8], inf), Pseq([\, \cln, \], inf)), 1.01, Plprand(-13.0, -10.0))).play; 
Pdef(3, ~a.(Pdup(Pseq([3, 1, 7], inf), Pseq([\, \cln, \], inf)), 1.015, Plprand(-15.0, -12.0))).play; 
Pdef(4, ~a.(Pdup(Pseq([4, 1, 6], inf), Pseq([\, \cln, \], inf)), 1.02, Plprand(-17.0, -14.0))).play; 
Pdef(5, ~a.(Pdup(Pseq([5, 1, 5], inf), Pseq([\, \cln, \], inf)), 1.025, Plprand(-19.0, -16.0))).play; 
Pdef(6, ~a.(Pdup(Pseq([6, 1, 4], inf), Pseq([\, \cln, \], inf)), 1.03, Plprand(-21.0, -18.0))).play; 
Pdef(7, ~a.(Pdup(Pseq([7, 1, 3], inf), Pseq([\, \cln, \], inf)), 1.035, Plprand(-23.0, -20.0))).play; 
Pdef(8, ~a.(Pdup(Pseq([8, 1, 2], inf), Pseq([\, \cln, \], inf)), 1.04, Plprand(-25.0, -22.0))).play; 
Pdef(9, ~a.(Pdup(Pseq([9, 1, 1], inf), Pseq([\, \cln, \], inf)), 1.045, Plprand(-27.0, -24.0))).play; 
Pdef(10, ~a.(Pdup(Pseq([10, 1], inf), Pseq([\, \cln], inf)), 1.05, Plprand(-29.0, -26.0))).play; 
)

(
var n = 11;
n.do {|i|
    "Pdef(%) stopped.".format(i).postln;
    Pdef(i).stop;
};
)
