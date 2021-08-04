([100, 200, 300] +.x [10, 30, 50, 70, 90] *.x [1, 2, 3, 4, 5, 6, 7]).postcs // .postcs posts the whole array.
// Make freq array using "Adverbs for Binary Operator" technique.

(
Pdef(0,
	Pseed(724,
		Pbind(*[
			type: Pdup(Plprand(0, 4), Pseq([\cln, \r, \r, \r, \r], inf)),
			snd: \sin,
			freq:  Pseq([
				110, 220, 330, 440, 550, 660, 770, 130, 260, 390, 520, 650, 780, 910, 150, 300,
				450, 600, 750, 900, 1050, 170, 340, 510, 680, 850, 1020, 1190, 190, 380, 570,
				760, 950, 1140, 1330, 210, 420, 630, 840, 1050, 1260, 1470, 230, 460, 690, 920,
				1150, 1380, 1610, 250, 500, 750, 1000, 1250, 1500, 1750, 270, 540, 810, 1080,
				1350, 1620, 1890, 290, 580, 870, 1160, 1450, 1740, 2030, 310, 620, 930, 1240,
				1550, 1860, 2170, 330, 660, 990, 1320, 1650, 1980, 2310, 350, 700, 1050, 1400,
				1750, 2100, 2450, 370, 740, 1110, 1480, 1850, 2220, 2590, 390, 780, 1170, 1560,
				1950, 2340, 2730
			].mirror1, inf).clump(2)
			/ Pseq((1.0, 1.01 .. 2.0).mirror1, inf).clump(2)
			% Pseq([250, 500, 750, 1000, 1250, 1500].mirror1, inf).clump(4),
			amp: Pdup(Plprand(0, 4), Plprand(-7.5.dbamp, -1.5.dbamp)),
			dur: 1/8,
			rel: Pdup(Plprand(0, 4), Plprand(4.0, 16.0)),
			crv: Plprand(-6.0, -2.0),
			sustain: Pkey(\rel),
			cav: 1,
			cai: Pdup(Plprand(0, 4), Plprand(0, 0.5)),
			hpf: Pdup(Plprand(0, 4), Plprand(20, 2000)),
			lpf: Pdup(Plprand(0, 4), Pwhite(200, 2000)) / Pkey(\freq).expexp(110, 2450, 0.25, 8),
		])
	)
).play;
)