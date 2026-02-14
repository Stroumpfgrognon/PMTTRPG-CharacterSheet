#import "keywords.typ": ATKTYPE

#let damage_calc(character_attacked, damage_type, damage_sent) = {
  let damage_dealt = damage_sent
  let stagger_dealt = damage_sent

  if damage_type == ATKTYPE.Slash {
    damage_dealt = damage_dealt * character_attacked.slashHP
    stagger_dealt = stagger_dealt * character_attacked.slashST
  } else if damage_type == ATKTYPE.Pierce {
    damage_dealt = damage_dealt * character_attacked.pierceHP
    stagger_dealt = stagger_dealt * character_attacked.pierceST
  } else if damage_type == ATKTYPE.Blunt {
    damage_dealt = damage_dealt * character_attacked.bluntHP
    stagger_dealt = stagger_dealt * character_attacked.bluntST
  }
  return (damage_dealt, stagger_dealt)
}


#let full_damage_calc(character_attacked,damage_dealt) = {
  let dmg_slash = damage_calc(character_attacked, ATKTYPE.Slash, damage_dealt)
  let dmg_pierce = damage_calc(character_attacked, ATKTYPE.Pierce, damage_dealt)
  let dmg_blunt = damage_calc(character_attacked, ATKTYPE.Blunt, damage_dealt)
  show table.cell.where(x: 1): set text(fill: red)
  show table.cell.where(x: 2): set text(fill: yellow)
  show figure.caption: set text(size: 7pt, fill: white)
  set text(size:8pt)
  [#figure(table(
    stroke:gray,
    columns:(1fr,1fr,1fr),
    [*Type*],[*HP*],[*ST*],
    [#ATKTYPE.Slash],[#dmg_slash.at(0)],[#dmg_slash.at(1)],
    [#ATKTYPE.Pierce],[#dmg_pierce.at(0)],[#dmg_pierce.at(1)],
    [#ATKTYPE.Blunt],[#dmg_blunt.at(0)],[#dmg_blunt.at(1)],
  ), caption: [Damage calculation for \ #character_attacked.name ],
  supplement: [],
  numbering: none,
  )]
}