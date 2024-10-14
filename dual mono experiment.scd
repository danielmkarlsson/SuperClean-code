(
~a = {|seed, dur, pan|
    var b =
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
				snd: Pwrand2([\saw, \ixa, \fmx], [1, 2, 1], inf),
				dur: dur,
				hr1: Plprand(0, 5).unique,
				hr2: Plprand(0, 5).unique,
				hr3: Plprand(0, 5).unique,
				hr4: Plprand(0, 5).unique,
				mi1: Plprand(0.0, 5.0),
				mi2: Plprand(0.0, 5.0),
				mi3: Plprand(0.0, 5.0),
				mi4: Plprand(0.0, 5.0),
				en1: Plprand(0.0, 1.0),
				en2: Plprand(0.0, 1.0),
				en3: Plprand(0.0, 1.0),
				en4: Plprand(0.0, 1.0),
				cu1: Pmeanrand(-8.0, 8.0),
				cu2: Pmeanrand(-8.0, 8.0),
				cu3: Pmeanrand(-8.0, 8.0),
				cu4: Pmeanrand(-8.0, 8.0),
				wid: Phprand(0.0, 0.5),
				wid: Phprand(0.0, 0.5),
				lhf: Pwrand2([Phprand(0.0, 1.0, 1), Plprand(0.0, 1.0, 1)], [1, 4], inf),
				cav: 1/16,
				cai: Pexprand(1.0, 2.0) - 1,
				freq: Pseq([
					Pseq([Pexprand(20, 2560).round(20)], 1),
					Pseq([Pexprand(30, 2560).round(30)], 2),
					Pseq([Pexprand(50, 2560).round(50)], 4),
					Pseq([Pexprand(110, 2560).round(110)], 16),
					Pseq([Pexprand(190, 2560).round(190)], 32),
					Pseq([Pexprand(280, 2560).round(280)], 64),
					Pseq([Pexprand(390, 2560).round(390)], 128),
					Pseq([Pexprand(510, 2560).round(510)], 256),
					Pseq([Pexprand(650, 2560).round(650)], 256), // doubled because of mirror1 below
				].mirror1, inf),
				amp: Plprand(0.4, 0.6) / Pkey(\freq).linlin(20, 2560, 0.8, 1.3),
				lpf: Pexprand(20, 20000),
				atk: Plprand(0.0, 1.0),
				hld: Plprand(1.0, 15.0),
				rel: Plprand(1.0, 1.9),
				crv: -8,
				sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
				rma: 1,
				rmf: Pexprand(0.00001, 1.0),
				rdf: Pexprand(0.00001, 1.0),
				rdt: Pkey(\sustain),
				pan: pan,
	]);
	Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(0, 1 / Pseq([
					Pseq((8 .. 4), 4),
					Pseq((9 .. 4), 5),
					Pseq((10 .. 4), 6),
					Pseq((11 .. 4), 7),
					Pseq((12 .. 4), 8),
					Pseq((13 .. 4), 9),
					Pseq((13 .. 4), 5), // doubled because of mirror1 below
				].mirror1, inf) * Pseed(36, Pmeanrand(0.99, 1.01)), // dual mono happens here after the *
0)).play;
Pdef(1, ~a.(0, 1 / Pseq([
					Pseq((8 .. 4), 4),
					Pseq((9 .. 4), 5),
					Pseq((10 .. 4), 6),
					Pseq((11 .. 4), 7),
					Pseq((12 .. 4), 8),
					Pseq((13 .. 4), 9),
					Pseq((13 .. 4), 5), // doubled because of mirror1 below
				].mirror1, inf),
1)).play;
)