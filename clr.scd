~clean.loadSoundFiles("clr");
(
Pdef(0,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \clr,
            dur: Pexprand(0.125,1.0),
            num: Pxshuf((0..14),inf),
            atk: Pwhite(5.0,8.0),
            hld: Pwhite(2.0,4.0),
            rel: Pwhite(3.0,6.0),
            crv: Pwhite(4.0,12.0),
            pan: Pwhite(0.0,1.0),
            amp: Pwhite(1/12,1/3),
            spd: Pdup(Pwhite(59,83),Pxshuf([1,45/32,4/3,5/4,6/5,9/8,16/15,15/16,8/9,5/6],inf)).trace,
            bgn: Pexprand(0.001,0.5),
            dark: 0.75,
        ])
    )
).play(quant:1);

Pdef(1,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \clr,
            dur: Pexprand(0.125,1.0),
            num: Pxshuf((0..14),inf),
            atk: Pwhite(5.0,8.0),
            hld: Pwhite(2.0,4.0),
            rel: Pwhite(3.0,6.0),
            crv: Pwhite(4.0,12.0),
            pan: Pwhite(0.0,1.0),
            amp: Pwhite(1/12,1/3),
            spd: Pdup(Pwhite(59,83),Pxshuf([1,45/32,4/3,5/4,6/5,9/8,16/15,15/16,8/9,5/6],inf)).trace,
            bgn: Pexprand(0.001,0.5),
            dark: 0.75,
            stretch: 2.345,
        ])
    )
).play(quant:1);

Pdef(2,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \clr,
            dur: Pexprand(0.125,1.0),
            num: Pxshuf((0..14),inf),
            atk: Pwhite(5.0,8.0),
            hld: Pwhite(2.0,4.0),
            rel: Pwhite(3.0,6.0),
            crv: Pwhite(4.0,12.0),
            pan: Pwhite(0.0,1.0),
            amp: Pwhite(1/12,1/3),
            spd: Pdup(Pwhite(59,83),Pxshuf([1,45/32,4/3,5/4,6/5,9/8,16/15,15/16,8/9,5/6],inf)).trace,
            bgn: Pexprand(0.001,0.5),
            dark: 0.75,
            stretch: 3.345,
        ])
    )
).play(quant:1);

Pdef(3,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \clr,
            dur: Pexprand(0.125,1.0),
            num: Pxshuf((0..14),inf),
            atk: Pwhite(5.0,8.0),
            hld: Pwhite(2.0,4.0),
            rel: Pwhite(3.0,6.0),
            crv: Pwhite(4.0,12.0),
            pan: Pwhite(0.0,1.0),
            amp: Pwhite(1/12,1/3),
            spd: Pdup(Pwhite(59,83),Pxshuf([1,45/32,4/3,5/4,6/5,9/8,16/15,15/16,8/9,5/6],inf)).trace,
            bgn: Pexprand(0.001,0.5),
            dark: 0.75,
            stretch: 4.567,
        ])
    )
).play(quant:1);
)

(
Pdef(0).stop;
Pdef(1).stop;
Pdef(2).stop;
Pdef(3).stop;
)

45/32
4:3
5:4
6:5
9:8
16:15
1:1
15:16
8:9
5:6
4:5
3:4
32:45
2:3
5:8
3:5
5:9
8:15
1:2
