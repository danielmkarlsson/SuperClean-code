~clean.loadSoundFiles("Documents/wav/rnb"); // load in these samples into ram and let SuperClean know about them
( // begin enclosing convenience parenthesis
    Pdef(\0, // realTime eval is essential, Pdef defines this possibility within the Pattern paradigm
        Pbind(*[ // bind the parameter names (on the left) to the values (on the right in the coloumns below) 
            type: \clean, // this wakes SuperClean up so it can get ready to sequence samples and whatNot
            s: \rnb, // s for sample or synth or sound, here there's a folder full of RnB single drum hits
            dur: Pstutter( // set the time between events, Pstutter repeats the values x amount of times
                Pwhite(3,5),Pseq([ // patterns can be nested over several lines, Repeat the values 3 to 5 times, Also Pseq sequences
                    Prand([1/Pseq([Prand([3,5],inf), // inside the linear sequencer there are stochastic choices, first this one
                    Prand([4,8],inf), // then this one, diferent values, dividing the duration with higher values
                    Prand([5,9],inf)],inf)],3),Pstutter(Pwhite(1,17),Pseq([\],1))],inf)), // then this choice, faster possibilities
            n: Pseq([Prand([1,11,34,44,56],8),Pstutter(Pexprand(1,19),Pseq([\],1))],inf), // n for note or number, here which file
            rps: Pwrand((43,45..339),(339,337..43),inf), // this one is one I made up on the fly, rps for repeats, using it's value below
            gain: Pwhite(1.0,4.0), // gain means how loud is it, feeds into the compressor after a while, makes it hawt and present
            pan: Pwhite(0.0,1.0), // pan in the stereo field, white as in white noise, equal distribution of all of the float values
            legato: 0.999, // cuts the sample of at the end of or `dur:` from above, I use this instead of `cut:¿ now, more flexible
            rel: Pkey(\dur), // the release time of the amplitude envelope is using the values from `dur:`
            crv: 5, // the curvature of the amplitude envelope, is bipolar (for example -8.0, is nice n sharp)
            speed: 3/4, // playback speed of the sample, this effects both the pitch and the duration, like an old timey tape
            lpf: Pwhite(20,20000), // the lowPass filter, I'm intentionally using equal, not exponential distribution here
            lpq: Pstutter((\rps),Pkey(\lpf)).expexp(160,400,1,0.1), // the resonance of the lowPass filter, repeats form `rps:`
            shp: Pkey(\lpf).explin(20,20000,0.999999,0.0), // a pretty gritty distortion, keyed from lpf, exp to lin in inverted range
            orbit: 1, // this is like an aux, preserves stereo through this "bus", there can be as many orbits as you like, starts at 0
            stretch: Pseg(Pwhite(0.125,3.0),Pwhite(2.0,8.0),\lin,inf), // stretches the tempo of this pattern, lower values are faster
        ]) // close the Pdef from above
    ).play(quant:1); // close the Pbind from above and make this pattern play in time with other patterns
) // end of surrounding convenience parenthesis

( // same deal as bove basically
    Pdef(\1, //mos def
        Pbind(*[ // "one pattern to bind them"
            type: \clean, // keeping it clean
            s: \fmx, // this is the name of a nifty four operator FM synth that comes included in SuperClean so s is for SNYTH this time
            hr1: Pstutter(Pwhite(0,7),Pwhite(1,4)), // harmonic ratio, integers keep everything lined up neatly( floats would be sour)
            hr2: Pstutter(Pwhite(0,7),Pwhite(1,3)), // the four operators below
            hr3: Pstutter(Pwhite(0,7),Pexprand(1,1.001)),
            hr4: Pstutter(Pwhite(0,7),Pwhite(1,4)),
            mi2: Pstutter(Pwhite(0,7),Pexprand(1.0,4.0),inf), // the modulation indexes between the operators
            mi3: Pstutter(Pwhite(0,7),Pexprand(1.0,4.0),inf),
            mi4: Pstutter(Pwhite(0,7),Pexprand(1.0,4.0),inf),
            en1: Pstutter(Pwhite(0,7),Pexprand(0.0001,1.1)), // the envelopes of the four operators
            en2: Pstutter(Pwhite(0,7),Pexprand(0.001,2.2)),
            en3: Pstutter(Pwhite(0,7),Pexprand(0.01,3.3)),
            en4: Pstutter(Pwhite(0,7),Pexprand(0.1,4.4)),
            n: Pstutter(Pwhite(10,70),(0,7..53)-Pwhite(0,53)), // n for note here, the keys on the keyboard, try `freq:` maybe instead?  
            trc: Pkey(\n).trace, // another one I made up  on the fly to trace the values from `n:` because big chords floating by here->
            lpf: 20000-Pexprand(400,20000), // lpf with exponential distribution with inverted value range thanks to basic arithemtic
            hpf: Pexprand(20,200), // high pass filter not inverted because "defualts" to "open", lower values = less filtering here
            gain: Pkey(\lpf).explin(20,20000,4,0.25), // gain keyd from lpf w/ some exp to lin math I may have gotten wrong, tricky 
            crv: -118, // the curvature of the envelope can go crazy high or low
            dur: Pstutter(Pseq([1,3,5,7,9],inf), // the durations or time time between events split up over several lines
                Pseq([ //this linear sequencer has a list of elements
                    3, // these are the elements of the list
                    1,
                    1/3,
                    1/Prand((5..7),1), // one diveded by
                    1/Prand((3..5),1), // lower
                    1/Prand((1..3),1) // and lower numbers yields ritardando (slowing down in Italian)
                ],inf)),
            rel: 5*Pexprand(19,119), // release times get their values here through a wide range of values and basic arithmetic
            fdb: 0, // set the internal feedback of the operators to zero, because this synth has defaults to make it audible on day 1
        ]) // close the Pdef from above, same as above
    ).play(quant:1); // close the Pbind from above and make this pattern play in time with other patterns, like before
) // end of surrounding convenience parenthesis, as is custom
// my personal takeAway from today was in the `n:` line, big crazy chord, check it out on your machine, it's wild how that works here

~clean.loadSoundFiles("Downloads/jst");
(
    Pdef(\2,
        Pbind(*[
            type: \clean,
            s: \jst,
            legato: 9,
            begin: Pwhite(0.0,10.0),
            pan: Pwhite(0.0,1.0),
            dur: Pseq([1/8,1/7,1/6,1/5,1/4,1/3,1/2,1,2/1,3/1,4/1,3/1,2/1],inf),
            rel: Pkey(\dur)+Pexprand(0.001,10.1),
            crv: -118,
            freq: Pstutter(Pwhite(1,20),220*Prand([4/5,5/4,7/5],inf)),
            bpf: Pseg([20,8000,20],Pwhite(3,90),\welch,inf),
            gain: Pseg([0.0,16.0,0.0],Pwhite(3,90),\welch,inf),
            stretch: Pseq([1/8,1/7,1/6,1/5,1/4,1/3,1/2],inf),
            speed: 1,
            orbit: Pwhite(0,0),
        ])
    ).play(quant:1);
)

Pdef(\2).stop; // I use this to stop a named pattern, I use numbers for names because swank increment / decrement w/ C+x/x in vim
// so I'll cahnge up the number if I'm in a hurry, what you also could do is do a surrounding convenience parenthesis like this
(
    Pdef(\0).stop;
    Pdef(\1).stop;
    Pdef(\2).stop;
)
// this way you can do single line evaluation ofr the whole block to close 'em all down at the same time

( // oh hey, yeah so, this is weird huh, yeah I want to fix this so it's a better fit for the "patterns in patterns worldView"
    ~pat={|seed,ctlNum,ccVal,duration| // I'm working on it, for now I mean this is some stuff that can be used to set up MIDI work
        var cc = 
            Pbind(*[
                type: \midi,
                midicmd: \control,
                midiout: ~m,
                chan: 0,
                ctlNum: ctlNum,
                control: ccVal,
                dur: duration,
            ]);
        Pseed(seed,Pseq([cc],inf)); // in case this comes up in discussion I've heard this referenced to as "factory style"
    }; // I think this could also be done with Pspawn, never mind, this is something I'm working on, will fix!
);


( // on and umh, yeeah soooo... this is where all the mid cc stuff happens, I'd really like to do this like old school tc: `cc1: 127`
Pdef(\pat0,~pat.(000,0,Pstutter(Pexprand(1,9),Pexprand(63,127,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1); // wet gain
Pdef(\pat1,~pat.(111,1,Pstutter(Pexprand(1,9),Pexprand(1,127,inf)),Pxshuf((1.1,1.3..17),inf))).play(quant:1); // time
Pdef(\pat2,~pat.(222,2,Pstutter(9,Pexprand(63,127,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1) ; // low time mult
Pdef(\pat3,~pat.(333,3,Pstutter(9,Pexprand(1,127,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1) ; // high time mult
Pdef(\pat4,~pat.(444,4,Pstutter(Pexprand(1,1),Pwhite(0,127,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1); // room size
Pdef(\pat5,~pat.(555,5,Pstutter(9,Pwhite(0,33,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1); // pre-delay
Pdef(\pat6,~pat.(666,6,Pstutter(9,Pwhite(0,127,inf)),Pxshuf((1.1,1.3..1.7),inf))).play(quant:1); // seed/variation
Pdef(\pat7,~pat.(777,7,Pstutter(Pexprand(1,1),Pwrand([0,127],[8,1].normalizeSum,inf)),Pxshuf((1.1,1.3..17),inf))).play(quant:1) ; // hold
Pdef(\pat8,~pat.(888,8,Pstutter(9,Pwhite(0,127,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // diffusion
Pdef(\pat9,~pat.(999,9,Pstutter(9,Pexprand(71,127,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // band 1 gate threshold
Pdef(\pat10,~pat.(1010,10,Pstutter(9,Pexprand(61,127,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // band 2 gate threshold
Pdef(\pat11,~pat.(1111,11,Pstutter(9,Pexprand(51,127,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // band 3 gate
Pdef(\pat12,~pat.(1212,12,Pstutter(9,Pexprand(41,127,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // band 4 gate
Pdef(\pat13,~pat.(1313,13,Pstutter(9,Pwrand([0,127],[0,1].normalizeSum,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // gate wet
Pdef(\pat14,~pat.(1414,14,Pstutter(9,Pwrand([0,127],[0,1].normalizeSum,inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // amb wet
Pdef(\pat15,~pat.(1515,15,Pstutter(9,127-Prand([0,127],inf)),Pxshuf((1.1,1.3..7),inf),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // oct 0
Pdef(\pat16,~pat.(1515,16,Pstutter(9,Prand([0,127],inf)),Pxshuf((1.1,1.3..7),inf),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // oct -1
Pdef(\pat17,~pat.(1717,17,Pstutter(9,Pwhite(0,0),Pxshuf((1.1,1.3..7),inf)),Pxshuf((1.1,1.3..7),inf))).play(quant:1); // oct -2
) // end enclosing convenience parenthesis
// and that is it
// I'll make sure to put this on GitHub as like today's date Twitch stream kerfuffle
// thanks for watching
// // peace be unto you
