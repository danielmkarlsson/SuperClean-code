(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \mmd,
        n: Pexprand(1,13),
        speed: Pexprand(1/2,2),
        rel: Pexprand(0.1,1.0),
        crv: Pwhite(-10,10),
        gain: Pexprand(1.0,16.0),
        midiout: ~m,
        cc0: Pseg(Pwhite(0,127),Pwhite(0.01,1),\welch,inf), // 0.FrqA
        cc1: Pseg(Pwhite(0,127),Pwhite(0.01,1),\welch,inf), // 0.FrqB
        cc2: Pseg(Pwhite(0,127),Pwhite(0.01,1),\welch,inf), // 0.Amp
        cc3: Prand([0,4,8,12,16,20,24,29,32,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100],inf), // 0.Fx
        cc4: Pwhite(0,127), // 0.Val
        dur: 1/9,
        legato: 1,
    ])
).play(quant:1);
)
