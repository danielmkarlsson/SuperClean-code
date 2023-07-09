(
Pbindef(\0,
    \type, \cln,
    \snd, \fmx,
    \sed, Pdefn(\sed),
    \rps, Pdefn(\rps),
    \dur, Pdefn(\dur),
    \hr1, Pdefn(\hr1),
    \hr2, Pdefn(\hr2),
    \hr3, Pdefn(\hr3),
    \hr4, Pdefn(\hr4),
    \mi2, Pdefn(\mi2),
    \mi3, Pdefn(\mi3),
    \mi4, Pdefn(\mi4),
    \fdb, Pdefn(\fdb),
    \amp, Pdefn(\amp),
    \en1, Pdefn(\en1),
    \en2, Pdefn(\en2),
    \en3, Pdefn(\en3),
    \en4, Pdefn(\en4),
    \hl1, Pdefn(\hl1),
    \hl2, Pdefn(\hl2),
    \hl3, Pdefn(\hl3),
    \hl4, Pdefn(\hl4),
    \cu1, Pdefn(\cu1),
    \cu2, Pdefn(\cu2),
    \cu3, Pdefn(\cu3),
    \cu4, Pdefn(\cu4),
    \hpf, Pdefn(\hpf),
    \rel, Pdefn(\rel),
    \crv, Pdefn(\crv),
).play
)

(
Pdefn(\rps, Pn(Pdup(Pwhite(1,9),Pseries(99,1,199))),inf);
Pdefn(\dur, Pdup(Pexprand(1,15).asInteger,1/Pwhite(5,11)));
Pdefn(\hr1, Pdup(Pkey(\rps),Pexprand(1,4).asInteger));
Pdefn(\hr2, Pdup(Pkey(\rps),Pexprand(1,4).asInteger));
Pdefn(\hr3, Pdup(Pkey(\rps),Pexprand(1,4).asInteger));
Pdefn(\hr4, Pdup(Pkey(\rps),Pexprand(1,4).asInteger));
Pdefn(\mi2, Pdup(Pkey(\rps),Pexprand(0.1,4)));
Pdefn(\mi3, Pdup(Pkey(\rps),Pexprand(0.1,4)));
Pdefn(\mi4, Pdup(Pkey(\rps),Pexprand(0.1,4)));
Pdefn(\fdb, Pdup(Pkey(\rps),Pexprand(0.1,4)));
Pdefn(\hpf, Pdup(Pkey(\rps),Pexprand(20,200)));
Pdefn(\amp, Pdup(Pkey(\rps),Pexprand(0.3,0.8)));
Pdefn(\en1, Pdup(Pkey(\rps),Pexprand(0.001,1.0)));
Pdefn(\en2, Pdup(Pkey(\rps),Pexprand(0.001,1.0)));
Pdefn(\en3, Pdup(Pkey(\rps),Pexprand(0.001,1.0)));
Pdefn(\en4, Pdup(Pkey(\rps),Pexprand(0.001,1.0)));
Pdefn(\hl1, Pdup(Pkey(\rps),Pexprand(0.5,5.0)));
Pdefn(\hl2, Pdup(Pkey(\rps),Pexprand(0.5,5.0)));
Pdefn(\hl3, Pdup(Pkey(\rps),Pexprand(0.5,5.0)));
Pdefn(\hl4, Pdup(Pkey(\rps),Pexprand(0.5,5.0)));
Pdefn(\cu1, Pdup(Pkey(\rps),Pexprand(0.5,5.0)-Prand([0,5],inf)));
Pdefn(\cu2, Pdup(Pkey(\rps),Pexprand(0.5,5.0)-Prand([0,5],inf)));
Pdefn(\cu3, Pdup(Pkey(\rps),Pexprand(0.5,5.0)-Prand([0,5],inf)));
Pdefn(\cu4, Pdup(Pkey(\rps),Pexprand(0.5,5.0)-Prand([0,5],inf)));
Pdefn(\rel, Pdup(Pkey(\rps),Pkey(\dur)/Pwhite(1,1/64)));
Pdefn(\crv, Pdup(Pkey(\rps),Pexprand(-8,-3)));
)

Pbindef(\0).stop;
