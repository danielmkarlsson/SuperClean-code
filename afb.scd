(
Pdef(0,
    Pseed(9999,
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: \saw,
            wid: Phprand(0.001, 0.5),
            dur: Pexprand(0.01, 0.15),
            atk: Pexprand(0.25, 1.0),
            hld: Pexprand(0.25, 1.0),
            rel: Pexprand(0.25, 1.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            freq: Pseg(Pdup(2, Pexprand(40.0, 5120.0)), Pexprand(0.0001, 10.0), \exp, inf),
            amp: Pseg(Pdup(2, Pexprand(0.25, 2.0)), Pexprand(0.01, 10.0), \exp, inf),
            pan: Pseg(Pdup(2, Pmeanrand(0.1, 0.9)), Pwhite(0.01, 10.0), \lin, inf),
            jpr: Pseg(Pdup(2, Phprand(0.1, 1.0)), Pexprand(0.1, 10.0), \lin, inf),
            jps: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pexprand(0.001, 10.0), \lin, inf),    
            jts: Pseg(Pdup(2, Plprand(0.0, 1.0)), Pexprand(0.01, 10.0), \lin, inf),    
            jpg: Pseg(Pdup(2, Plprand(1.0, 32.0)), Pexprand(0.01, 10.0), \lin, inf),    
            fsh: Pseg(Pdup(2, Pwhite(-1.0, 1.0)), Pexprand(0.01, 10.0), \lin, inf),    
            fsm: Pseg(Pdup(2, Pwhite(-4.0, 4.0)), Pexprand(0.01, 10.0), \lin, inf),    
            brf: Pseg(Pdup(2, Pexprand(20.0, 2000.0)), Pexprand(0.01, 10.0), \exp, inf), 
            brn: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pexprand(0.01, 10.0), \lin, inf), 
            bro: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pexprand(0.01, 10.0), \lin, inf), 
            brq: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pexprand(0.01, 10.0), \lin, inf), 
            hpf: Pseg(Pdup(2, Pexprand(20.0, 2000.0)), Pexprand(0.1, 10.0), \lin, inf),
            lpf: 20000 - Pseg(Pdup(2, Pexprand(20.0, 19980.0)), Pexprand(0.1, 10.0), \exp, inf),
            tri: Pseg(Pdup(2, Plprand(0.0, 1.0)), Pexprand(0.1, 10.0), \lin, inf),
            dfm: Pseg(Pdup(2, Pexprand(0.01, 1.0)), Pexprand(0.1, 10.0), \lin, inf).trace,
        ])
    )
).play
)

Pdef(0).stop
