#let character = (
  name:        [Clark],
  origin:      [Unknown],
  workHistory: [Fixeur],
  rank:        [2],

  health:  [5], atkp:  [0],
  stagger: [5], defp:  [0],
  sanity:  [5], dodgp: [0],
  light:   [5], level: [0],

  fortitude: [2], prudence: [2], justice:    [2],
  charm:     [2], insight:  [2], temperance: [2],

  outfit: [Something],
  icon1: [1], icon4: [4],
  icon2: [2], icon5: [5],
  icon3: [3], icon6: [6],
  effects: [Something],

  weapons: ( (
    name: [weapon1], power: [1],
    effects: [AAA],
  ), (
    name: [weapon2], power: [2],
    effects: [BBB],
  ), (
    name: [weapon3], power: [3],
    effects: [CCC],
  ), (
    name: [weapon4], power: [4],
    effects: [DDD],
  ), ),

  inventory: [
    items times mites
  ],

  skills: ( (
    name: [skill1], cost: [1],
    effects: [A]
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
    NnNnN
  ],
)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(margin: 0cm)
#set text(size: 15pt)
#set page(background: image("PMTTRPG_report_recto.png"))
#let backgroundTop = 80pt
#place(dx: 32pt, dy: backgroundTop, character.at("name"))
#place(dx: 174pt, dy: backgroundTop, character.at("origin"))
#place(dx: 332pt, dy: backgroundTop, character.at("workHistory"))
#place(dx: 498pt, dy: backgroundTop, character.at("rank"))

#let stats1Left = 39.9pt
#let stats3Left = 100%-39.9pt-24pt
#let stats13Top = 146.5pt
#let stats13Dy = 60.5pt
#place(dx: stats1Left, dy: stats13Top + 0*stats13Dy, text(size: 45pt, character.at("health")))
#place(dx: stats1Left, dy: stats13Top + 1*stats13Dy, text(size: 45pt, character.at("stagger")))
#place(dx: stats1Left, dy: stats13Top + 2*stats13Dy, text(size: 45pt, character.at("sanity")))
#place(dx: stats1Left, dy: stats13Top + 3*stats13Dy, text(size: 45pt, character.at("light")))
#place(dx: stats3Left, dy: stats13Top + 0*stats13Dy, text(size: 45pt, character.at("atkp")))
#place(dx: stats3Left, dy: stats13Top + 1*stats13Dy, text(size: 45pt, character.at("defp")))
#place(dx: stats3Left, dy: stats13Top + 2*stats13Dy, text(size: 45pt, character.at("dodgp")))
#place(dx: stats3Left, dy: stats13Top + 3*stats13Dy, text(size: 45pt, character.at("level")))

#let stats2Left = 157pt
#let stats2Top = 211.5pt
#let stats2Dx = 135pt
#let stats2Dy = 141.5pt
#place(dx: stats2Left + 0*stats2Dx, dy: stats2Top + 0*stats2Dy, text(character.at("fortitude")))
#place(dx: stats2Left + 1*stats2Dx, dy: stats2Top + 0*stats2Dy, text(character.at("prudence")))
#place(dx: stats2Left + 2*stats2Dx, dy: stats2Top + 0*stats2Dy, text(character.at("justice")))
#place(dx: stats2Left + 0*stats2Dx, dy: stats2Top + 1*stats2Dy, text(character.at("charm")))
#place(dx: stats2Left + 1*stats2Dx, dy: stats2Top + 1*stats2Dy, text(character.at("insight")))
#place(dx: stats2Left + 2*stats2Dx, dy: stats2Top + 1*stats2Dy, text(character.at("temperance")))

#let combatLeft = 79pt
#let combatTop = 439pt
#let combatDx = 84.5pt
#let combatDy = 39.5pt
#place(dx: 85pt, dy: 407pt, text(character.at("outfit")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 0*combatDy, text(size: 25pt, character.at("icon1")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 1*combatDy, text(size: 25pt, character.at("icon2")))
#place(dx: combatLeft + 0*combatDx, dy: combatTop + 2*combatDy, text(size: 25pt, character.at("icon3")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 0*combatDy, text(size: 25pt, character.at("icon4")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 1*combatDy, text(size: 25pt, character.at("icon5")))
#place(dx: combatLeft + 1*combatDx, dy: combatTop + 2*combatDy, text(size: 25pt, character.at("icon6")))
#place(dx: 33pt, dy: 573pt, text(character.at("effects")))

#let weaponsLeft = 235pt
#let weaponsTop = 428pt
#let weaponsDx = 86.5pt
#let weaponsDy = 137pt
#let i = 0
#let weapons = character.at("weapons")
#while i < weapons.len() {
  let weapon = weapons.at(i)
  let y = calc.div-euclid(i, 2)
  let x = calc.rem-euclid(i, 2) * 2
  place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy*y, text(weapon.at("name")))
  place(dx: weaponsLeft + weaponsDx * x + 129pt, dy: weaponsTop + weaponsDy*y, text(weapon.at("power")))
  place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy*y + 27pt, text(weapon.at("effects")))
  i += 1
}

#place(dx: 30pt, dy: 740pt, text(character.at("inventory")))

#pagebreak()

#set page(background: image("PMTTRPG_report verso.png"))

#let skillsLeft = 33pt
#let skillsTop = 48pt
#let skillsDy = 102pt
#let i = 0
#let skills = character.at("skills")
#while i < skills.len() {
  let skill = skills.at(i)
  place(dx: skillsLeft, dy: skillsTop + skillsDy * i, text(skill.at("name")))
  place(dx: skillsLeft + 203pt, dy: skillsTop + skillsDy * i, text(skill.at("cost")))
  place(dx: skillsLeft, dy: skillsTop + skillsDy * i + 27pt, text(skill.at("effects")))
  i += 1
}

#place(dx: 32pt, dy: 498pt, text(character.at("notes")))
