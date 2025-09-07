#import "premade.typ": *
#import "elements.typ": ATKTYPE

#set page(paper: "a10", fill: black, margin: 0.1cm); #set text(fill: white, size: 9pt); #set align(center + horizon);

#let character_attacked = Kali

#let damage_type = ATKTYPE.Blunt

#let damage_sent = 112

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#let damage_dealt = damage_sent
#let stagger_dealt = damage_sent

#if damage_type == DMGTYPE.SLASH {
  damage_dealt = damage_dealt * character_attacked.slashHP
  stagger_dealt = stagger_dealt * character_attacked.slashST
} else if damage_type == DMGTYPE.PIERCE {
  damage_dealt = damage_dealt * character_attacked.pierceHP
  stagger_dealt = stagger_dealt * character_attacked.pierceST
} else if damage_type == DMGTYPE.BLUNT {
  damage_dealt = damage_dealt * character_attacked.bluntHP
  stagger_dealt = stagger_dealt * character_attacked.bluntST
}

#emph[#character_attacked.name] received \ #text(fill: red)[#damage_dealt HP] damage &\ #text(fill: yellow)[#stagger_dealt ST] damage

