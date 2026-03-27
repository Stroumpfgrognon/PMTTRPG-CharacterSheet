#import "elements.typ": *

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
  Offensive: emph("Offensive"),
  Defensive: emph("Defensive"),
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

#let ROLL = (
  DiceMax: strong("Dice Max"),
  DicePower: strong("Dice Power"),
)

#let EFFECTS = (
  Rupture: strong("Rupture"),
  Bleed: strong("Bleed"),
  Burn: strong("Burn"),
  Tremor: strong("Tremor"),
  Smoke: strong("Smoke"),
  Frostbite: strong("Frostbite"),
  NormalRandom: [#strong("Rupture"), #strong("Bleed"), #strong("Burn"), #strong("Tremor") or #strong("Sinking") at random],
  Normal: [#strong("Rupture"), #strong("Bleed"), #strong("Burn"), #strong("Tremor")],
  Charge: strong("Charge"),
  Poise: strong("Poise"),
  Sinking: strong("Sinking"),
  Haste: strong("Haste"),
  Bind: strong("Bind"),
  Strength: strong("Strength"),
  Endurance: strong("Endurance"),
  Aggro: strong("Aggro"),
  ClashPower: strong("Clash Power"),
  Power: strong("Power"),
  Feeble: strong("Feeble"),
  Disarm: strong("Disarm"),
  Paralysis: strong("Paralysis"),
  Fragile: strong("Fragile"),
  StaggerFragile: strong("Stagger Fragile"),
  Light: strong("Light"),
  DeathriteHaste: strong("Deathrite[Haste]"),
  DeathriteFissure: strong("Deathrite[Fissure]"),
  StriderMao: strong("Strider[Mao]"),
  DeepChill: strong("Deep Chill"),
  Resilience: strong("Resilience"),
  Resistance: strong("Resistance"),
)

#let SPECIAL = (
  RegenHP: strong("Regen HP"),
  RegenSP: strong("Regen SP"),
  RegenST: strong("Regen ST"),
  PaddedClothing : strong("Padded Clothing") + [ (When Combat begins, gain 3N Temporary HP)],
  DamageResistance : strong("Damage Resistance") + [ (Reduce HP Damage and Stagger Damage taken from Attack by N (Max 3))],
  ComfyClothes : strong("Comfy Clothes") + [ (Gain +N to your Initiative Roll)],
  AdditionalBlock : strong("Additional Block"),
  AdditionalReaction : strong("Additional Reaction"),
  ExtraDamageType: strong("Extra Damage Type"),
  DarkFlame: strong("Dark Flame"),
  BrokenHeart: strong("Broken Heart"),
  Cauterize: strong("Cauterize"),
  FreezerBurn: strong("Freezer Burn"),
  SmokeBurn: strong("Smoke-Burn"),
  BurnPlus: strong("Burn+"),
  BleedPlus: strong("Bleed+"),
  BleedResistance: strong("Bleed Resistance"),
  BleedVigor: strong("Bleed Vigor") + [ (If the character has [2 + N] or more Bleed stacks, increase the Dice Power by N. If you have an effect of the same name on your Augment, increase the amount of Bleed required by 1.)],
  DelayedBleed: strong("Delayed Bleed") + [ (Apply N Bleed to the target next round. This is not affected by Bleed+.)],
  DoubleEdged: strong("Double Edged") + [ (On Clash Win, inflict 2 Bleed to the target. On Clash Lose, the character takes 2 Bleed.)],
  Hemorrhage: strong("Hemorrhage") + [ (Any Bleed on the target is not reduced the next N times it activates. This does apply to Bleed that activated as a result of this clash, and counts as one instance of activation. This also prevents Bleed from being reduced by Reduce Status or other effects that immediately activate Bleed. When immediately activating Bleed, do not halve Bleed and remove 1 stack of this effect.)],
  TendonSlice: strong("Tendon Slice") + [ (The next time the target takes non-forced movement, their Bleed activates.)],
  BleedBonus: strong("Bleed Bonus") + [ (If the target has [2 + N] or more Bleed stacks, increase the Dice Power by N)],
  VampiricGash: strong("Vampiric Gash") + [ (Restore HP equal to the amount of Bleed the target had at the time of clash.. If the target did not clash with this skill, any Bleed on the target is activated immediately, reducing by half as normal.)],
  TremorPlus: strong("Tremor+"),
  SinkingPause: strong("Sinking Pause"),
  SinkingDeluge: strong("Sinking Deluge"),
  TransferSinking: strong("Transfer Sinking"),
  AbsorbSinking: strong("Absorb Sinking"),
  FrostbitePlus: strong("Frostbite+"),
  Overspeed: strong("Overspeed"),
  AfterEffect: strong("After Effect"),
  Instant: strong("Instant"),
  LoweredGuard: strong("Lowered Guard"),
  SingleStrike: strong("Single Strike"),
  OvercomingCrisis: strong("Overcoming Crisis"),
  FashionableThreads: strong("Fashionable threads") + [ (Gain 2N Temporary SP on combat start)],
  MultiHit: strong("Multi-Hit")
    + [ (The Attack is replaced with N+1 Attacks with a -2 penalty to all Dice Power of the attacks.
      This stacks with any effects of the same name, to a max of 2 overall. Cannot be stacked with any other attack replacement.
      Clash [Result] effects only activate once based on the outcome of the First Clash. On Use effects only activate one time.
      Any User Dice Modification to these attacks is based on the conditions of the first Attack, regardless of effects present after the first clash (e.g. Bonus/Vigor activation))],
  Overheat: strong("Overheat")
    + [ (Increase the Dice Power by 2. The weapon that used the skill containing this effect becomes unusable for a turn. This skill can only be used on an attack with a ranged or thrown weapon.)],
  TremoringNerves: strong("Tremoring Nerves") + [ (On Tremor Burst, if the enemy had 4+ Tremor, the target takes no Stagger Damage from the burst, instead inflicting 2 Feeble and 2 Disarm to the target next round.)],
  TremorSlam: strong("Tremor Slam") + [ (On Tremor Burst, push the target back 1 square per 2 burst Tremor stacks, max N squares. If the target collides with a wall, they take Force Damage per unspent square of forced movement.)],
  TremorBoost: strong("Tremor Boost") + [ (On Clash Win, Tremor Burst. If the enemy had 4+ Tremor, deal an extra half of those stacks as additional Stagger Damage to both the target and the user.)],
  TremorReversal: strong("Tremor Reversal") + [ (On Tremor Burst, recover Stagger equivalent to the damage dealt by the Burst (Max 10).)],
  TremorShock: strong("Tremor Shock") + [ (On Tremor Burst, inflict 3 Bind to the target next round.)],
  TremorPause: strong("Tremor Pause") + [ (On Clash Win, do not Tremor Burst, and consider all currently active Tremor as instead applying next Round. It is no longer active for the given Round.)],
  SlipPast: strong("Slip Past") + [ (Swap places with the target. This movement does not provoke Opportunity Attacks for either the character or the target.)],
  IncreaseCritical : strong("Increase Critical"),
  CriticalConversion : strong("Critical Conversion") + [ (If the character would have 10 Poise as a result of this clash, reduce Poise to 1 and increase Critical on character by 1. This applies before rolling to Critically Hit.)],
  CriticalDamageUp : strong("Critical DMG +") + [ (Increase the damage dealt by critical hits by 3N.)],
  InstantCrit : strong("Instant Crit") + [ ([Gain Poise] and [Increase Critical] from other Effects and this Skill are applied before rolling to Critically Hit)],
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
  Offensive: text(fill: red, emph("Offensive skill")),
  Block: text(fill: rgb(0, 128, 0), emph("Block skill")),
  Dodge: text(fill: blue, emph("Dodge skill")),
  OnPlay: text(fill: purple, emph("On Play skill")),
)

#let WEAPON = (
  MeleeSmall: emph[[M] Small],
  MeleeMedium: emph[[M] Medium],
  MeleeLong: emph[[M] Long],
  MeleeSturdy: emph[[M] Sturdy],
  RangedLowCal: emph[[R] Low Caliber],
  RangedHighCal: emph[[R] High Caliber],
  RangedReactive: emph[[R] Reactive],
  RangedHybrid: emph[[M/R] Hybrid],
  MeleeVersatile: emph[[M] Versatile],
  RangedRecoil: emph[[R] Recoil],
  RangedInnate: emph[[M/R] Innate],
  OneHanded: emph("One Handed"),
  TwoHanded: emph("Two Handed"),
  OffensiveOne: emph("Offensive One Handed"),
  OffensiveTwo: emph("Offensive Two Handed"),
  DefensiveOne: emph("Defensive One Handed"),
  DefensiveTwo: emph("Defensive Two Handed"),
)

#let AMMO = (
  Burning: [#emph("Flame Ammunition") : #ClashW(Inflict(EFFECTS.Burn,2))],
  Frost: [#emph("Frost Bullets") : #ClashW(Inflict((EFFECTS.Paralysis,2),(EFFECTS.Disarm,2)))],
  ArmorPiercing: [#emph("Armor Piercing Bullets") : Enemy Power -1],
) 


#let AUGMENT = (
  FirstStrike: emph("First Strike") + [ (In the first round of combat, gain N Offensive & Defensive Dice Power Up. (Max 3))],
  Reposition: emph("Reposition") + [ (Once per combat, you may move up to N SQRs without provoking Opportunity Attacks. This movement can be spread across multiple instances.)],
  Momentum: emph("Momentum") + [ (If you do a Melee Attack after moving 3 squares in a straight line, on Clash Win you do +N HP Damage for each square moved after the third. (Max. 20 overall HP Damage))],
  CavalryCharge: emph("Cavalry Charge") + [ (If you do a Melee Attack Action immediately after moving 3 or more Squares in a straight line, the enemy clash is rolled with Disadvantage.)],
  BloodCycler: strong("Blood Cycler") + [ (Whenever a character within 3 SQRs of the character (not self) procs an instance of Bleed, recover 2 HP.)],
  BleedVigor: strong("Bleed Vigor") + [ (Gain 1 Offensive Dice Power Up for every 2 Bleed the character has at the moment of attack. (Max of 3 Dice Power Up))],
)

#let WeaponEffectDesc(effects) = {
  let res = []
  let descs = []
  let search = WEAPON.values()
  for i in range(effects.len()) {
    if i > 0 {
      res = res + [, ]
    }
    let effect = effects.at(i)
    let desc = ""
    if (effect == WEAPON.MeleeSmall) {
      desc = "+1 Counter Reaction you must do with this weapon (stackable)"
    } else if (effect == WEAPON.MeleeMedium) {
      desc = "+2 Dice Max"
    } else if (effect == WEAPON.MeleeLong) {
      desc = "Your Melee Attack Range is 2 Squares. On Clash Win with this weapon against an adjacent target, you may choose to move the target 1 SQR in any direction on the ground. This movement does not proc Force Damage or Opportunity Attacks. Additionally, you gain +1 to your Throwing Range with this weapon."
    } else if (effect == WEAPON.MeleeSturdy) {
      desc = "+1 Block Reaction (stackable)"
    } else if (effect == WEAPON.RangedLowCal) {
      desc = "You don’t consume your remaining movement when making a Ranged Attack. You may make Opportunity Attacks with this weapon; your weapon is treated as having a range of 2 Squares for this purpose. "
    } else if (effect == WEAPON.RangedHighCal) {
      desc = "+2 Dice Max"
    } else if (effect == WEAPON.RangedReactive) {
      desc = "If an ally inside the halved range of this Weapon gets attacked, you can spend a reaction to Counter it with this Weapon. This attack is incompatible with any Attack Replacement effects. On Clash Win, the attack is stopped by your clash, and damage applies as normal. On Clash Lose, the Attack repeats with the same roll, targeting the ally. The ally is still able to react to this. Clash Win/Lose effects apply as normal in both cases.
"
    } else if (effect == WEAPON.RangedHybrid) {
      desc = "You can choose to make either a Melee or Ranged Attack with this weapon, decided before the clash is rolled. Incompatible Hand Properties do not apply their bonuses, and bullets are still consumed as normal for Ranged Attacks. [M] and [R] exclusive effects also do not take effect if incompatible.
"
    } else if (effect == WEAPON.MeleeVersatile) {
      desc = "At the start of your turn, you may change this weapon between Offensive and Defensive, maintaining Handedness."
    } else if (effect == WEAPON.RangedRecoil) {
      desc = "After making an Attack/Counter with this weapon, you may move 2 SQR in any direction, ignoring Opportunity Attacks. On Clash Win with this weapon, you may also apply this effect as Forced Movement to the target."
    } else if (effect == WEAPON.RangedInnate) {
      desc = "This Weapon may use an exclusive Skill of the Combat Part's Rank, outside of the character's normal pool of skills."
    } else if (effect == WEAPON.RangedHybrid) {
      desc = "You can choose to make either a Melee or Ranged Attack with this weapon, decided before the clash is rolled. Incompatible Hand Properties do not apply their bonuses, and bullets are still consumed as normal for Ranged Attack. [M] and [R] exclusive effects also do not take effect if incompatible.
"
    } else if (effect == WEAPON.OffensiveOne) {
      desc = "+1 Dice Power. +1 Reaction if not Dual Wielding (does not stack)"
    } else if (effect == WEAPON.OffensiveTwo) {
      desc = "+2 EP, +2 Dice Power"
    } else if (effect == WEAPON.DefensiveOne) {
      desc = "When you Attack or Counter with this weapon and the enemy is clashing offensively, after seeing the result of the clash, you may spend a Block or Counter reaction to treat your result as a Block, still applying Weapon Clash Win and Clash Lose Effects as normal. +1 Reaction if not Dual Wielding (does not stack)"
    } else if (effect == WEAPON.DefensiveTwo) {
      desc = "+2 EP. While taking the Protect Action, after you resolve a Clash initiated by an opposing target, you may make an Attack Action with this weapon against that target for no cost. The enemy may only react with Block or Evade. This benefit may only activate once per ally you intercept a Clash for per round. The user does not count as an ally for this benefit."
    }
    if (desc != "") {
      descs = descs + [+ #desc]
    }
    res = res + [#effect]
  }
  res + descs
}
