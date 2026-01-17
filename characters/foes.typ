#import "../bin/elements.typ":(Hit,ClashW,ClashL,Gain,Inflict, Special, Recover,CondEffect,Use, Heads, Tails )
#import "../bin/keywords.typ": ATKTYPE, EFFECTS, WEAPONS, ARMOR, SPECIAL, BODY, SKILL, WEAPON
#import "../bin/functions.typ": bullet


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

  health:  70, atkp:  1,
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

#let RingPointillist = (
  name:        [Ring Pointillist Student],
  origin:      [I Corp's Backstreets],
  workHistory: [Ring member],
  rank:        [2],

  health:  96, atkp:  2,
  stagger: 40, defp:  3,
  Sanity:  21, dodgp: 2,
  Light:   5, level:3,

  fortitude: 1, prudence: 2, justice:    1,
  charm:     3, insight:  2, temperance: 3,

  outfit: [Ring Student garment],
  slashHP: 1, slashST: 1,
  pierceHP: 0.5, pierceST: 0.5,
  bluntHP: 2, bluntST: 2,
  effects: [],

  weapons: ((
    name: [Fighting Brush], power: [D12],
    effects: [- #WEAPONS.Medium, #WEAPONS.OneHand, #ATKTYPE.Pierce
      - #Hit(Inflict(EFFECTS.NormalRandom,3))
    ],
  ),),

  inventory: (),

  skills: ( ( // name, cost, effects
    name: [Paint Over], cost: [1],
    effects: [
      #CondEffect([Target has 6+ #EFFECTS.Bleed], [#EFFECTS.ClashPower +1])
      - #Heads(Inflict(EFFECTS.NormalRandom,2))
      - #Hit(Inflict(EFFECTS.Bleed,2))
    ]
  ),( 
    name: [Hematic Coloring], cost: [2],
    effects: [
      #Gain(EFFECTS.Power,1) for every 3 #EFFECTS.Bleed on target (max 3)
      - #Hit(Inflict((EFFECTS.Bleed,EFFECTS.NormalRandom),(1,2)))
      - If target has 3+ type of negative effects, #Hit(Inflict(EFFECTS.Bleed,2))
    ]
  ),( 
    name: [Sanguine Pointillism], cost: [3],
    effects: [
      #Gain(EFFECTS.Power,1) for every 3 #EFFECTS.Bleed on target (max 3)
      - 40% chance to recycle attack, +20% for every negative effect on target (max 2 recycle)
      - #Hit(Inflict((EFFECTS.Bleed,EFFECTS.NormalRandom),(1,2)))

    ]
  ),(
    name: [Beat the Brush (#ATKTYPE.Block)], cost: [1],
    effects: [
      #Gain(EFFECTS.Power,1) for every #EFFECTS.Bleed on target (max 10)
    ]
  )
  ),

  notes: ([#bullet[Assignment Evaluation][On clash win, in target has 4+ #EFFECTS.Bleed, heal 2 SP]],),
)

#let Verso = (
  name:        [Verso Dessendre],
  origin:      [I Corp's Nest],
  workHistory: [Ring Maestro],
  rank:        [3],

  health:  120, atkp:  3,
  stagger: 52, defp:  5,
  Sanity:  18, dodgp: 2,
  Light:   6, level: 6,

  fortitude: 3, prudence: 1, justice:   2,
  charm:     5, insight:  2, temperance: 5,

  outfit: [Verso's Clothes],
  slashHP: 0.75, slashST: 1,
  pierceHP: 0.75, pierceST: 1,
  bluntHP: 1, bluntST: 2,
  effects: [#ARMOR.Balanced],

  weapons: ((
    name: [Perfected Sword], power: [D10],
    effects: [- #WEAPONS.Hybrid, #WEAPONS.OneHand, #ATKTYPE.Pierce
      - #Hit(Inflict((EFFECTS.Bleed,EFFECTS.Burn),(2,2))) 
    ],
  ),(
    name: [Perfected Dagger], power: [D10],
    effects: [- #WEAPONS.Small, #WEAPONS.OneHand, #ATKTYPE.Slash
      - #Hit(Inflict(EFFECTS.NormalRandom,3))
    ],
  ),),

  inventory: ([10 Painted Ammo (#ATKTYPE.Pierce, #Hit(Inflict(EFFECTS.NormalRandom,2)))],),

  skills: ( ( // name, cost, effects
    name: [Painted truth], cost: [1],
    effects: [
      #Hit(Inflict(EFFECTS.NormalRandom,4))
    ]
  ),( 
    name: [Quick repair], cost: [2],
    effects: [
      #SPECIAL.BleedPlus 3 & #SPECIAL.BurnPlus 2\
       #ClashW(Inflict(SPECIAL.Cauterize,1))
    ]
  ),( 
    name: [Burn the Canvas], cost: [3],
    effects: [
      #SPECIAL.BurnPlus 3 \
      #Hit[#Special(SPECIAL.DarkFlame,1)]
    ]
  ),(
    name: [Beat the Brush - Verso (#ATKTYPE.Block)], cost: [1],
    effects: [
      #Gain(EFFECTS.Power,1) for every #EFFECTS.Bleed + #EFFECTS.Burn on target (max 10)
    ]
  )
  ),

  notes: ([#bullet[Desperate Mang][When knows his death is soon, unlocks one #SPECIAL.Mang, which gives #EFFECTS.Power] +3],[
  #bullet[Call of the void][Regenerates 1 Light per turn, SP is reduced by 2 per turn]],[
    #bullet[Desperation][On melee range, -2 #EFFECTS.Power]
  ]),
)

#let Verso-Miror = (
  name:        [Recto],
  origin:      [Disctrict 9 Backstreets's Ring Laboratory],
  workHistory: [Verso's Clone],
  rank:        [3],

  health:  120, atkp:  3,
  stagger: 52, defp:  5,
  Sanity:  18, dodgp: 2,
  Light:   6, level: 6,

  fortitude: 3, prudence: 1, justice:   2,
  charm:     5, insight:  2, temperance: 5,

  outfit: [Recto's Clothes],
  slashHP: 1, slashST: 1.25,
  pierceHP: 1, pierceST: 1.25,
  bluntHP: 0.75, bluntST: 1.25,
  effects: [#ARMOR.Balanced],

  weapons: ((
    name: [Mirrored Weapon], power: [???],
    effects: [ 
      All #WEAPONS.Melee #WEAPONS.Offensive
      - Pierre : #ATKTYPE.Slash, #WEAPONS.OneHand #WEAPONS.Small D10 - #Hit(Inflict(EFFECTS.Bleed,2)) ; -1 to any #EFFECTS.Power
      - Philip : #ATKTYPE.Slash, #WEAPONS.OneHand #WEAPONS.Medium D12 - #Hit(Inflict(EFFECTS.Burn,3))
      - Yan : #ATKTYPE.Blunt, #WEAPONS.TwoHand #WEAPONS.Long D10 - #Hit(Inflict(EFFECTS.Paralysis,1)) ; +1 to any #EFFECTS.Power
      - Argalia : #ATKTYPE.Pierce, #WEAPONS.TwoHand #WEAPONS.Medium D16 ; 
    ],
  ),),

  inventory: ([Mirror catalyst],),

  skills: ( ( // name, cost, effects
    name: [Pierre - Butcher], cost: [1],
    effects: [
      #Hit(Inflict(EFFECTS.Bleed, 4)) \
      Heal 5 Hp to self per bleed on target (max 10)
    ]
  ),( 
    name: [Philip - Burn], cost: [1],
    effects: [
      #SPECIAL.BurnPlus 2\
       #ClashW(Inflict(SPECIAL.Cauterize,1))
    ]
  ),( 
    name: [Yan - Idealize], cost: [2],
    effects: [
      #Hit[#Inflict((EFFECTS.Paralysis,EFFECTS.Fragile),(2,1))]
    ]
  ),( 
    name: [Argalia - Vibration], cost: [2],
    effects: [
      #Hit[Inflict 1 #strong("Vibration"), applying negative effects one more time before reducing count. Reduces by 1 at turn end.]
    ]
  ),( 
    name: [Argalia - Impromptu], cost: [4],
    effects: [
      #Hit[Inflict 3 #strong("Vibration"), #SPECIAL.Overspeed. #SPECIAL.AfterEffect 2.]
    ]
  ),(
    name: [Beat the Brush - Recto (#ATKTYPE.Block)], cost: [1],
    effects: [
      #Gain(EFFECTS.Power,1) for every different negative effect on target (max 10)
    ]
  )
  ),

  notes: ([#bullet[Refracted identity][At the end of each round, roll a D4 to choose identity between Pierre, Philip, Yan and Argalia. On swap, regenerate 3 Light.]
  ],[#bullet[Duty][Protects Verso at all cost]
  ],),
)

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
    effects: [#WEAPON.Offensive #WEAPON.MeleeShort #ATKTYPE.Pierce
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
    effects: [#SKILL.Defensive
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

#let Gamma = (
  name:        [Gamma],
  origin:      [???],
  workHistory: [Index Messenger],
  rank:        [],

  health:  [], atkp:  [],
  stagger: [], defp:  [],
  Sanity:  [], dodgp: [],
  Light:   [], level: [],

  fortitude: 3, prudence: 2, justice:    4,
  charm:     3, insight:  6, temperance: 6,

  outfit: [Gamma's fighting suit],
  slashHP: [0.75], slashST: [0.75],
  pierceHP: [1], pierceST: [1],
  bluntHP: [1], bluntST: [1.5],
  effects: [#ARMOR.Balanced
  - Slippery Material
  - Evade Power +1],

  weapons: ( (
    name: [Unlocking fists], power: [D10],
    effects: [#WEAPON.OneHanded \ #WEAPON.MeleeVersatile x2 #ATKTYPE.Blunt
    - Multi-hit
    - #Hit(Inflict(EFFECTS.Sinking,"N+1")) on self and others (depending on #SPECIAL.Unlock level)],
  ), (
    name: [Prescript sword], power: [2D8],
    effects: [#WEAPON.Offensive #WEAPON.TwoHanded  \ #WEAPON.MeleeLong #ATKTYPE.Slash
    - #Use(Inflict(EFFECTS.Sinking,4,self:true))
    - May only be used at #SPECIAL.Unlock 4],
  ),),

  inventory: (),

  skills: ( (
    name: [Fists of Volition], cost: [2],
    effects: [#SKILL.Offensive
    - #SPECIAL.BrokenHeart 2
    - #SPECIAL.Instant #EFFECTS.Sinking , #SPECIAL.SinkingDeluge ]
  ), (
    name: [My faith is my own], cost: [0],
    effects: [#SKILL.Dodge
      - #SPECIAL.SinkingPause]
  ), (
    name: [Chains of past sins], cost: [1],
    effects: [#SKILL.Defensive
    - #SPECIAL.AbsorbSinking 2
    - #SPECIAL.LoweredGuard]
  ), (
    name: [Weaving your fate], cost: [1],
    effects: [#SKILL.Offensive
      - #SPECIAL.TransferSinking 5]
  ),(
    name: [2.71828182846], cost: [1],
    effects: [#SKILL.Offensive
      - #ClashW(Inflict(EFFECTS.Sinking,4))]
  ), ),
  ego : (
      nameplate : "E.G.Os/ChildCityVolatile.png",
      passives:(
        [Every 2 different skills used, a chain drops from his weapons. This represents #SPECIAL.Unlock level. 
        - Max #strong("Unlock") is 4],
      ),
      skills:((
        name: [Will of the City], cost: [0],
        effects: [#SKILL.Defensive
          - Usable at Unlock 3 in a Panicked state
        - Fully restores Light and allows the use of Distorted Blade]
        ),(
        name: [Distorted Blade], cost: [5],
        effects: [#SKILL.Offensive
          - Mass attack
          - Summons the Prescript Sword
          - #SPECIAL.Delay
          - #SPECIAL.OvercomingCrisis]
        ),(
        name: [Omnious power], cost: [0],
        effects: [#SKILL.Offensive
        - #Recover(BODY.Sanity,-3), #Gain(EFFECTS.Strength,3)
          ]
        ),(
        name: [Cut the thread], cost: [0],
        effects: [#SKILL.Offensive
        - #SPECIAL.SingleStrike
        - #ClashW(Inflict(EFFECTS.Sinking,3,self:true))
        - #SPECIAL.SinkingDeluge
          ]
        ),
      ),
    ),

  notes: ([May use #SPECIAL.Shin once Emotion starts to increase],[Special Panic : The Will of the City.
  - Defensive dice lose 5 Power]),
)