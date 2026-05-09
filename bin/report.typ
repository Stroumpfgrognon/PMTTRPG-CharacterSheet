// This file defines the report template and places the data on the sheet background image

#let report(sheet, character, ego-unlocked, auto-calculate-stats, prioritize-written-stats) = {
  [
    #import "elements.typ": *

    #let source = "../Sheets/" + sheet + "/"

    #set page(margin: 0cm)
    #set text(size: 15pt)
    #set page(background: image(source + "report_front.png"))
    #let backgroundTop = 77.5pt
    #let rank = getCharacterStat(character, "rank")
    #place(dx: 32pt, dy: backgroundTop, Name(getCharacterStat(character, "name")))
    #place(dx: 174pt, dy: backgroundTop, Origin(getCharacterStat(character, "origin")))
    #place(dx: 330pt, dy: backgroundTop, Work(getCharacterStat(character, "workHistory")))

    #let stats2Left = 120pt
    #let stats2Top = 209pt
    #let stats2Dx = 135pt
    #let stats2Dy = 141.5pt
    #place(dx: stats2Left + 0 * stats2Dx, dy: stats2Top + 0 * stats2Dy, Stat(getCharacterStat(character, "fortitude")))
    #place(dx: stats2Left + 1 * stats2Dx, dy: stats2Top + 0 * stats2Dy, Stat(getCharacterStat(character, "prudence")))
    #place(dx: stats2Left + 2 * stats2Dx, dy: stats2Top + 0 * stats2Dy, Stat(getCharacterStat(character, "justice")))
    #place(dx: stats2Left + 0 * stats2Dx, dy: stats2Top + 1 * stats2Dy, Stat(getCharacterStat(character, "charm")))
    #place(dx: stats2Left + 1 * stats2Dx, dy: stats2Top + 1 * stats2Dy, Stat(getCharacterStat(character, "insight")))
    #place(dx: stats2Left + 2 * stats2Dx, dy: stats2Top + 1 * stats2Dy, Stat(getCharacterStat(character, "temperance")))

    #let stats1Left = 33pt
    #let stats3Left = 100% - 39.9pt - 24pt - 8pt
    #let stats13Top = 145pt
    #let stats13Dy = 60.5pt

    #let statsum = (
      character.at("fortitude")
        + character.at("prudence")
        + character.at("justice")
        + character.at("charm")
        + character.at("insight")
        + character.at("temperance")
    )
    #let health = getCharacterStat(character, "health")
    #let stagger = getCharacterStat(character, "stagger")
    #let sanity = getCharacterStat(character, "Sanity")
    #let light = getCharacterStat(character, "Light")
    #let atkp = getCharacterStat(character, "atkp")
    #let defp = getCharacterStat(character, "defp")
    #let dodgp = getCharacterStat(character, "dodgp")
    #let level = getCharacterStat(character, "level")

    #if auto-calculate-stats {
      if (type(statsum) == int) {
        rank = calc.floor(statsum / 6)
        level = statsum / 2 - 3
        if (not prioritize-written-stats or not is_in_dict("health", character)) {
          health = 64 + (character.fortitude * 8) + rank * 32
        }
        if (not prioritize-written-stats or not is_in_dict("stagger", character)) {
          stagger = 20 + (character.charm * 4) + rank * 4
        }
        if (not prioritize-written-stats or not is_in_dict("Sanity", character)) {
          sanity = 15 + (character.prudence * 3)
        }
        if (not prioritize-written-stats or not is_in_dict("Light", character)) {
          light = 3 + rank
        }
        if (not prioritize-written-stats or not is_in_dict("atkp", character)) {
          atkp = rank
        }
        if (not prioritize-written-stats or not is_in_dict("defp", character)) {
          defp = character.temperance
        }
        if (not prioritize-written-stats or not is_in_dict("dodgp", character)) {
          dodgp = character.insight
        }
        if (rank >= 6) {
          rank = "EX"
        }
      }
    }

    #place(dx: stats1Left, dy: stats13Top + 0 * stats13Dy, CalculatedStats(health))
    #place(dx: stats1Left, dy: stats13Top + 1 * stats13Dy, CalculatedStats(stagger))
    #place(dx: stats1Left, dy: stats13Top + 2 * stats13Dy, CalculatedStats(sanity))
    #place(dx: stats1Left, dy: stats13Top + 3 * stats13Dy, CalculatedStats(light))
    #place(dx: stats3Left, dy: stats13Top + 0 * stats13Dy, CalculatedStats(atkp))
    #place(dx: stats3Left, dy: stats13Top + 1 * stats13Dy, CalculatedStats(defp))
    #place(dx: stats3Left, dy: stats13Top + 2 * stats13Dy, CalculatedStats(dodgp))
    #place(dx: stats3Left, dy: stats13Top + 3 * stats13Dy, CalculatedStats(level))

    #place(dx: 498pt, dy: backgroundTop, Rank(rank))

    #let combatLeft = 79pt
    #let combatTop = 439pt
    #let combatDx = 84.5pt
    #let combatDy = 39.5pt
    #place(dx: 85pt, dy: 405pt, ArmorName(character.at("outfit")))
    #place(dx: combatLeft + 0 * combatDx, dy: combatTop + 0 * combatDy, ArmorStat(character.at("slashHP")))
    #place(dx: combatLeft + 0 * combatDx, dy: combatTop + 1 * combatDy, ArmorStat(character.at("pierceHP")))
    #place(dx: combatLeft + 0 * combatDx, dy: combatTop + 2 * combatDy, ArmorStat(character.at("bluntHP")))
    #place(dx: combatLeft + 1 * combatDx, dy: combatTop + 0 * combatDy, ArmorStat(character.at("slashST")))
    #place(dx: combatLeft + 1 * combatDx, dy: combatTop + 1 * combatDy, ArmorStat(character.at("pierceST")))
    #place(dx: combatLeft + 1 * combatDx, dy: combatTop + 2 * combatDy, ArmorStat(character.at("bluntST")))
    #place(dx: 32pt, dy: 573pt, ArmorEffects(character.at("effects")))

    #let weaponsLeft = 235pt
    #let weaponsTop = 429pt
    #let weaponsDx = 86.5pt
    #let weaponsDy = 137pt
    #let weapons = character.at("weapons")
    #for i in range(weapons.len()) {
      let weapon = weapons.at(i)
      let y = calc.div-euclid(i, 2)
      let x = calc.rem-euclid(i, 2) * 2
      place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy * y + -3pt, WeaponName(weapon.at("name")))
      place(dx: weaponsLeft + weaponsDx * x + 113pt, dy: weaponsTop + weaponsDy * y + -3pt, WeaponRoll(
        weapon.at("power"),
      ))
      place(dx: weaponsLeft + weaponsDx * x, dy: weaponsTop + weaponsDy * y + 27pt, WeaponDesc(weapon.at("effects")))
    }

    #place(dx: 30pt, dy: 740pt, Inventory(character.inventory))

    #pagebreak()

    #let verso = ""

    #let egoVersion = ego-unlocked and is_in_dict("ego", character)

    #if egoVersion {
      verso = "_unlocked.png"
    } else {
      verso = ".png"
    }

    #set page(background: image(source + "report_back" + verso))

    #if egoVersion {
      let egoTitleTop = 26pt
      let egoLeft = 319pt
      let egoPassiveTop = 147pt
      let egoSkillTop = 298pt
      place(dx: egoLeft -2pt, dy: egoTitleTop, character.ego.nameplate)
      place(dx: egoLeft, dy: egoPassiveTop, EgoPassive(character.ego.passives))
      for i in range(character.ego.skills.len()) {
        let skill = character.ego.skills.at(i)
        let placeLeft = egoLeft
        let placeTop = egoSkillTop + 118.5pt * calc.quo(i, 2)
        if calc.rem(i, 2) == 1 {
          placeLeft = egoLeft + 128pt
          placeTop = egoSkillTop + 119pt * (calc.quo(i, 2) + 1) - 119pt
        }
        place(dx: placeLeft, dy: placeTop, EGOSkillName(skill.name))
        place(dx: placeLeft + 86.5pt, dy: placeTop, EGOSkillCost(skill.cost))
        place(dx: placeLeft, dy: placeTop + 23pt, EGOSkillEffect(skill.effects))
      }
    }

    #let skillsLeft = 33pt
    #let skillsTop = 48pt
    #let skillsDy = 102pt
    #let skills = character.at("skills")
    #for i in range(character.skills.len()) {
      let skill = skills.at(i)
      place(dx: skillsLeft, dy: skillsTop + skillsDy * i - 3.5pt, SkillName(skill.at("name")))
      place(dx: skillsLeft + 175pt, dy: skillsTop + skillsDy * i + -3.5pt, SkillCost(skill.at("cost")))
      place(dx: skillsLeft, dy: skillsTop + skillsDy * i + 23pt, SkillEffect(skill.at("effects")))
      i += 1
    }


    #place(dx: 31pt, dy: 700pt, Notes(character.at("notes")))
  ]
}
