(
Pdef(0, // SuperClean events
    Pseed(222,
        Pbind(*[
            type: \cln,
            snd: \mmd,
            rel: 0.5,
            num: Pxrand([1,2,3,4,5],inf), // try switching the top down order or these two lines
            dur: Pwrand([1/8,1/4,1/2],[7,1,1].normalizeSum,inf).trace, // symmetry falls apart
            pan: Pwhite(0.0,1.0),
            legato: 1,
            amp: 2,
        ])
    )
).play(quant:1);

Pdef(1, // MIDI note events
    Pseed(222,
        Pbind(*[
            type: \midi,
            midiout: m,
            chan: 0,
            midinote: Pxrand([63, 64, 65, 66, 68],inf),
            dur: Pwrand([1/8,1/4,1/2],[7,1,1].normalizeSum,inf),
            pan: Pwhite(0.0,1.0), //dummy operation needed for symmetry, try commenting out
            legato: 1,
        ])
    )
).play(quant: 1);

CmdPeriod.doOnce {
    // release any hanging notes when pressing Cmd + .
    m.allNotesOff(0);
};
)
