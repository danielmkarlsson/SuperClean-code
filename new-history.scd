///////////////////////////////////////////////////
// History, as it was on Tue Jul 16 19:43:48 2024.
///////////////////////////////////////////////////

// - 0:0:0.0 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 16], [1, 16], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 16), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 2)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:0:8.76 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 16], [1, 16], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 16), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 2)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:0:20.89 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16], [1, 8, 16], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 16), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 2)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:0:44.2 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 16), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 2)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:0:55.17 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 2)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:1:6.25 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Pexprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:1:33.43 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 15)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:1:51.1 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 1539, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:1:58.58 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:9.25 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(1, 64), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:16.79 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(8, 64), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:21.14 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(16, 64), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:24.33 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(16, 128), Plprand(-20, 20)).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:30.52 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(16, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:46.55 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:2:50.32 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.major(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:3:27.05 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(2.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:3:37.94 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(2.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:3:39.23 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 4,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:3:47.83 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 5,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:3:52.61 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:4:6.58 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(32, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:4:12.47 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20)).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:4:48.45 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.mixolydian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:5:4.15 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:5:12.97 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 8, 16, 128], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:5:32.82 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 128, 16, 1], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:5:37.09 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 128, 16, 2], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:5:41.33 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 128, 16, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:2.19 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 128, 16, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:6.32 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 128, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:12.82 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 3], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:16.24 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(64, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:31.18 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Plprand(16, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:34.43 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(16, 128), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:6:43.99 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(16, 64), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:7:9.71 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(16, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:7:16.08 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 3)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:7:46.48 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(1, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:7:50.73 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:8:12.45 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(4, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:8:16.51 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:8:26.68 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.aeolian(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:8:47.36 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:8:56.46 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 64, 8, 4], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:9:8.66 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 4], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:9:16.78 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:9:24.44 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:9:29.6 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        scale: Scale.bartok(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:4.16 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:22.03 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(3.0, 3.5) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:46.25 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.9, 3.4) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:51.52 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.8, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:53.92 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.7, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:55.01 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.6, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:10:56.22 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:11:8.44 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 2),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:11:11.67 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 3),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:12:59.42 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 3),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:5.64 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(1.0, 4.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:13.39 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 3,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:25.55 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.5, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:39.28 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.3) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:41.76 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
    ])
).play
)

// - 0:13:53.42 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.9,
    ])
).play
)

// - 0:13:59.59 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 4),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:7.38 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:12.41 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.5, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:16.48 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.4, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:21.41 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.2, 2.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:26.98 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:38.04 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.8,
    ])
).play
)

// - 0:14:48.82 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(5),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.7,
    ])
).play
)

// - 0:14:56.65 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.7,
    ])
).play
)

// - 0:14:59.54 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Plprand(1, 5),
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:10.95 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 5).asInteger,
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(4),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:14.51 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 5).asInteger,
        scale: Scale.harmonicMinor(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:23.51 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 5).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:31.29 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:34.53 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.6,
    ])
).play
)

// - 0:15:37.75 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.25, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.5,
    ])
).play
)

// - 0:15:44.45 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.5,
    ])
).play
)

// - 0:15:47.5 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:16:55.02 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 16), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:19:5.54 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(4, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:19:8.85 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 1.0),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:19:13.13 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5),
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:19:20.66 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5),
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.4,
    ])
).play
)

// - 0:19:25.55 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [4, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5),
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.3,
    ])
).play
)

// - 0:19:35.27 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5),
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.3,
    ])
).play
)

// - 0:19:38.29 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5),
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.2,
    ])
).play
)

// - 0:19:45.42 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pexprand(1, 4).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.2,
    ])
).play
)

// - 0:20:7.18 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.2,
    ])
).play
)

// - 0:20:15.85 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1,
    ])
).play
)

// - 0:20:23.91 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1,
    ])
).play
)

// - 0:20:32.26 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 2,
    ])
).play
)

// - 0:20:40.43 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(0.5, 1.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 4,
    ])
).play
)

// - 0:20:47.54 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(1.0, 2.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 4,
    ])
).play
)

// - 0:20:53.73 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(2.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 4,
    ])
).play
)

// - 0:21:3.66 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 2,
        rel: Pexprand(2.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 8,
    ])
).play
)

// - 0:21:10.66 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 4,
        rel: Pexprand(2.0, 4.0),
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 8,
    ])
).play
)

// - 0:21:16.73 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 4,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 8,
    ])
).play
)

// - 0:21:24.71 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 4,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:21:33.53 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.major(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:21:40.6 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 3)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:21:52.21 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(8, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:21:59.37 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(8, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:22:1.2 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 16,
    ])
).play
)

// - 0:22:10.12 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 8,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.1 / 32,
    ])
).play
)

// - 0:22:23.13 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 32), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:31.02 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 32), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:32.81 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:37.06 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.pelog(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:41.97 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(2),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:49.07 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:52.7 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:22:54.46 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 4)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:2.89 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(1, 5)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:4.09 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.minor(\just),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:17.33 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.minor(\sept1),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:22.85 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.major(\sept1),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(3),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:27.97 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.major(\sept1),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:46.61 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.major(\sept1),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:23:50.76 -  
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 8], inf),
        snd: \kps,
        dur: 1 / Pwrand2([1, 8, 16, 128], [1, 32, 8, 16], inf),
        harmonic: Pdup(Pexprand(1, 2), Pexprand(2, 5)).asInteger,
        scale: Scale.major(\sept1),
        degree: Pdup(Pexprand(1, 2), Plprand(-20, 20).unique).round(1),
        calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: (Pkey(\frq) * Plprand(2, 4)),
        atk: Pexprand(0.125, 0.5) / 16,
        rel: Pexprand(2.0, 4.0) * 2,
        crv: 0,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Plprand(2.0, 3.0) / Pkey(\lpf).expexp(20, 2000, 1, 8),
        pan: Pmeanrand(0.0, 1.0),
        cav: 8,
        cai: 0.0,
    ])
).play
)

// - 0:24:22.61 -  
Pdef(0).stop

