#import "characters.typ": *
#import "bin/keywords.typ": ATKTYPE
#import "bin/functions.typ": damage_calc, diff_names, multi_sort

#let characters = (Eleonore, 
                   Clark, 
                   Diane, 
                   MaoHeish, 
                   MaoHeish,
                   Zilu)

#let icon = ([d6], 
             [d8],
             [d10], 
             [d12], 
             [d20],
             [Eye])

#let speed = (1, 
              3, 
              5, 
              6, 
              8,
              24)

#let damage_dealt = (5, 
                     7, 
                     9, 
                     11, 
                     10 + 25 + 33 + 2 + 25 + 345,
                     0)

#let stagger_dealt = (3, 
                      4, 
                      5, 
                      6, 
                      5 + 15,
                      0)

#let quick_calc = damage_calc(Clark, ATKTYPE.Slash, 5)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(paper: "a7", fill: black, margin: 0.1cm, flipped: true); #set text(fill: white, size: 9pt); #set align(
  center + horizon,
);

#let character_names = diff_names(characters)

#show table.cell.where(x: 3): set text(fill: red)
#show table.cell.where(x: 4): set text(fill: yellow)

#let speed_sorted = multi_sort(speed, (character_names, icon, speed, damage_dealt, stagger_dealt), addIndex: true)

#show table.cell.where(x: 3): set text(fill: red)
#show table.cell.where(x: 4): set text(fill: yellow)

#table(
  columns: (0.8fr, 0.3fr, 0.3fr, 0.5fr, 0.5fr),
  stroke: white,
  [*_Name_*], [*Icon*], [*Speed*], [*Health*], [*Stagger*],
  // ..for i in range(character_names.len()) {
  //   let name = character_names.at(i)
  //   let ico = icon.at(i)
  //   let speed_value = speed.at(i)
  //   let HP = characters.at(i).health - damage_dealt.at(i)
  //   let ST = characters.at(i).stagger - stagger_dealt.at(i)
  //   ([#name],[#ico],[#speed_value],[#HP],[#ST])
  // }
  ..for i in speed_sorted {
    let name = i.at(1)
    let ico = i.at(2)
    let speed_value = i.at(0)
    let HP = characters.at(i.last()).health - i.at(4)
    let ST = characters.at(i.last()).stagger - i.at(5)
    ([#name], [#ico], [#speed_value], [#HP], [#ST])
  },
)

Quick damage calculations : #text(fill: red)[#quick_calc.first() HP] & #text(fill: yellow)[#quick_calc.last() ST] damage
