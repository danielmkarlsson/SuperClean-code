( // SuperClean example
r.stop;
r = {
    loop {  
        Pdef(0,
            Pbind(*[
                type: \cln,
                snd: \mmd,
                dur: Pdup(inf, Pwhite(0.01, 0.1, 1)),
                freq: Pdup(inf, Pexprand(220, 440, 1)),
            ])
        ).play(quant:0);
        exprand(0.001, 0.01).wait;
        Pdef(0).stop;
    }
}.fork;
)

( 
Pdef(0).stop;
r.stop; // fun to eval just this line to make it "freeze" on one value, then go back up and run the block again
)

( // vanilla SC example
r.stop;
r = {
    loop {  
        Pdef(0,
            Pbind(*[
                dur: Pdup(inf, Pwhite(0.001, 0.1, 1)),
                freq: Pdup(inf, Pexprand(220, 440, 1)),
            ])
        ).play(quant:0);
        exprand(0.001, 0.002).wait; // problems when changing these values back and forth while this code is running
        Pdef(0).stop;
    }
}.fork;
)
