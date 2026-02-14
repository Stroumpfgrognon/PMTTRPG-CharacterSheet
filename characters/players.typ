#import "../bin/elements.typ":(Hit,ClashW,ClashL,Gain,Inflict, Special, Recover,CondEffect,Use, Heads, Tails )
#import "../bin/keywords.typ": ATKTYPE, EFFECTS, WEAPONS, ARMOR, SPECIAL, BODY, SKILL, WEAPON
#import "../bin/functions.typ": bullet



#let Clark = (
  name:        [Clark],
  origin:      [R-Corp's Nest],
  workHistory: [None],
  rank:        [2],

  health:  120, atkp:  2,
  stagger: 32, defp:  0,
  Sanity:  24, dodgp: 3,
  Light:   5, level: 3,

  fortitude: 5, prudence: 4, justice:    1,
  charm:     1, insight:  3, temperance: 0,

  outfit: [Triple R Armor (Ram)],
  slashHP: 1, slashST: 1,
  pierceHP: 1, pierceST: 1,
  bluntHP: 1, bluntST: 0.5,
  effects: [Overcharge - Max #EFFECTS.Charge count becomes 20],

  weapons: ((  // name, cost, effects
    name:  [Clark's dagger], power: [D6],
    effects:[?],
  ),(
    name: [Charged Mace], power: [D12],
    effects: [Deals 20% more stagger damage (rounded up) when #EFFECTS.Charge count is 10 or more],
  ),),

  inventory: ("Protective mask",),

  skills: ( ( // name, cost, effects
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 #EFFECTS.Charge count, restore 1 #EFFECTS.Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 #EFFECTS.Charge count]
  ),(
    name: [Bashful headbutt], cost: [2],
    effects: [Attack skill. If #EFFECTS.Charge count si 8 or more, inflict 10% more stagger damage for this turn. Consume 3 #EFFECTS.Charge count to inflict 2 stagger damage to self and 5 to ennemy on hit. Regenerates 2 #EFFECTS.Light on stagger]
  ), (
    name: [A Ram’s pride], cost: [4],
    effects: [Attack skill. Spend 10 #EFFECTS.Charge count to give 1 Atk power up to self and up to 3 allies next turn. At less than 10 #EFFECTS.Charge count, inflict 1 Atk power down to all alies except self, gain 1 Atk power up and 10 #EFFECTS.Charge count.]
  ),
  ),

  notes: (),
)

#let Adzoéazabek = (
  name:        [Adzoéazabek],
  origin:      [Outskirts/District 23],
  workHistory: [Axe gang fixer],
  rank:        [2],

  health:  [], atkp:  [],
  stagger: [], defp:  [],
  Sanity:  [], dodgp: [],
  Light:   [], level: [],

  fortitude: 4, prudence: 2, justice:    3,
  charm:     1, insight:  3, temperance: 1,

  outfit: [Fixer flowy dress shirt],
  slashHP: [1], slashST: [1],
  pierceHP: [1], pierceST: [1],
  bluntHP: [1.5], bluntST: [1.5],
  effects: [- Rank 2 Swift type
  - Burn resistance 2],

  weapons: ( (
    name: [Polearm double axe], power: [D12],
    effects: [- Double edges
    - Throwing weapon],
  ), (
    name: [], power: [],
    effects: [],
  ), (
    name: [], power: [],
    effects: [],
  ), (
    name: [], power: [],
    effects: [],
  ), ),

  inventory: ((bullet("Firecrackers","10pcs")),),

  skills: ( (
    name: [Speed], cost: [1],
    effects: [- Defensive skill: Instant Haste 1]
  ), (
    name: [Ressourcefulness], cost: [1],
    effects: [- Defensive skill: Slip past 1]
  ), (
    name: [], cost: [],
    effects: []
  ), (
    name: [], cost: [],
    effects: []
  ), ),

  notes: (bullet("Firekin","All charm rolls get a -1 bonus"),),
)