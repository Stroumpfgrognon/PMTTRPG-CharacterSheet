#import "characters.typ": *

#let turn = 8

#let characters = (Juline, Clark, Diane, MaoHeish, MaoHeish)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- DO NOT MODIFY DATA BELLOW THIS POINT -------------------------------------- //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#set page(paper: "a8", fill: black, margin: 0.1cm); #set text(fill: white, size: 9pt); #set align(center + horizon);

#import "@preview/suiji:0.4.0": *
#let character_names = ()
#let speeds = ()

#let match_find(item, compare) = {
  return item == compare
}

#for i in range(0, characters.len()) {
  let name = characters.at(i).name.text
  let already_found = true
  let limit  =100
  while limit>0 {
    limit -=1
    let already_found = character_names.find(it => it == name)
    if already_found != none {
      name = name + "+1"
    }
    else{
      break
    }
    
  }
  character_names.push(name)
}

#let rng_name = character_names.sum()
#let name_seed = 0
#for i in range(rng_name.len()) {
  if calc.round(i / 2) == 0 {
    name_seed += rng_name.at(i).to-unicode()
  }
  name_seed += rng_name.at(i).to-unicode()
}

#let rng = gen-rng-f(name_seed * turn)

#for i in range(characters.len()) {
  let res = integers-f(rng, high: 6, low: 1, size: 1)
  rng = gen-rng-f(res.first().first())
  speeds.push((res.last().first() + characters.at(i).justice, character_names.at(i)))
}

#let speed_sort = speeds.sorted().rev()
#set align(center + horizon)
#table(
  stroke: white,
  columns: 2,
  [*Speed*],
  [*_Name_*],
  ..for (.., speed, name) in speed_sort {
    ([#speed], emph(name))
  },
)


