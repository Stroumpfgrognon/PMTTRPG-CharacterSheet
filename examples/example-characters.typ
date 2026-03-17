#import "../bin/elements.typ": * 
#import "../bin/keywords.typ": *
#import "../bin/functions.typ": bullet

#let Sweeper = (
  name:        [Sweeper],
  origin:      [???],
  workHistory: [???],
  rank:        [1],

  health:  [], atkp:  [],
  stagger: [], defp:  [],
  Sanity:  [], dodgp: [],
  Light:   [], level: [],

  fortitude: 1, prudence: 1, justice:    3,
  charm:     1, insight:  1, temperance: 3,

  outfit: [Sweeper suit],
  slashHP: [0.5], slashST: [1],
  pierceHP: [1.5], pierceST: [1],
  bluntHP: [1], bluntST: [1],
  effects: [- #bullet[Liquid flesh][Block dice power +1]],

  weapons: ( (
    name: [Sweeper Scythe], power: [D10],
    effects: [#WeaponEffectDesc((WEAPON.OffensiveOne,WEAPON.MeleeShort,ATKTYPE.Pierce))
    - #Hit(Inflict(EFFECTS.Bleed,3))
    ],),),

  inventory: (),

  skills: ( (
    name: [Sweep the Backstreets], cost: [1],
    effects: [#SKILL.Offensive
      - #Hit(Inflict(EFFECTS.Paralysis,2))
    - #Hit(Recover(BODY.Health,2))]
  ), (
    name: [Resilience], cost: [2],
    effects: [#SKILL.Block
    - #Use(Gain(EFFECTS.Resilience,4))]
  ), (
    name: [More fuel], cost: [1],
    effects: [#SKILL.Dodge
    - #ClashW[#Inflict(BODY.Damage,2) and #Recover(BODY.Health,2)]]
  ), (
    name: [], cost: [],
    effects: []
  ), ),

  notes: (bullet[Corpse cleanup][When another character dies, heals 20% of max HP],),
)

#let TaintedMist = (
  name:        [Tainted Mist],
  origin:      [Outskirts],
  workHistory: [Child of Thevillagewithnoname],
  rank:        [EX],

  health:  [200], atkp:  7,
  stagger: [56], defp:  7,
  Sanity:  [30], dodgp: 5,
  Light:   [9], level: 17,

  fortitude: 6, prudence: 3, justice:    6,
  charm:     4, insight:  3, temperance: 4,

  outfit: [Hopeless Flesh],
  slashHP: 1.5, slashST: 1.5,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.5, bluntST: 0.5,
  effects: [- #ClashL(Inflict(EFFECTS.Bleed,5)) to self
  - #ClashW(Inflict(EFFECTS.Bleed,5))
  - #SPECIAL.BleedResistance 3],

  weapons: ( (
    name: [False Mimicry], power: [D14 + 1],
    effects: [#WeaponEffectDesc((WEAPON.OffensiveOne,WEAPON.MeleeMedium,ATKTYPE.Slash))
    - A metamorph weapon, able to change damage type depending on the skill used but not at will
    - #ROLL.DiceMax +2
    - #SPECIAL.DoubleEdged
    - #ClashL(Inflict(EFFECTS.Bleed,5)) on self
    - #ClashW(Inflict(EFFECTS.Bleed,5))
    ],
  ),),

  inventory: (),

  skills: ((
    name:[HELP MEEE], cost:[0],
    effects : [#SKILL.Block 
    - #ROLL.DiceMax +2]
  ),(
    name:[HELLO], cost:[0],
    effects : [#SKILL.Offensive 
    - #ROLL.DiceMax +2]
  ),),

  ego : (
    nameplate : EgoTextNameplate("The Town's Mist-ake"),
    passives:(
        [Activates a false E.G.O at 100 HP (ends the turn when HP reaches that point). Fully restore light and ST and gives access to Tainted Split : Horizontal and the second passive],
        [#AUGMENT.BleedVigor]
      ),
    skills:( (
    name: [GOODBYE-rush], cost: [3],
    effects: [#SKILL.Offensive #ATKTYPE.Pierce 
    - If this skill staggers or kill its target, reuse it on another random ennemy target]
  ), (
    name: [Upstanding Slash], cost: [1],
    effects: [#SKILL.Offensive #ATKTYPE.Blunt
    - #SPECIAL.TendonSlice
    - #SPECIAL.BleedBonus 3]
  ), (
    name: [Spear], cost: [1],
    effects: [#SKILL.Offensive #ATKTYPE.Pierce
    - #SPECIAL.VampiricGash
    ]
  ),(
    name: [Level Slash], cost: [1],
    effects: [#SKILL.Offensive #ATKTYPE.Slash
    - #SPECIAL.Hemorrhage 2]
  ),(
    name: [Tainted Split : Vertical], cost: [5],
    effects: [#SKILL.Offensive #ATKTYPE.Slash 
    - Rolls twice for clashing & damage]
  ),(
    name: [Tainted Split : Horizontal], cost: [7],
    effects: [#SKILL.Offensive #ATKTYPE.Slash
    - Charges for a turn
    - Mass Summation
    - Rolls twice for clashing & damage.]
  ),),),

  notes: ([A mound of flesh mimicking the famous Red Mist, comprised of the flesh of countless children bearing the hope of the adults to protect their way of life.],
  ),
)

