// this needs some plumbing in your startup

(
~servers.do {arg server, i;
	Pdef(i,
		Pbind(*[
			type: \cln,
            snd: \dfd,
            clean: ~cleanInstances[i],
			server: server,
			degree: Pxshuf((-7 .. 7), inf),
			aux: Pxshuf((0, 2 .. 30), inf),
			dur: 1 + (i/7),
			pan: Pwhite(0.0, 1.0),
			amp: Plprand(0.5, 1.0),
            sustain: 1,
			out: Pkey(\aux) * 2
		])
	).play(quant: 1);
	server.meter; // this line opens all server meters
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