// this needs some plumbing in your startup

(
~auxs = Pxshuf((0, 1 .. 31), inf).asStream;
~degrees = Pxshuf((-7 .. 7), inf).asStream;
~servers.do {arg server, i;
	Pdef(i,
		Pbind(*[
			type: Pwrand2([\cln, \], [1, 8], inf),
			snd: Pwrand2([\kps, \sin, \ixa, \saw], [100, 1, 1, 1], inf),
            clean: ~cleanInstances[i],
			server: server,
			scale: Scale.harmonicMinor(\vallotti),
			wid: Plprand(0.0, 0.5),
			octave: Pwhite(4, 6),
			degree: Pfunc{~degrees.next},
			aux: Pfunc{~auxs.next},
			dur: 1 + (i/7),
			pan: Pwhite(0.0, 1.0),
			rel: Pkey(\dur) * Pexprand(1, 7),
            sustain: Pkey(\rel),
			calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
			frq: Pfunc{|ev|ev.use{ev.freq}},
			lpf: Pkey(\frq) * Pexprand(0.5, 1.0),
			amp: Plprand(0.25, 0.5) * Pkey(\octave).linlin(4, 6, 2, 0.5),
			ocd: Pwrand2([0, Plprand(0.0, 1.0, 1)], [10, 1], inf),
			out: Pkey(\aux) * 2,
		])
	).play(quant: 1);
	//server.meter; // this line opens all server meters
};
)

/* // replace the bottom block in your startup file with this

// Multi-server setup
~servers = 7.collect{|i| // depends maybe, try lowering if no go
	var id = 57100;
	var server = Server.new("server"++i, NetAddr("localhost", id+i), Server.local.options); // .boot
	~cleanInstances = [];
	server.waitForBoot {
		var instance = SuperClean(numChannels: 2, server: server);
		~cleanInstances = ~cleanInstances.add(instance);
		instance.loadSoundFiles; // hot swap in samples from anywhere!
		server.sync;
		//instance.start((0, 2 .. 62)); // all the auxes!, well, 64 auxes really
		instance.start([0, 2, 4, 6, 8]);
	};
};