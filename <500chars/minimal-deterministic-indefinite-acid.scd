(
Pdef(0,
	Pseed(5,
		Pbind(*[
			type: \cln,
			snd: \fmx,
			seg: Plprand(1,10.0),
			octave: 2,
			degree: Prand([1,3,5],inf),
			mi1: Plprand(),
			mi2: Plprand(),
			mi3: Plprand(),
			mi4: Pseg([Pdup(2,Plprand(0,99.0)),Plprand(0,99.0)],Pkey(\seg),\wel,inf).trace,
			en1: Plprand(),
			en2: Plprand(),
			en3: Plprand(),
			en4: Plprand(),
			dur: 1/8,
			amp: Plprand(1/16,4),
			pan: Pmeanrand(),
			mir: 1/16,
			mii: Plprand(),
		])
	)
).play;
)

(Pdef(0,Pseed(5,Pbind(*[type:\cln,snd:\fmx,seg:Plprand(1,10.0),octave:2,degree:Prand([1,3,5],inf),mi1:Plprand(),mi2:Plprand(),mi3:Plprand(),mi4:Pseg([Pdup(2,Plprand(0,99.0)),Plprand(0,99.0)],Pkey(\seg),\wel,inf).trace,en1:Plprand(),en2:Plprand(),en3:Plprand(),en4:Plprand(),dur:1/8,amp:Plprand(1/16,4),pan:Pmeanrand(),mir:1/16,mii:Plprand(),]))).play;)// #supercollider #superclean #minimal #deterministic #indefinite #acid
