(
Pdef(0,
	Pseed(128,
		Ppar(
			16.collect{
				Pspawn(
					Pbind(*[
						method: \seq,
						pattern: Pfunc{|ev|
							Pbind(*[
								type: \cln,
								snd: Pdup(inf,Prand([\rst,\fmx],inf)),
								snd: \fmx,
								dur: 1/8*Pdup(inf,Pwrand2((1..7),[1,2,8,4,4,2,1],inf)),
								amp: Pseg([1,1.45,1.45,1],Pexprand(7.5,30),\exp,1)-1,
								hr1: Pdup(inf,Pexprand(1,4)).round,
								hr2: Pdup(inf,Pexprand(1,4)).round,
								hr3: Pdup(inf,Pexprand(1,4)).round,
								hr4: Pdup(inf,Pexprand(1,4)).round,
								fdb: Pdup(inf,Pexprand(0.1,4.125)),
								mi2: Pdup(inf,Pexprand(0.1,4.125)),
								mi3: Pdup(inf,Pexprand(0.1,4.125)),
								mi4: Pdup(inf,Pexprand(0.1,4.125)),
								en1: Pdup(inf,Pexprand(0.1,0.6))-0.1,
								en2: Pdup(inf,Pkey(\en1)+Pexprand(0.1,0.6)),
								en3: Pdup(inf,Pkey(\en1)+Pkey(\en2)/Pexprand(0.2,0.7)),
								en4: Pdup(inf,Pkey(\en1)+Pkey(\en2)/Pkey(\en3)+Pexprand(0.3,0.8)),
								cu1: Pdup(inf,Pwhite(-8.0,8.0)),
								cu2: Pdup(inf,Pwhite(-8.0,8.0)),
								cu3: Pdup(inf,Pwhite(-8.0,8.0)),
								cu4: Pdup(inf,Pwhite(-8.0,8.0)),
								pan: Pdup(inf,Pwhite(0.0,1.0)),
								lpf: 20000-Pdup(inf,Pexprand(20,20000)),
								octave: Pdup(inf,Pwrand2((1..5),[1,1,2,4,2],inf)),
								scale: Pdup(inf,Pxshuf([
									Scale.superLocrian.tuning_(Tuning.sept1),
									Scale.whole.tuning_(Tuning.sept1),
									Scale.dorian.tuning_(Tuning.sept2),
									Scale.bartok.tuning_(Tuning.sept1),
									Scale.mixolydian.tuning_(Tuning.sept2)
								],inf)),
								degree: Pdup(inf,Pxshuf((0..7),inf)),
								gtranspose: Pdup(inf,Pwhite(0,6)),
								mtranspose: Pdup(inf,Pexprand(1,5.0).round)-1,
								calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
								stretch: Pseg([1,1,2,2,2],Pexprand(15,30),\lin,inf),
								sustain: 1.75,
								legato: 1.75,
								dark: 0.75,
								hpf: 100,
								//aux: Pdup(inf,Pxshuf((0..63),inf)),
							])
						},
					])
				)
			}
		)
	)
).play(quant:1);
)

Pdef(0).stop;
