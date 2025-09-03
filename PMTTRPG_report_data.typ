#import "premade.typ":*

#let print_blank = false

#let character = Diane

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
#place(dx: stats1Left, dy: stats13Top + 2*stats13Dy, CalculatedStats( character.at("Sanity")))
#place(dx: stats1Left, dy: stats13Top + 3*stats13Dy, CalculatedStats(character.at("Light")))
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
