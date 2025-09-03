#import "premade.typ":*
#import "elements.typ":DMGTYPE

#set page(paper:"a10")

#let character_attacked = Clark

#let damage_type = DMGTYPE.BLUNT

#let damage_sent = 24

/// CALCULATIONS BELOW ///

#let damage_dealt = damage_sent
#let stagger_dealt = damage_sent

#if damage_type==DMGTYPE.SLASH {
  damage_dealt=damage_dealt*character_attacked.slashHP
  stagger_dealt=damage_dealt*character_attacked.slashST
} else if damage_type==DMGTYPE.PIERCE {
    damage_dealt=damage_dealt*character_attacked.pierceHP
    stagger_dealt=damage_dealt*character_attacked.pierceST
  } else if damage_type==DMGTYPE.BLUNT{
    damage_dealt=damage_dealt*character_attacked.bluntHP
    stagger_dealt=damage_dealt*character_attacked.bluntST
  }


#character_attacked.name got \ #damage_dealt HP damage \ #stagger_dealt ST damage

