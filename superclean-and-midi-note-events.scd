(
Pdef(0, // SuperClean events
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: Pseq((0..7),inf),
		dur: 1/4,
		legato: 1,
	])
).play(quant:1);

Pdef(1, // MIDI note events
	Pbind(*[
		type: \midi,
		midiout: m,
		chan: 0,
		midinote: Pseq((60..67),inf),
		dur: 1/4,
		legato: 1,
	])
).play(quant: 1);

CmdPeriod.doOnce {
	// release any hanging notes when pressing Cmd + .
	m.allNotesOff(0);
};
)

// midi and audio may not be in sync, trim MIDI latency below
m.latency = 0;
// SuperClean users can also find this line in the provided startup file
