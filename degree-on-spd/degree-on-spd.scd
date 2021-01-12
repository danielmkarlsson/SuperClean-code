// Degree works on samples too.

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 12, // This sample is not ideal for showcasing.
		scale: Scale.harmonicMinor,
		degree: Pseq((-7..7), inf),
		legato: 1,
	])
).play(quant:1);
)

// Here's a short saw pitch. Change the file location to match this path, or vice versa.
~clean.loadSoundFiles("~/swa");

(
Pdef(0, // Low pitches are low res, high pitches are shorter.
	Pbind(*[
		type: \cln,
		snd: \swa,
		scale: Scale.harmonicMinor,
		degree: Pseq((-7..7), inf), // Exaggerate these values to really hear these artefacts.
		legato: 1,
	])
).play(quant:1);
)

// Run this line to get some of those actual numbers being crunched under the hood
Scale.harmonicMinor.degrees.midiratio;

// I copied that arry of numbers and pasted them into a Pseq on the spd: key.

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \swa,
		spd: Pseq([ // I split the array over a couple of lines for readability
			1.0, 1.1224620483089, 1.1892071150019, 1.3348398541685,
			1.4983070768743, 1.5874010519653, 1.8877486253586, 2 ],inf),
		legato: 1, // Feels nice to avoid wrapping lines.
	]) // I compulsively added the 2 in the array above because of the strong gravity.
).play(quant:1);
)