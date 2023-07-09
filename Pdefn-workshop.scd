( // these Pdefn lines can be evaluated all together or one by one
Pdefn(\dup, Pn(Pdup(Plprand(1, 9), Pseries(1, 0.6, 999))), inf);
Pdefn(\dur, (1 / Pdup(Pexprand(1, 15).asInteger, Phprand(5, 11))));
Pdefn(\hr1, Pdup(Pkey(\dup), Pexprand(1, 4).asInteger));
Pdefn(\hr2, Pdup(Pkey(\dup), Pexprand(1, 4).asInteger));
Pdefn(\hr3, Pdup(Pkey(\dup), Pexprand(1, 4).asInteger));
Pdefn(\hr4, Pdup(Pkey(\dup), Pexprand(1, 4).asInteger));
Pdefn(\mi1, Pdup(Pkey(\dup), Pexprand(1.0, 4)));
Pdefn(\mi2, Pdup(Pkey(\dup), Pexprand(1.0, 4)));
Pdefn(\mi3, Pdup(Pkey(\dup), Pexprand(1.0, 4)));
Pdefn(\mi4, Pdup(Pkey(\dup), Pexprand(1.0, 4)));
Pdefn(\hpf, Pdup(Pkey(\dup), Pexprand(20, 200)));
Pdefn(\amp, Pdup(Pkey(\dup), Phprand(0.75, 1.25)));
Pdefn(\en1, Pdup(Pkey(\dup), Pexprand(0.001, 1.0)));
Pdefn(\en2, Pdup(Pkey(\dup), Pexprand(0.001, 1.0)));
Pdefn(\en3, Pdup(Pkey(\dup), Pexprand(0.001, 1.0)));
Pdefn(\en4, Pdup(Pkey(\dup), Pexprand(0.001, 1.0)));
Pdefn(\hl1, Pdup(Pkey(\dup), Pexprand(0.5, 5.0)));
Pdefn(\hl2, Pdup(Pkey(\dup), Pexprand(0.5, 5.0)));
Pdefn(\hl3, Pdup(Pkey(\dup), Pexprand(0.5, 5.0)));
Pdefn(\hl4, Pdup(Pkey(\dup), Pexprand(0.5, 5.0)));
Pdefn(\cu1, Pdup(Pkey(\dup), Pexprand(1.0, 2.0) - 1));
Pdefn(\cu2, Pdup(Pkey(\dup), Pexprand(1.0, 2.0) - 1));
Pdefn(\cu3, Pdup(Pkey(\dup), Pexprand(1.0, 2.0) - 1));
Pdefn(\cu4, Pdup(Pkey(\dup), Pexprand(1.0, 2.0) - 1));
Pdefn(\rel, Pdup(Pkey(\dup), Pkey(\dur) / Plprand(1, 1.0625)));
Pdefn(\crv, Pdup(Pkey(\dup), Pexprand(-8, -3)));
Pdefn(\freq, Pdup(Pkey(\dup), Pexprand(32, 320))).round(32);
Pbindef(\0,
    \type, \cln,
    \snd, \fmx,
    \dup, Pdefn(\dup),
    \num, Pdefn(\num),
    \dur, Pdefn(\dur),
    \hr1, Pdefn(\hr1),
    \hr2, Pdefn(\hr2),
    \hr3, Pdefn(\hr3),
    \hr4, Pdefn(\hr4),
    \mi1, Pdefn(\fdb),
    \mi2, Pdefn(\mi2),
    \mi3, Pdefn(\mi3),
    \mi4, Pdefn(\mi4),
    \freq, Pdefn(\freq),
    \amp, Pdefn(\amp) / Pkey(\freq).linlin(32, 320, 1, 1.25),
    \en1, Pdefn(\en1),
    \en2, Pdefn(\en2),
    \en3, Pdefn(\en3),
    \en4, Pdefn(\en4),
    \hl1, Pdefn(\hl1),
    \hl2, Pdefn(\hl2),
    \hl3, Pdefn(\hl3),
    \hl4, Pdefn(\hl4),
    \cu1, Pdefn(\cu1).trace,
    \cu2, Pdefn(\cu2),
    \cu3, Pdefn(\cu3),
    \cu4, Pdefn(\cu4),
    \hpf, Pdefn(\hpf),
    \atk, Pdefn(\atk),
    \rel, Pdefn(\rel),
    \crv, Pdefn(\crv),
).play
)

Pbindef(\0).stop;
