(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \dfd,
        res: 1.1,
        crv: -8,
        rps: Pwrand2((1 .. 33), (33 .. 1), inf), // made up parameter name, can be anything, calculates a value
		seg: Pwhite(5, 11), // this is another parameter I made up, you can do it too, try it
        dur: 1 / Pstutter(Pwrand2((1 .. 33), (33 .. 1), inf), Prand([5, 7, 9, 11], inf)), // reference any parameter above this line with Pkey
		aux: Pxshuf((0 .. 32), inf), // uncomment this line to send audio spread out across 64 channels (needs startup.scd config)
		freq: Prand((1, 1.001 .. 10000), inf), // this is a clunky way to choose floats between 1 and 10000, don't do it
		freq: Pwhite(1, 10000), // unweighted choice of integers between 1 and 10000
		freq: Pwhite(1.0, 10000.0), // unweighted choice of integers floats 1 and 10000
		pan: Pwhite(0.0, 1.0), // unweighted choice of all of the different values between 0.0 (left) and 1.0 (right)
		pan: Pwhite(0, 1), // unweighted choice of either 0 (left) or 1 (right)
		amp: Pexprand(0.1, 1.0), // exponential random choice, good match for amp because is perceived as linear
		lpf: Pexprand(20, 20000), // the lower values here are more likely than the higher values
		//lpf: Pwhite(20, 20000), // uncomment this line to listen to unweighted choice, both are ok, listen and make your choice
    ])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \kps,
		dur: 1 / Pstutter(Pwhite(5, 11), Pwhite(5, 11)),
		amp: Pseg(Pwhite(0.0, 2.0), Pwhite(5.0, 10.0), \exp, inf).trace, // interpolate smoothly between amp values exponentially over stochastic time values
		freq: Pseg([100, 200, 200, 100], [10, 5, 10], \exp, inf), // linear sequence of values interpolated to over a linear sequene of times
		lpf: Pseg(Pexprand(20, 20000), 2.5, \exp, inf), // exponential choice of value with a single fixed time for every interpolaton
		sustain: 1,
	])
).play
)

(
Pdef(0,
	Pseed(41,
		Pbind(*[
			type: \cln,
			snd: \fmx,
			seg: Pexprand(39,299), // made up paramter name, exponential choice of floats yielding one value that gets used on many lines below
			dur: Pseg(Pexprand(1/11,1/5),Pexprand(39,299),\exp,inf), // same instruction as above for the segment time but yields a unique result
			hr1: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf), // Pkey listens to the above seg: line and uses the resultant number
			hr2: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf), // these are all using the same time for changes, but to individual values
			hr3: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf),
			hr4: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf),
			mi2: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf),
			mi3: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf),
			mi4: Pseg(Pexprand(1.0,4.0),Pkey(\seg),\exp,inf),
			en1: Pseg(Pexprand(0.001,1.0),Pkey(\seg),\exp,inf),
			en2: Pseg(Pexprand(0.001,1.0),Pkey(\seg),\exp,inf),
			en3: Pseg(Pexprand(0.001,1.0),Pkey(\seg),\exp,inf),
			en4: Pseg(Pexprand(0.001,1.0),Pkey(\seg),\exp,inf),
			cu1: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\exp,inf),
			cu2: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\exp,inf),
			cu3: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\exp,inf),
			cu4: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\exp,inf),
			fdb: Pseg(Pwhite(0.0001,1.0),Pkey(\seg),\exp,inf),
			lpf: 20000-Pseg(Pwhite(200,20000),Pkey(\seg),\exp,inf).trace,
			amp: Pseg(Pexprand(0.4,0.9),Pkey(\seg),\exp,inf),
			pan: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\exp,inf),
			rin: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\lin,inf), // here's a slight difference, linear curvature felt like a better match for this parameter
			rev: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\lin,inf),
			dry: Pseg(Pwhite(0.0,1.0),Pkey(\seg),\lin,inf),
			freq: Pseg(Pexprand(100,400),Pkey(\seg),\exp,inf),
			sustain: Pseg(Pexprand(0.1,20.0),Pkey(\seg),\exp,inf),
			stretch: Pseg(Pexprand(1.0,0.25),Pkey(\seg),\exp,inf),
		])
	)
).play(quant:1);
)

s.record // record the default number of channels which is 2 channels
s.record(numChannels: 8); // record the first 8 channels
s.record(numChannels: 64); // record the first 64 channels
