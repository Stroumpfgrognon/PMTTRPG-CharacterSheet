#import "characters.typ": *
#import "bin/elements.typ": ATKTYPE

#set page(paper: "a10", fill: black, margin: 0.1cm); #set text(fill: white, size: 9pt); #set align(center + horizon);

#let character_attacked = Clark

#let damage_type = ATKTYPE.Slash

#let damage_sent = 5

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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

#let result = damage_calc(character_attacked, damage_type, damage_sent)

#emph[#character_attacked.name] received \ #text(fill: red)[#result.first() HP] damage &\ #text(fill: yellow)[#result.last() ST] damage

