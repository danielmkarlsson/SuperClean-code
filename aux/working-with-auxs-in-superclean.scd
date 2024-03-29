// This file has a companion .rpp file and presupposes 8 channel output
// See end of file for the startup file I had run before running this example

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: Pwrand([\mmd,\rest],[8,1].normalizeSum,inf),
		num: Pshuf((1..9),inf),
		aux: Pdup(2,Pshuf((0..4),inf)),
		pan: Pseq([0,1],inf),
		dur: 1/Pdup(Pwhite(1,2),Prand([5,10],inf)),
		legato: Pshuf([0.5,0.75,1,1.125]*4,inf).trace,
		speed: Pshuf([0.8751,1.125],inf),
	])
).play(quant:1);
)

// listen for a bit then reevaluate the above code block for a new variation

// check the meter
s.meter;


















(
var serverOptions = Server.default.options; serverOptions.outDevice = "Soundflower (64ch)"; serverOptions.inDevice = "Soundflower (64ch)";//force devices
"killall scsynth".unixCmd;
s.options.numBuffers = 1024 * 64; // increase if you need to load more samples
s.options.memSize = 8192 * 256; // increase if you get "alloc failed" messages
s.options.maxNodes = 1024 * 32; // increase if drop outs and the message "too many nodes"
s.options.sampleRate= 44100;
s.options.numOutputBusChannels = 8; // OUTPUT CHANNELS GO HERE
s.recSampleFormat = "int24";
s.recHeaderFormat="wav";
s.options.numInputBusChannels = 2; // set to hardware input channel size, if necessary
s.latency = 0.3;
MIDIClient.init; // Untoggle this when you want to do MIDI
~m = MIDIOut.new(0); // Maybe yours is different?
~m.latency = 0; // Faster is better so fastest is bestest right?
m = MIDIOut.new(0);
m.latency = 0;

// scnvim
if (\SCNvim.asClass.notNil) {
	Server.default.doWhenBooted {
		\SCNvim.asClass.updateStatusLine(1, 9670);
	}
};

// A simple triangle wave synth in stereo with panning and a simple low pass filter
// This synthDef was written by Mads Kjeldgaard and requires the sc3 plugins
s.doWhenBooted{
	SynthDef.new(\default, {
		arg dur, attack=0.01, release=1.0,
		t_gate=1, out, freq=442, cutoff=5500,
		rq=1, pan=0.0, amp=0.5;

		var env = EnvGen.kr(Env.perc(attack, release), t_gate, timeScale: dur, doneAction: 2);
		var sig = DPW3Tri.ar(freq: freq, mul: env);
		sig = RLPF.ar(sig, cutoff.clip(20.0, 20000.0), rq.clip(0.0,1.0));
		sig = Pan2.ar(sig, pan);
		Out.ar(out, sig * amp);
	}).add;
};

s.waitForBoot {
	~clean = SuperClean(2, s); // two output channels, increase if you want to pan across more channels
	~clean.loadSoundFiles; // hot swap in samples from anywhere!
	// for example: ~clean.loadSoundFiles("~/Downloads/mmd*");
	s.sync; // optionally: wait for samples to be read
	~clean.start(57120, [0,2,4,6]); // first 8 out looks like [0,2,4,6]
	SuperClean.default = ~clean; // make the clean key sequenceable inside of SuperCollider
	"[ SuperClean up + running ]".postln;
};
)
