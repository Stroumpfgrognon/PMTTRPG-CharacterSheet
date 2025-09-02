#let print_blank = true

#let character = (
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
    "Gebura's Prowess - Gets 1 power up for every 2 speed difference, up to 5",
    "The Red Mist - All dice gains 2 power"
  ),
)

// #list.len()
// #list.at(1)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#import "elements.typ":*
#if print_blank {
  character = empty_character
}
#set page(margin: 0cm)
#set text(size: 15pt)
#set page(background: image("PMTTRPG_report_recto.png"))
#let backgroundTop = 77.5pt
#place(dx: 32pt, dy: backgroundTop, Name(character.name))
#place(dx: 174pt, dy: backgroundTop, Origin(character.origin))
#place(dx: 330pt, dy: backgroundTop, Work(character.workHistory))
#place(dx: 498pt, dy: backgroundTop, Rank(character.rank))

#let stats1Left = 33pt
#let stats3Left = 100%-39.9pt-24pt-8pt
#let stats13Top = 145pt
#let stats13Dy = 60.5pt
#place(dx: stats1Left, dy: stats13Top + 0*stats13Dy, CalculatedStats( character.at("health")))
#place(dx: stats1Left, dy: stats13Top + 1*stats13Dy, CalculatedStats( character.at("stagger")))
#place(dx: stats1Left, dy: stats13Top + 2*stats13Dy, CalculatedStats( character.at("sanity")))
#place(dx: stats1Left, dy: stats13Top + 3*stats13Dy, CalculatedStats(character.at("light")))
#place(dx: stats3Left, dy: stats13Top + 0*stats13Dy, CalculatedStats( character.at("atkp")))
#place(dx: stats3Left, dy: stats13Top + 1*stats13Dy, CalculatedStats( character.at("defp")))
#place(dx: stats3Left, dy: stats13Top + 2*stats13Dy, CalculatedStats( character.at("dodgp")))
#place(dx: stats3Left, dy: stats13Top + 3*stats13Dy, CalculatedStats(character.at("level")))

#let stats2Left = 120pt
#let stats2Top = 209pt
#let stats2Dx = 135pt
#let stats2Dy = 141.5pt
#place(dx: stats2Left + 0*stats2Dx, dy: stats2Top + 0*stats2Dy, Stat(character.at("fortitude")))
#place(dx: stats2Left + 1*stats2Dx, dy: stats2Top + 0*stats2Dy, Stat(character.at("prudence")))
#place(dx: stats2Left + 2*stats2Dx, dy: stats2Top + 0*stats2Dy, Stat(character.at("justice")))
#place(dx: stats2Left + 0*stats2Dx, dy: stats2Top + 1*stats2Dy, Stat(character.at("charm")))
#place(dx: stats2Left + 1*stats2Dx, dy: stats2Top + 1*stats2Dy, Stat(character.at("insight")))
#place(dx: stats2Left + 2*stats2Dx, dy: stats2Top + 1*stats2Dy, Stat(character.at("temperance")))

#let combatLeft = 79pt
#let combatTop = 439pt
#let combatDx = 84.5pt
#let combatDy = 39.5pt
#place(dx: 85pt, dy: 405pt, ArmorName(character.at("outfit")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 0*combatDy, ArmorStat(character.at("icon1")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 1*combatDy, ArmorStat(character.at("icon2")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 2*combatDy, ArmorStat(character.at("icon3")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 0*combatDy, ArmorStat(character.at("icon4")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 1*combatDy, ArmorStat(character.at("icon5")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 2*combatDy, ArmorStat(character.at("icon6")))
#place(dx: 33pt, dy: 573pt, ArmorEffects(character.at("effects")))

#let weaponsLeft = 235pt
#let weaponsTop = 429pt
#let weaponsDx = 86.5pt
#let weaponsDy = 137pt
#let i = 0
#let weapons = character.at("weapons")
#while i < weapons.len() {
  let weapon = weapons.at(i)
  let y = calc.div-euclid(i, 2)
  let x = calc.rem-euclid(i, 2) * 2
  place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy*y + -3pt, WeaponName(weapon.at("name")))
  place(dx: weaponsLeft + weaponsDx * x + 113pt, dy: weaponsTop + weaponsDy*y + -3pt, WeaponRoll(weapon.at("power")))
  place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy*y + 27pt, WeaponDesc(weapon.at("effects")))
  i += 1
}

#place(dx: 30pt, dy: 740pt, Inventory(character.inventory))

#pagebreak()

#set page(background: image("PMTTRPG_report_verso.png"))

#let skillsLeft = 33pt
#let skillsTop = 48pt
#let skillsDy = 102pt
#let i = 0
#let skills = character.at("skills")
#while i < skills.len() {
  let skill = skills.at(i)
  place(dx: skillsLeft, dy: skillsTop + skillsDy * i -3.5pt, SkillName(skill.at("name")))
  place(dx: skillsLeft + 175pt, dy: skillsTop + skillsDy * i + -3.5pt, SkillCost(skill.at("cost")))
  place(dx: skillsLeft, dy: skillsTop + skillsDy * i + 23pt, SkillEffect(skill.at("effects")))
  i += 1
}

#place(dx: 31pt, dy: 700pt, Notes(character.at("notes")))
