#import "characters.typ":*
#import "bin/keywords.typ": ATKTYPE
#import "bin/functions.typ":full_damage_calc, diff_names, multi_sort

#let lines = ((
  Eleonore, [d6], 1, 0, 0, 0, 0, ""
),(
  Clark, [d8], 3, 0, 0, 0, 0, ""
),(
  Zilu, [23], 10, 0, 0, 0, -1, ""
),(
  Zilu, [23], 12, 0, 0, 0, -1, ""
))

#let quick_calc = full_damage_calc(Verso, 10)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(paper: "a7", fill: black, margin: 0.1cm, flipped: true); #set text(fill: white, size: 9pt); #set align(
  center + horizon,
);

#let characters= ()
#let icon = ()
#let speed = ()
#let damage_dealt = ()
#let stagger_dealt = ()
#let sanity_dealt = ()
#let light_spent = ()
#let notes = ()

#for line in lines {
  characters.push(line.at(0))
  icon.push(line.at(1))
  speed.push(line.at(2))
  damage_dealt.push(line.at(3))
  stagger_dealt.push(line.at(4))
  sanity_dealt.push(line.at(5))
  light_spent.push(line.at(6))
  notes.push(line.at(7))
}

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

 #block(width:30%)[#quick_calc]
