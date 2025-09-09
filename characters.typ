#import "elements.typ":(Hit,ClashW,ClashL,Gain,Inflict,EFFECTS,ATKTYPE,CondEffect,Use )

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

#let Clark = (
  name:        [Clark],
  origin:      [R-Corp's Nest],
  workHistory: [None],
  rank:        [2],

  health:  120, atkp:  2,
  stagger: 32, defp:  0,
  Sanity:  24, dodgp: 3,
  Light:   5, level: 3,

  fortitude: 4, prudence: 3, justice:    1,
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

#let Juline = (
  name:        [Juline],
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

  health:  [200 / 200], atkp:  7,
  stagger: [56 / 56], defp:  7,
  Sanity:  [30 / 30], dodgp: 5,
  Light:   [9 / 9], level: 17,

  fortitude: 10, prudence: 5, justice:    10,
  charm:     3, insight:  5, temperance: 7,

  outfit: [Kali's Raincoat],
  slashHP: 1, slashST: 1,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.5, bluntST: 0.5,
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
    effects: [#ATKTYPE.Blunt :: If this did more than 8 damage, reduce the next cost by 1]
  ), (
    name: [Spear], cost: [2],
    effects: [#ATKTYPE.Pierce :: If this did more than 8 damage, reduce the next cost by 1]
  ),(
    name: [Level Slash], cost: [2],
    effects: [If this did more than 8 damage, restore 3 #EFFECTS.Light and reduce next cost by 1]
  ), (
    name: [Greater Split : Vertical], cost: [5],
    effects: [Rolls twice for clashing & damage]
  ),(
    name: [Greater Split : Horizontal], cost: [7],
    effects: [Mass summation. Rolls twice for clashing & damage]
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

#let MaoHeish = (
  name:        [Heishou Mahou],
  origin:      [H Corp's Nest],
  workHistory: [Protection],
  rank:        [3],

  health:  136, atkp:  3,
  stagger: 40, defp:  2,
  Sanity:  24, dodgp: 3,
  Light:   6, level: 6,

  fortitude: 4, prudence: 3, justice:    4,
  charm:     2, insight:  3, temperance: 2,

  outfit: [Mao Heishou Armor],
  slashHP: 1.25, slashST: 1.25,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.75, bluntST: 0.75,
  effects: [- Take advantage : Gain 1 Haste next turn on clash win
  - Variable defense : 0.5/1/2 for alternative],

  weapons: ((
    name: [Mao katana sword (Slash)], power: [D12],
    effects: [- #Hit(Inflict(EFFECTS.Rupture,2))],
  ),),

  inventory: (),

  skills: ( ( // name, cost, effects
    name: [Pursuit], cost: [0],
    effects: [
      #CondEffect([Target has 2+ #EFFECTS.Rupture], [#EFFECTS.ClashPower +1])
    - #Hit[#Inflict(EFFECTS.Rupture,2)]
    - Restore 1 #EFFECTS.Light
    ]
  ), (
    name: [Overwhelm], cost: [2],
    effects: [This skill doesn't trigger #EFFECTS.Rupture.
    - #Hit(Inflict(EFFECTS.Rupture,1))
    - Recycle this attack Speed / 4 times]
  ),(
    name: [Umbra Strike], cost: [3],
    effects: [#CondEffect([Self is faster than target],[+1 #EFFECTS.Power for every 2 Speed difference (max 3)])
    #CondEffect([Target has 4+ #EFFECTS.Rupture],[Gain +1 #EFFECTS.Power])
    - #ClashW([#Inflict(EFFECTS.Rupture,2)])
    - #Hit([#Inflict((EFFECTS.Rupture,EFFECTS.DeathriteHaste),(5,3)) and #Gain(EFFECTS.StriderMao,3)])
    // Inflict 5 #EFFECTS.Rupture and 1 #EFFECTS.DeathriteHaste
    ]
  ),(
    name: [Windup], cost: [0],
    effects: [Counter skill (Dodge)
    - #ClashW(Gain(EFFECTS.Haste,2))]
  ),
  ),

  notes: ([Vigor[Mao] - Inflict +1 #EFFECTS.Rupture to ennemies with lower speed],[Strider[Mao] - On hit with ennemies with Deathrite[Haste], inflict +1 #EFFECTS.Rupture (3 times per turn)]),
)

#let Zilu = (
  name:        [Zilu],
  origin:      [H Corp's Nest],
  workHistory: [Pinky Member - Blade of The East],
  rank:        [5],

  health:  400, atkp:  5,
  stagger: 80, defp:  5,
  Sanity:  40, dodgp: 5,
  Light:   8, level: 12,

  fortitude: 6, prudence: 4, justice:    7,
  charm:     3, insight:  5, temperance: 5,

  outfit: [Zilu's Armor],
  slashHP: 1.25, slashST: 1.25,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.5, bluntST: 0.5,
  effects: [- Take advantage : Gain 1 Haste next turn on clash win],

  weapons: ((
    name: [Mao Enhanced katana sword], power: [D16],
    effects: [(Slash)
    - #Hit(Inflict(EFFECTS.Rupture,4))],
  ),(
    name: [Tianjiu Star's Blade (Slash)], power: [D100],
    effects: [(Slash)
    - #Hit(Inflict(EFFECTS.Rupture,50))],
  )),

  inventory: (),

  skills: ( ( // name, cost, effects
    name: [Startling Strike], cost: [0],
    effects: [
      #CondEffect([Target has 5+ #EFFECTS.Rupture], [#EFFECTS.ClashPower +1])
    - #Hit[#Inflict(EFFECTS.Rupture,3)]
    - Restore 2 #EFFECTS.Light
    ]
  ), (
    name: [Perforating kill], cost: [1],
    effects: [
      #CondEffect([Target has 5+ #EFFECTS.Rupture], [Power +1])
    - #Use(Gain(EFFECTS.StriderMao,3))
    - #Hit(Inflict(EFFECTS.Rupture,2))
    - #CondEffect([Target has #EFFECTS.DeathriteHaste],[Gain 1 Haste])]
  ),(
    name: [Etching Strike], cost: [2],
    effects: [
    #CondEffect([Target has 4+ #EFFECTS.Rupture],[Gain +1 #EFFECTS.Power])
    - #Hit(Inflict((EFFECTS.Rupture,EFFECTS.DeathriteHaste),(6,3)))
    ]
  ),(
    name: [Cursewrit Butcherblade - Blinkstep], cost: [4],
    effects: [Gain 1 #EFFECTS.Power for every 2 #EFFECTS.Rupture on target (max 10). If Target has #EFFECTS.DeathriteHaste, inflict +30% damage.
    - #Hit(Inflict(EFFECTS.Rupture,10))]
  ),(
    name: [Incomplete Seal Release: \<Tianjiu Star's Blade>], cost: [5],
    effects: [+20% bonus damage for every 2 Speed difference with Target (max 60%) \
    Gain 1 #EFFECTS.Power for every 2 #EFFECTS.Rupture on target (max 10) \
    Attacks with Tianjiu Star's Blade.
    - #Hit(Inflict((EFFECTS.Rupture,EFFECTS.DeathriteFissure),(7,3)))]
  ),(
    name: [Cursewrit], cost: [0],
    effects: [Counter skill (Dodge). If Target has #EFFECTS.DeathriteHaste, double #EFFECTS.Rupture infliction.
    - #Hit(Inflict(EFFECTS.Rupture,4))]
  ),
  ),

  notes: (
    [Vigor[Mao] - Inflict +1 #EFFECTS.Rupture to ennemies with lower speed],
    [Strider[Mao] - On hit with ennemies with Deathrite[Haste], inflict +1 #EFFECTS.Rupture (3 times per turn)],
    [Speed 3 - 3 more attacks per turn],[Dominator[Mao] - If Speed is greater than target by 2 or more, gain +1 #EFFECTS.Power],
    [Shin (心) Radiance - Gain 100 Shield on Turn Start, HP cannot get below 1 if attacked without Mang]),
)

#let Tri-Axe = (
  name:        [Tri-Axe Member],
  origin:      [H Corp's Backstreets],
  workHistory: [Syndicate work],
  rank:        [2],

  health:  80, atkp:  1,
  stagger: 30, defp:  1,
  Sanity:  15, dodgp: 1,
  Light:   5, level: 4,

  fortitude: 3, prudence: 3, justice:    2,
  charm:     3, insight:  2, temperance: 2,

  outfit: [Tri-Axe Suit],
  slashHP: 2, slashST: 2,
  pierceHP: 0.8, pierceST: 0.8,
  bluntHP: 1, bluntST: 1,
  effects: [],

  weapons: ((
    name: [Tri-Axe], power: [D8],
    effects: [#ATKTYPE.Slash \
      - #Hit(Inflict(EFFECTS.Bleed,2))],
  ),),

  inventory: (),

  skills: ( ( // name, cost, effects
    name: [Unmannerly Attack], cost: [0],
    effects: [
      #Use(Gain(EFFECTS.Haste,1))
      - #Hit(Inflict(EFFECTS.Bleed,2))
    ]
  ),( // name, cost, effects
    name: [Tendon Slice], cost: [2],
    effects: [
      #CondEffect([Speed higher than target],[ #EFFECTS.Power +2])
      #CondEffect([Target has 3+ #EFFECTS.Bleed],[ #EFFECTS.Power +1])
      #Use(Gain(EFFECTS.Haste,1))
      - #Hit(Inflict((EFFECTS.Bleed,EFFECTS.Bind),(4,2)))
    ]
  ),( // name, cost, effects
    name: [Messy Attack], cost: [3],
    effects: [
      #Use[At 7+ Speed : #EFFECTS.Power +1]\
      #Use[If target has 4+ #EFFECTS.Bleed : #EFFECTS.Power +1] \
      #ClashW([Inflict +4 #EFFECTS.Bleed])\
      - #Hit(Inflict(EFFECTS.Bleed,4))
    ]
  ),
  ),

  notes: ([Measured clashes : On _Clash Win_, #Gain(EFFECTS.Haste,2)],),
)

#let HCorpDefender = (
  name:        [H Corp Defender],
  origin:      [H Corp's Backstreets],
  workHistory: [Unknown],
  rank:        [1],

  health:  80, atkp:  1,
  stagger: 30, defp:  1,
  Sanity:  15, dodgp: 1,
  Light:   5, level: 4,

  fortitude: 1, prudence: 2, justice:    1,
  charm:     2, insight:  1, temperance: 1,

  outfit: [H Corp clothes],
  slashHP: 2, slashST: 2,
  pierceHP: 1, pierceST: 1,
  bluntHP: 0.8, bluntST: 0.8,
  effects: [],

  weapons: ((
    name: [Pudao], power: [D10],
    effects: [- #Hit(Inflict(EFFECTS.Paralysis,1))],
  ),),

  inventory: (),

  skills: ( ( // name, cost, effects
    name: [Slice], cost: [0],
    effects: [
      - #Hit(Inflict(EFFECTS.Bleed,1))
    ]
  ),( 
    name: [Muscle Wound], cost: [2],
    effects: [
      #CondEffect([3+ bleed on Target],[Power +1])
      - #Hit(Inflict((EFFECTS.Bleed,EFFECTS.Paralysis),(4,1)))
    ]
  ),( 
    name: [Swift Attack], cost: [3],
    effects: [
      #CondEffect([4+ bleed on Target],[Power +2])
      - #Hit(Inflict(EFFECTS.Bleed,4))
    ]
  ),(
    name: [Counter], cost: [0],
    effects: [
      Passive counter, gain 2 Shield HP for every debuff
      - #CondEffect([unit still has shield],[Inflict 1 #EFFECTS.Paralysis])
    ]
  )
  ),

  notes: ([Measured clashes : On _Clash Win_, #Gain(EFFECTS.Haste,2)],),
)
