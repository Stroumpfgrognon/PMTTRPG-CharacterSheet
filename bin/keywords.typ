#let WEAPONS = (
  Melee: emph("Melee"),
  Ranged: emph("Ranged"),
  Magic: emph("Magic"),
  Small: emph("Small"),
  Medium: emph("Medium"),
  Long: emph("Long"),
  Sturdy: emph("Sturdy"),
  OneHand: emph("1 Handed"),
  TwoHand: emph("2 Handed"),
  LowCal: emph("Low Caliber"),
  HighCal: emph("High Caliber"),
  Reactive: emph("Reactive"),
  Hybrid: emph("Hybrid"),
  Offensive : emph("Offensive"),
  Defensive : emph("Defensive"),
)

#let ARMOR = (
  Armored: [#emph("Armored") : +1 to Block Dice Power. On Clash Win with Block, deal half of the roll OR the difference between rolls as Stagger Damage to the opponent, whichever is greater.],
  Swift: [#emph("Swift") : +1 to Evade Dice Power. On Clash Win with Evade, your Recycled Evade penalty only increments in values of -1, instead of -2.],
  Balanced: [#emph("Balanced") : +2 EP, +1 Maximum Light for the Character],
)

#let ATKTYPE = (
  Slash: emph("Slash"),
  Pierce: emph("Pierce"),
  Blunt: emph("Blunt"),
  Raw: emph("Raw"),
  Block: emph("Block"),
  Dodge: emph("Dodge"),
)

#let EFFECTS = (
  Rupture: strong("Rupture"),
  Bleed: strong("Bleed"),
  Burn: strong("Burn"),
  Tremor: strong("Tremor"),
  Smoke: strong("Smoke"),
  Frostbite: strong("Frostbite"),
  NormalRandom: [#strong("Rupture"), #strong("Bleed"), #strong("Burn"), #strong("Tremor") or #strong("Sinking") at random],
  Charge: strong("Charge"),
  Sinking: strong("Sinking"),
  Haste: strong("Haste"),
  Bind: strong("Bind"),
  Strength: strong("Strength"),
  Aggro: strong("Aggro"),
  ClashPower: strong("Clash Power"),
  Power: strong("Power"),
  Paralysis: strong("Paralysis"),
  Fragile: strong("Fragile"),
  Light: strong("Light"),
  DeathriteHaste: strong("Deathrite[Haste]"),
  DeathriteFissure: strong("Deathrite[Fissure]"),
  StriderMao: strong("Strider[Mao]"),
  DeepChill: strong("Deep Chill"),
  Resilience: strong("Resilience"),
)

#let SPECIAL = (
  DarkFlame: strong("Dark Flame"),
  BrokenHeart: strong("Broken Heart"),
  Cauterize: strong("Cauterize"),
  FreezerBurn: strong("Freezer Burn"),
  SmokeBurn: strong("Smoke-Burn"),
  BurnPlus: strong("Burn+"),
  BleedPlus: strong("Bleed+"),
  TremorPlus: strong("Tremor+"),
  SinkingPause: strong("Sinking Pause"),
  SinkingDeluge: strong("Sinking Deluge"),
  TransferSinking: strong("Transfer Sinking"),
  AbsorbSinking: strong("Absorb Sinking"),
  FrostbitePlus: strong("Frostbite+"),
  Overspeed : strong("Overspeed"),
  AfterEffect : strong("After Effect"),
  Instant: strong("Instant"),
  LoweredGuard: strong("Lowered Guard"),
  SingleStrike: strong("Single Strike"),
  OvercomingCrisis: strong("Overcoming Crisis"),
  Delay: strong("Delay"),
  Unlock: strong("Unlock"),
  Shin: strong("Shin (心)"),
  Mang: strong("Mang (望)"),
)

#let BODY = (
  Health: emph("Health"),
  Stagger: emph("Stagger"),
  Sanity: emph("Sanity"),
  Light: emph("Light"),
  Damage: emph("Damage"),
  StaggerDamage: emph("Stagger Damage"),
)


#let SKILL = (
  Offensive: text(fill:red,emph("Offensive skill")),
  Defensive: text(fill:rgb(0,128,0),emph("Defensive skill")),
  Dodge: text(fill:blue,emph("Dodge skill")),
)

#let WEAPON = (
  MeleeShort : emph[[M] Short],
  MeleeMedium : emph[[M] Medium],
  MeleeLong : emph[[M] Long],
  MeleeSturdy : emph[[M] Sturdy],
  RangedLowCal : emph[[R] Low Caliber],
  RangedHighCal : emph[[R] High Caliber],
  RangedReactive : emph[[R] Reactive],
  RangedHybrid : emph[[M/R] Hybrid],
  MeleeVersatile : emph[[M] Versatile],
  RangedRecoil : emph[[R] Recoil],
  RangedInnate : emph[[M/R] Innate],
  Offensive : emph("Offensive"),
  Defensive : emph("Defensive"),
  OneHanded: emph("One handed"),
  TwoHanded: emph("Two handed")
)