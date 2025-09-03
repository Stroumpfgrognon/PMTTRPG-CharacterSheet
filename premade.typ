
#let empty_character = (
  name:        [],
  origin:      [],
  workHistory: [],
  rank:        [],

  health:  [], atkp:  [],
  stagger: [], defp:  [],
  sanity:  [], dodgp: [],
  light:   [], level: [],

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
  sanity:  [24], dodgp: [3],
  light:   [5], level: [3],

  fortitude: [2], prudence: [3], justice:    [1],
  charm:     [1], insight:  [3], temperance: [2],

  outfit: [Triple R Armor (Rat)],
  icon1: [1], icon4: [0.5],
  icon2: [1], icon5: [1],
  icon3: [1], icon6: [1],
  effects: [Overcharge - Max charge count becomes 20],

  weapons: ( (
    name: [Charged dagger], power: [D10],
    effects: [Deals 2 bleed potency on hit when charge is 10 or more],
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

  skills: ( (
    name: [Leftovers be gone], cost: [0],
    effects: [Unopposed attack. Gain +3 charge count, restore 1 light.]
  ), (
    name: [Concentration], cost: [2],
    effects: [Defense skill. User gains +8 Charge count]
  ), (
    name: [Slippery tail], cost: [2],
    effects: [Dodge skill. On dodge, gains 1 charge count and restore 1 light. Can consume 3 charge count to gain +1 aggro (attracts attacks) (repeatable)]
  ), (
    name: [Kingless and unbound], cost: [4],
    effects: [Unopposed attack. Inflicts 5 bleed. For each 10 charge count on self, consume 10 charge count and recycle attack]
  ), ),

  notes: (),
)

#let Kali = (
  name:        [Kali],
  origin:      [Backstreets of district 12],
  workHistory: [Color Fixer],
  rank:        [EX],

  health:  [200 / 200], atkp:  [7],
  stagger: [56 / 56], defp:  [7],
  sanity:  [30 / 30], dodgp: [5],
  light:   [9 / 9], level: [17],

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
    effects: [If this did more than 8 damage, restore 3 light and reduce next cost by 1]
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