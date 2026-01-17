#import "../bin/elements.typ": ClashL, ClashW, CondEffect, Gain, Heads, Hit, Inflict, Recover, Special, Tails, Use
#import "../bin/keywords.typ": ARMOR, ATKTYPE, BODY, EFFECTS, SKILL, SPECIAL, WEAPON, WEAPONS
#import "../bin/functions.typ": bullet


#let empty_character = (
  name:        [],
  origin:      [],
  workHistory: [],
  rank:        [],

  health:  [], atkp:  [],
  stagger: [], defp:  [],
  Sanity:  [], dodgp: [],
  Light:   [], level: [],

  fortitude: [], prudence: [], justice:    [],
  charm:     [], insight:  [], temperance: [],

  outfit: [],
  slashHP: [], slashST: [],
  pierceHP: [], pierceST: [],
  bluntHP: [], bluntST: [],
  effects: [],

  weapons: ( (
    name: [], power: [],
    effects: [],
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

  inventory: (),

  skills: ( (
    name: [], cost: [],
    effects: []
  ), (
    name: [], cost: [],
    effects: []
  ), (
    name: [], cost: [],
    effects: []
  ), (
    name: [], cost: [],
    effects: []
  ), ),

  notes: (),
)

#let Diane = (
  name:        [Diane],
  origin:      [Unknown],
  workHistory: [Intelligence gathering],
  rank:        [2],

  health:  104, atkp:  2,
  stagger: 32, defp:  2,
  Sanity:  24, dodgp: 3,
  Light:   5, level: 3,

  fortitude: 2, prudence: 3, justice:    1,
  charm:     1, insight:  3, temperance: 2,

  outfit: [Triple R Armor (Rat)],
  slashHP: 1, slashST: 0.5,
  pierceHP: 1, pierceST: 1,
  bluntHP: 1, bluntST: 1,
  effects: [Overcharge - Max #EFFECTS.Charge count becomes 20],

  weapons: ( (
    name: [Charged dagger], power: [D10],
    effects: [Deals 2 bleed potency on hit when #EFFECTS.Charge is 10 or more],
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

  inventory: ("Medicinal herbs","Pocket change"),

  skills: ( ( // name, cost, effects
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 #EFFECTS.Charge count, restore 1 #EFFECTS.Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 #EFFECTS.Charge count]
  ),(
    name: [Slippery tail], cost: [2],
    effects: [Dodge skill. On dodge, gains 1 #EFFECTS.Charge count and restore 1 #EFFECTS.Light. Can consume 3 #EFFECTS.Charge count to gain +1 Aggro (attracts attacks) (repeatable)]
  ), (
    name: [Kingless and unbound], cost: [4],
    effects: [Unopposed attack. Inflicts 5 bleed. For each 10 #EFFECTS.Charge count on self, consume 10 #EFFECTS.Charge count and recycle attack]
  ), ),

  notes: (),
)

#let Eleonore = (
  name:        [Eleonore],
  origin:      [T-Corp's Nest],
  workHistory: [Espionnage],
  rank:        [2],

  health:  88, atkp:  2,
  stagger: 32, defp:  2,
  Sanity:  24, dodgp: 4,
  Light:   5, level: 3,

  fortitude: 0, prudence: 3, justice:    2,
  charm:     1, insight:  4, temperance: 2,

  outfit: [Triple R Armor (Reindeer)],
  slashHP: 1, slashST: 1,
  pierceHP: 1, pierceST: 0.5,
  bluntHP: 1, bluntST: 1,
  effects: [Overcharge - Max #EFFECTS.Charge count becomes 20],

  weapons: ((
    name: [Charged Staff], power: [D12],
    effects: [Deals 20% more Sanity damage (rounded up) when #EFFECTS.Charge count is 10 or more],
  ),),

  inventory: ("M Corp's Moonstone - Reduces Sanity damage to self by 20%",),

  skills: ( ( // name, cost, effects
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 #EFFECTS.Charge count, restore 1 #EFFECTS.Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 #EFFECTS.Charge count]
  ),(
    name: [Mind Whip], cost: [3],
    effects: [Attack skill. Consume up to 8 #EFFECTS.Charge count to inflict 4 #EFFECTS.Sinking in a small area, repetable 2 times but costs 5 Sanity for each repeat. If less than 8 #EFFECTS.Charge count were spent, attack becomes indescriminate.]
  ), (
    name: [Madness], cost: [4],
    effects: [Attack skill. At less than 10 charge count, consume all charge count and spend 15-#EFFECTS.Charge spent Sanity. At 10 or more #EFFECTS.Charge count, spend 10 #EFFECTS.Charge count. Inflicts Sanity damage equal to damage dealt to ennemy. If ennemy's Sanity reaches 0 or less, restores 75% of max Sanity and 2 #EFFECTS.Light]
  ),
  ),

  notes: (),
)

#let Kali = (
  name:        [Kali],
  origin:      [Backstreets of district 12],
  workHistory: [Color Fixer],
  rank:        [EX],

  health:  [200], atkp:  7,
  stagger: [56], defp:  7,
  Sanity:  [30], dodgp: 5,
  Light:   [9], level: 17,

  fortitude: 16, prudence: 5, justice:    10,
  charm:     3, insight:  5, temperance: 7,

  outfit: [Kali's Raincoat],
  slashHP: 1, slashST: 1,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.5, bluntST: 0.5,
  effects: [- Retaliate : Gains a counter attack on combat start],

  weapons: ( (
    name: [Mimicry], power: [D20],
    effects: [#WEAPON.Offensive #WEAPON.MeleeMedium - #ATKTYPE.Slash \
              A metamorph weapon, able to change damage type depending on the skill used.],
  ), (
    name: [Kitchen gun], power: [D10],
    effects: [#WEAPON.Offensive #WEAPON.RangedLowCal - #ATKTYPE.Pierce \
              A gun able to clean every dishes in a single bullet, which is all the ammo it has.],
  ), (
    name: [], power: [],
    effects: [],
  ), (
    name: [], power: [],
    effects: [],
  ), ),

  inventory: ("Your pain", "Your suffering","All your lunacy","And then a bit more", "How funny","A pocket Chesed","Another pocket Chesed", "According to the laws of aviation there should be no way for a bee to fly","Right ?"),

  skills: ( (
    name: [Onrush], cost: [3],
    effects: [#SKILL.Offensive \ If Kali staggers or kill target using this skill, reuse it on another random ennemy target]
  ), (
    name: [Upstanding Slash], cost: [2],
    effects: [#SKILL.Offensive \ #ATKTYPE.Blunt :: If this did more than 8 damage, reduce the next cost by 1]
  ), (
    name: [Spear], cost: [2],
    effects: [#SKILL.Offensive \ #ATKTYPE.Pierce :: If this did more than 8 damage, reduce the next cost by 1]
  ),(
    name: [Level Slash], cost: [2],
    effects: [#SKILL.Offensive \ #ATKTYPE.Pierce If this did more than 8 damage, restore 3 #EFFECTS.Light and reduce next cost by 1]
  ), (
    name: [#SKILL.Offensive \ #ATKTYPE.Pierce Greater Split : Vertical], cost: [5],
    effects: [Rolls twice for clashing & damage]
  ),(
    name: [Greater Split : Horizontal], cost: [7],
    effects: [#SKILL.Offensive \ #ATKTYPE.Pierce Mass summation. Rolls twice for clashing & damage]
  ), ),

    ego : (
      nameplate : "E.G.Os/RedMist.png",
      passives:(
        [The Red Mist's hunger - Gains +1 #EFFECTS.Power on turn start for each ennemy killed (max 5 stacks)],[
          Gebura's Prowess - Gains +1 #EFFECTS.Power for every 2 Speed difference with attacked ennemy (max 5)
        ],
      ),
      skills:((
        name: [Mimicry release], cost: [0],
        effects: [Gains 1 stack of "Bloodlust", giving +1 #EFFECTS.Power per stack, max 3 stacks. ]
        ),(
        name: [Greater Split : Horizontal], cost: [8],
        effects: [Deals a limbillion damage to Heathcliff]
        ),(
        name: [Greater Split : Horizontal], cost: [0],
        effects: [Deals a limbillion damage to Heathcliff]
        ),(
        name: [Greater Split : Horizontal], cost: [0],
        effects: [Deals a limbillion damage to Heathcliff]
        ),(
        name: [Greater Split : Horizontal], cost: [0],
        effects: [Deals a limbillion damage to Heathcliff]
        ),(
        name: [Surprise skeleton], cost: [69],
        effects: [He has a bone to pick with you]
        ),
      ),
    ),

  notes: (
    "Speed 3 - Can attack 3 times per turn at different speed",
    "The Strongest - The lowest speed each turn becomes infinite",
    "The Red Mist - All dice gains 2 power"
  ),
)




