#import "characters.typ":*
#import "bin/keywords.typ": ATKTYPE
#import "bin/functions.typ":full_damage_calc, diff_names, multi_sort

#let characters = (Eleonore, 
                   Clark,
                   Zilu
                   )

#let icon = ([d6], 
             [d8],
             [23])

#let speed = (1, 
              3,
              10)

#let damage_dealt = (0, 
                     0,
                     0)

#let stagger_dealt = (0, 
                      0,
                      0)

#let sanity_dealt = (0, 
                     0,
                     0,)

#let light_spent = (0, 
                    0,
                    0,)

#let notes = ("", 
              "",
              "-1 ammo",)

#let quick_calc = full_damage_calc(Zilu, 10)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(paper: "a7", fill: black, margin: 0.1cm, flipped: true); #set text(fill: white, size: 9pt); #set align(
  center + horizon,
);

#let character_names = diff_names(characters)

#show table.cell.where(x: 3): set text(fill: red)
#show table.cell.where(x: 4): set text(fill: yellow)
#show table.cell.where(x: 5): set text(fill: blue)
#show table.cell.where(x: 6): set text(fill: rgb("#fff2af"))

#let speed_sorted = multi_sort(speed, (character_names, icon, speed, damage_dealt, stagger_dealt,sanity_dealt,light_spent,notes), addIndex: true)

#show table.cell.where(x: 3): set text(fill: red)
#show table.cell.where(x: 4): set text(fill: yellow)

#table(
  columns: (0.5fr, 0.3fr, 0.3fr, 0.3fr, 0.3fr,0.3fr,0.3fr,0.7fr),
  stroke: white,
  [*_Name_*], [*Icon*], [*Speed*], [*HP*], [*ST*], [*SP*],[*Lt*], [*Notes*],
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
    let Snt = characters.at(i.last()).Sanity - i.at(6)
    let Lt = characters.at(i.last()).Light - i.at(7)
    ([#name], [#ico], [#speed_value], [#HP], [#ST],[#Snt],[#Lt], [#notes.at(i.last())])
  },
)

// Quick damage calculations : #text(fill: red)[#quick_calc.first() HP] & #text(fill: yellow)[#quick_calc.last() ST] damage

 #block(width:30%)[#quick_calc]
