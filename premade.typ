
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
  icon1: [], icon4: [],
  icon2: [], icon5: [],
  icon3: [], icon6: [],
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

  health:  [104], atkp:  [2],
  stagger: [32], defp:  [2],
  Sanity:  [24], dodgp: [3],
  Light:   [5], level: [3],

  fortitude: [2], prudence: [3], justice:    [1],
  charm:     [1], insight:  [3], temperance: [2],

  outfit: [Triple R Armor (Rat)],
  icon1: [1], icon4: [0.5],
  icon2: [1], icon5: [1],
  icon3: [1], icon6: [1],
  effects: [Overcharge - Max Charge count becomes 20],

  weapons: ( (
    name: [Charged dagger], power: [D10],
    effects: [Deals 2 bleed potency on hit when Charge is 10 or more],
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
    effects: [Unopposed attack. Gain +3 Charge count, restore 1 Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 Charge count]
  ),(
    name: [Slippery tail], cost: [2],
    effects: [Dodge skill. On dodge, gains 1 Charge count and restore 1 Light. Can consume 3 Charge count to gain +1 aggro (attracts attacks) (repeatable)]
  ), (
    name: [Kingless and unbound], cost: [4],
    effects: [Unopposed attack. Inflicts 5 bleed. For each 10 Charge count on self, consume 10 Charge count and recycle attack]
  ), ),

  notes: (),
)

#let Clark = (
  name:        [Clark],
  origin:      [R-Corp's Nest],
  workHistory: [None],
  rank:        [2],

  health:  [120], atkp:  [2],
  stagger: [32], defp:  [0],
  Sanity:  [24], dodgp: [3],
  Light:   [5], level: [3],

  fortitude: [4], prudence: [3], justice:    [1],
  charm:     [1], insight:  [3], temperance: [0],

  outfit: [Triple R Armor (Ram)],
  icon1: [1], icon4: [1],
  icon2: [1], icon5: [1],
  icon3: [1], icon6: [0.5],
  effects: [Overcharge - Max Charge count becomes 20],

  weapons: ((  // name, cost, effects
    name:  [Clark's dagger], power: [D6],
    effects:[?],
  ),(
    name: [Charged Mace], power: [D12],
    effects: [Deals 20% more stagger damage (rounded up) when Charge count is 10 or more],
  ),),

  inventory: ("Protective mask",),

  skills: ( ( // name, cost, effects
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 Charge count, restore 1 Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 Charge count]
  ),(
    name: [Bashful headbutt], cost: [2],
    effects: [Attack skill. If Charge count si 8 or more, inflict 10% more stagger damage for this turn. Consume 3 Charge count to inflict 2 stagger damage to self and 5 to ennemy on hit. Regenerates 2 Light on stagger]
  ), (
    name: [A Ram’s pride], cost: [4],
    effects: [Attack skill. Spend 10 Charge count to give 1 Atk power up to self and up to 3 allies next turn. At less than 10 Charge count, inflict 1 Atk power down to all alies except self, gain 1 Atk power up and 10 Charge count.]
  ),
  ),

  notes: (),
)

#let Juline = (
  name:        [Juline],
  origin:      [T-Corp's Nest],
  workHistory: [Espionnage],
  rank:        [2],

  health:  [88], atkp:  [2],
  stagger: [32], defp:  [2],
  Sanity:  [24], dodgp: [4],
  Light:   [5], level: [3],

  fortitude: [0], prudence: [3], justice:    [2],
  charm:     [1], insight:  [4], temperance: [2],

  outfit: [Triple R Armor (Reindeer)],
  icon1: [1], icon4: [1],
  icon2: [1], icon5: [0.5],
  icon3: [1], icon6: [1],
  effects: [Overcharge - Max Charge count becomes 20],

  weapons: ((
    name: [Charged Staff], power: [D12],
    effects: [Deals 20% more Sanity damage (rounded up) when Charge count is 10 or more],
  ),),

  inventory: ("M Corp's Moonstone - Reduces Sanity damage to self by 20%",),

  skills: ( ( // name, cost, effects
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 Charge count, restore 1 Light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. Gain +8 Charge count]
  ),(
    name: [Mind Whip], cost: [3],
    effects: [Attack skill. Consume up to 8 Charge count to inflict 4 Sinking in a small area, repetable 2 times but costs 5 Sanity for each repeat. If less than 8 Charge count were spent, attack becomes indescriminate.]
  ), (
    name: [Madness], cost: [4],
    effects: [Attack skill. At less than 10 charge count, consume all charge count and spend 15-Charge spent Sanity. At 10 or more Charge count, spend 10 Charge count. Inflicts Sanity damage equal to damage dealt to ennemy. If ennemy's Sanity reaches 0 or less, restores 75% of max Sanity and 2 Light]
  ),
  ),

  notes: (),
)

#let Kali = (
  name:        [Kali],
  origin:      [Backstreets of district 12],
  workHistory: [Color Fixer],
  rank:        [EX],

  health:  [200 / 200], atkp:  [7],
  stagger: [56 / 56], defp:  [7],
  Sanity:  [30 / 30], dodgp: [5],
  Light:   [9 / 9], level: [17],

  fortitude: [10], prudence: [5], justice:    [10],
  charm:     [3], insight:  [5], temperance: [7],

  outfit: [Kali's Raincoat],
  icon1: [1], icon4: [1],
  icon2: [1], icon5: [1],
  icon3: [0.5], icon6: [0.5],
  effects: [- Retaliate : Gains a counter attack on combat start],

  weapons: ( (
    name: [Mimicry], power: [D20],
    effects: [Base : Slash \
              A metamorph weapon, able to change damage type depending on the skill used.],
  ), (
    name: [Kitchen gun], power: [D10],
    effects: [Pierce \
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
    effects: [If Kali staggers or kill target using this skill, reuse it on another random ennemy target]
  ), (
    name: [Upstanding Slash], cost: [2],
    effects: [[BLUNT] If this did more than 8 damage, reduce the next cost by 1]
  ), (
    name: [Spear], cost: [2],
    effects: [[PIERCE] If this did more than 8 damage, reduce the next cost by 1]
  ),(
    name: [Level Slash], cost: [2],
    effects: [If this did more than 8 damage, restore 3 Light and reduce next cost by 1]
  ), (
    name: [Greater Split : Vertical], cost: [5],
    effects: [Rolls twice for clashing & damage]
  ),(
    name: [Greater Split : Horizontal], cost: [7],
    effects: [Mass summation. Rolls twice for clashing & damage]
  ), ),

  notes: (
    "Speed 3 - Can attack 3 times per turn at different speed",
    "The Strongest - The lowest speed each turn becomes infinite",
    "The Red Mist - All dice gains 2 power"
  ),
)
