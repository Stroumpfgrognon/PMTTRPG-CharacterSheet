#import "characters.typ": *
#import "bin/elements.typ": diff_names, ATKTYPE
#import "calculator.typ": damage_calc

#let characters = (Eleonore, Clark, Diane, MaoHeish, MaoHeish)

#let icon = ([d6], [d8], [d10], [d12], [d20])

#let speed = (1,3,5,6,8)

#let damage_dealt = (5,7,9,11,10+25+33)
#let stagger_dealt = (3,4,5,6,5+15)

#let quick_calc = damage_calc(Clark, ATKTYPE.Slash, 5)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(paper: "a7", fill: black, margin: 0.1cm,flipped:true); #set text(fill: white, size: 9pt); #set align(center + horizon);

#let character_names = diff_names(characters)

#show table.cell.where(x: 3): set text(fill: red)
#show table.cell.where(x: 4): set text(fill: yellow)

#table(
  columns:(0.8fr,0.3fr,0.3fr,0.5fr,0.5fr),
  stroke:white,
  [*_Name_*], [*Icon*], [*Speed*], [*Health*], [*Stagger*],
  ..for i in range(character_names.len()) {
    let name = character_names.at(i)
    let ico = icon.at(i)
    let speed_value = speed.at(i)
    let HP = characters.at(i).health - damage_dealt.at(i)
    let ST = characters.at(i).stagger - stagger_dealt.at(i)
    ([#name],[#ico],[#speed_value],[#HP],[#ST])
  }
)

Quick damage calculations : #text(fill:red)[#quick_calc.first() HP] & #text(fill:yellow)[#quick_calc.last() ST] damage