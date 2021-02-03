// Det här är en kommentar
// Kör en rad med Shift + Enter

().play // Ett pling

Pbind().play // Oändligt antal pling

// Cmd + . (punkt) för att stoppa allt ljud

s.meter // Kolla mätaren genom att köra denna rad eller Cmd + M

// Kör ett block med Cmd + Enter
( // Övre yttre parantes
Pdef(0, // Pdefen låter oss definiera om våra önskemål om hur det ska låta kontinuerligt, denna Pdef får namnet 0 (noll)
	Pbind(*[ // Pbinden binder värdena i höger kolumn till parameter nycklarna i vänster kolumn
		type: \cln, // Med hjälp av ett hack i event typen kan vi här "slå på" SuperClean
		snd: \mmd, // snd för sound eller ljud, här väljer vi namnet på en mapp med samplingar eller namnet på en synth
	]) // Här avslutas Pbinden
).play(quant:1); // Här avslutas Pdefen, vi spelar den med play, vi kvantifierar den i time med andra Pattern snurror med quant:1
) // Undre yttre parantes

~clean.loadSoundFiles("/your/path/here"); // ladda in egna samplingar i RAM

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		legato: 1, // Med hjälp av legato kan vi avsluta föregående sampling eller ton när den föregående tar slut
		num: 3,
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		legato: 1,
		num: Pseq([1, 2, 3], inf),
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		legato: 1,
		freq: 100 * Pseq([3, 4, 6, 5, 8], inf),
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		legato: 1,
		freq: 100 * Pseq([3, 4, 6, 5, 8], inf),
		freq: 100 * Pexprand(3,8).round,
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
	])
).play(quant:1);
)


(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		legato: 1,
		wid: Pwhite(0.0, 1.0),
		freq: 100 * Pexprand(3,8).round,
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
		lpf: Pexprand(200, 5000),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		legato: 1,
		wid: Pwhite(0.0, 1.0),
		midinote: Prand([60, 62, 64, 66, 68, 70], inf),
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
		lpf: Pexprand(200, 5000),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		legato: 1,
		wid: Pwhite(0.0, 1.0),
		midinote: Prand((60, 62 .. 70), inf),
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
		lpf: Pexprand(200, 5000),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		legato: 1,
		wid: Pwhite(0.0, 1.0),
		degree: Pseq([0, 1, 2, 3, 4, 5, 6, 7],inf),
		degree: Pseq((0 .. 7), inf),
		scale: Scale.whole,
		dur: Prand([1/2, 1/4, 1/8], inf),
		amp: Pexprand(0.5, 1.0),
		pan: Pwhite(0.0, 1.0),
		lpf: Pexprand(200, 5000),
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		amp: 0.75,
		pan: 0,
		dur: 1.01,
	])
).play(quant:1);
)

(
Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \saw,
		degree: 1,
		amp: 0.75,
		pan: 1,
	])
).play(quant:1);
)

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		amp: 0.75,
		pan: 0,
		dur: 1.1,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		degree: 1,
		amp: 0.75,
		pan: 1,
	])
).play(quant:1);
)