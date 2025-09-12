#import "characters.typ": *
#import "bin/keywords.typ": ATKTYPE
#import "bin/functions.typ": damage_calc

#set page(paper: "a10", fill: black, margin: 0.1cm); #set text(fill: white, size: 9pt); #set align(center + horizon);

#let character_attacked = Clark

#let damage_type = ATKTYPE.Slash

#let damage_sent = 5

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#let result = damage_calc(character_attacked, damage_type, damage_sent)

#emph[#character_attacked.name] received \ #text(fill: red)[#result.first() HP] damage &\ #text(fill: yellow)[#result.last() ST] damage

