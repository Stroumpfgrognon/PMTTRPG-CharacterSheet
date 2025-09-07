#import "premade.typ": *

#let turn = 1

#let characters = (Juline,Clark, Kali, Diane)

// ------------------------------------------------------------------

#set page(paper: "a9", fill: black, margin: 0.1cm); #set text(fill: white, size: 9pt); #set align(center + horizon);

#import "@preview/suiji:0.4.0": *
#let character_names = ()
#let speeds = ()

#for i in range(0, characters.len()) {
  character_names.push(characters.at(i).name.text)
}

#let rng_name = character_names.sum()
#let name_seed = 0
#for i in range(rng_name.len()) {
  if calc.round(i/2) == 0 {
    name_seed+=rng_name.at(i).to-unicode()
  }
  name_seed+=rng_name.at(i).to-unicode()
}

#let rng = gen-rng-f(name_seed*turn)

#for i in range(characters.len()) {
  let res = integers-f(rng, high: 6, low: 1, size: 1)
  rng = gen-rng-f(res.first().first())
  speeds.push((res.last().first() + characters.at(i).justice,character_names.at(i)))
}

#let speed_sort = speeds.sorted().rev()
#set align(center+horizon)
#table(
  stroke:white,
  columns:2,
  [*Speed*],
  [*_Name_*],
  ..for (.., speed,name) in speed_sort {
    ([#speed],emph(name))
  }
)


