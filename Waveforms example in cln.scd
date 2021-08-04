(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: Pxrand([\sin,\saw,\sqr,\rest],inf),
		dur: 1/Pdup(Pwhite(5,11),Pwhite(5,11),inf),
		sustain: Pdup(Pwhite(5,11),Pwhite(3.0,9.0),inf),
		atk: Pdup(Pwhite(5,11),Pexprand(0.001,1.0),inf),
		hld: Pdup(Pwhite(5,11),Pwhite(3.0,5.0),inf),
		rel: Pdup(Pwhite(5,11),Pwhite(5.0,11.0),inf),
		crv: -8,
		amp: Pseg(Pexprand(0.4,0.8),Pexprand(0.25,4.0),\exp,inf),
		pan: Pwhite(0.0,1.0),
		wid: Pwhite(0.0,1.0),
		iph: Pexprand(0.0001,1.0),
		lpf: Pexprand(20,20000),
		stretch: Pseg([7,1/6,7],16,\exp,inf).trace,
		midinote: 60+Pdup(Pwhite(5,11),Pxrand((-24,Pdup(Pwhite(1,100),Prand([-9,-10],inf))..24),inf)),
		])
).play(quant: 1);
)