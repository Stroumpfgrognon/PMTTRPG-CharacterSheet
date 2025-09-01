#let character = (
  name:        [Clark],
  origin:      [Unknown],
  workHistory: [Fixeur],
  rank:        [2],

  health:  [145], atkp:  [0],
  stagger: [125], defp:  [0],
  sanity:  [5], dodgp: [0],
  light:   [5], level: [0],

  fortitude: [8], prudence: [2], justice:    [2],
  charm:     [2], insight:  [2], temperance: [2],

  outfit: [Something that I found on the ground in june 985],
  icon1: [0.25], icon4: [1.75],
  icon2: [2], icon5: [5],
  icon3: [3], icon6: [6],
  effects: [#lorem(30)],

  weapons: ( (
    name: [weapon1 that I got on a du rat], power: [D6 + 10],
    effects: [AAA],
  ), (
    name: [weapon2], power: [2],
    effects: [BBB],
  ), (
    name: [weapon3], power: [3],
    effects: [#lorem(20)],
  ), (
    name: [weapon4], power: [4],
    effects: [DDD],
  ), ),

  inventory: [
    #lorem(80)
  ],

  skills: ( (
    name: [Tiantui Star's Blade [天退星刀]], cost: [99],
    effects: [#lorem(50)]
  ), (
    name: [skill2], cost: [2],
    effects: [B]
  ), (
    name: [skill3], cost: [3],
    effects: [C]
  ), (
    name: [skill4], cost: [4],
    effects: [D]
  ), ),

  notes: [
    #lorem(211)
  ],
)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#import "elements.typ":*
#set page(margin: 0cm)
#set text(size: 15pt)
#set page(background: image("PMTTRPG_report_recto.png"))
#let backgroundTop = 80pt
#place(dx: 32pt, dy: backgroundTop, character.at("name"))
#place(dx: 174pt, dy: backgroundTop, character.at("origin"))
#place(dx: 332pt, dy: backgroundTop, character.at("workHistory"))
#place(dx: 498pt, dy: backgroundTop, character.at("rank"))

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
  place(dx: weaponsLeft + weaponsDx * x + 118pt, dy: weaponsTop + weaponsDy*y + -3pt, WeaponRoll(weapon.at("power")))
  place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy*y + 27pt, WeaponDesc(weapon.at("effects")))
  i += 1
}

#place(dx: 30pt, dy: 740pt, Inventory(character.at("inventory")))

#pagebreak()

#set page(background: image("PMTTRPG_report verso.png"))

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

#place(dx: 32pt, dy: 498pt, Notes(character.at("notes")))
