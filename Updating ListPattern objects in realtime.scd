(
~wait = Pxshuf((4, 8 .. 20), inf).asStream;
Routine{
	Routine{
		~list1 = List[0];
		~list1.array = Array.rand(5, -14, 14);
		Pdef(0,
			Pbind(*[
				type: \cln,
				snd: \kps,
				scale: Scale.mixolydian(\vallotti),
				degree: Pseq(~list1, inf),
				dur: 1/8,
				amp: Pseq([1.9, 1.5, 1.5, 1.5, 1.5], inf) / Pkey(\degree).linlin(-14, 14, 0.8, 1.2),
				rel: 1/4,
				crv: 8,
				sustain: 1/2,
				lhf: 0.275,
			])
		).play;
		~wait.next.wait;
	}.loop.play;
	Routine{
		~list2 = List[0];
		~list2.array = Array.rand(6, -14, 14);
		Pdef(1,
			Pbind(*[
				type: \cln,
				snd: \kps,
				scale: Scale.mixolydian(\vallotti),
				degree: Pseq(~list2, inf),
				dur: 1/8,
				amp: Pseq([1.9, 1.5, 1.5, 1.5, 1.5, 1.5], inf) / Pkey(\degree).linlin(-14, 14, 0.8, 1.2),
				pan: 0.25,
				rel: 1/4,
				crv: 8,
				sustain: 1/2,
				lhf: 0.275,
			])
		).play;
		~wait.next.wait;
	}.loop.play;
	Routine{
		~list3 = List[0];
		~list3.array = Array.rand(7, -14, 14);
		Pdef(2,
			Pbind(*[
				type: \cln,
				snd: \kps,
				scale: Scale.mixolydian(\vallotti),
				degree: Pseq(~list3, inf),
				dur: 1/8,
				amp: Pseq([1.9, 1.5, 1.5, 1.5, 1.5, 1.5, 1.5], inf) / Pkey(\degree).linlin(-14, 14, 0.8, 1.2),
				pan: 0.75,
				rel: 1/4,
				crv: 8,
				sustain: 1/2,
				lhf: 0.275,
			])
		).play;
		~wait.next.wait;
	}.loop.play;
}.play
)