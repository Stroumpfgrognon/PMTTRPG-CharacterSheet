#let resize-text(columns: 1, body) = layout(size => {
  let font_size = text.size
  let (height,) = measure(
    block(width: size.width, text(size: font_size)[#body]),
  )
  let max_height = size.height
  while height > max_height * calc.max(columns, 1) {
    font_size -= 0.2pt
    height = measure(
      block(width: size.width, text(size: font_size)[#body]),
    ).height
  }

  block(
    text(size: font_size)[#body],
  )
})

#let array-to-list(list) = {
  let i = 0
  while i < list.len() {
    [- #list.at(i)]
    i += 1
  }
}

#let column-breaker(text-size, item-per-line, list) = {
  set text(size: text-size)
  let cut = calc.ceil(list.len() / item-per-line)
  cut = calc.max(cut, 1)
  resize-text(columns: cut + 0, columns(cut, [#array-to-list(list)]))
}

#let size_big = 20pt

#let Name(body) = {
  set align(horizon)
  set text(size: size_big)
  block(width: 19.5%, height: 1.5%, resize-text(body))
}

#let Origin(body) = {
  set align(horizon)
  set text(size: size_big)
  block(width: 22%, height: 1.5%, resize-text(body))
}

#let Work(body) = {
  set align(horizon)
  set text(size: size_big)
  block(width: 21%, height: 1.5%, resize-text(body))
}

#let Rank(body) = {
  set align(horizon + center)
  set text(size: size_big)
  block(width: 5%, height: 1.5%, resize-text(body))
}

#let Stat(body) = {
  set align(horizon + center)
  set text(size: size_big) // Sets max text size for the resizer
  block(width: 14%, height: 1.5%, resize-text(body))
}

#let CalculatedStats(body) = {
  set align(horizon + center)
  set text(size: size_big) // Sets max text size for the resizer
  block(width: 6%, height: 4%, resize-text(body))
}

#let ArmorName(body) = {
  set align(horizon + left)
  block(width: 17.5%, height: 1.8%, resize-text(body))
}

#let ArmorEffects(body) = {
  block(width: 26%, height: 12%, resize-text(body))
}

#let ArmorStat(body) = {
  set align(center + horizon)
  set text(size: size_big)
  block(width: 2%, height: 2%, resize-text(body))
}

#let WeaponName(body) = {
  set align(horizon + left)
  block(width: 17.5%, height: 2%, resize-text(body))
}

#let WeaponRoll(body) = {
  set align(center + horizon)
  set text(size: size_big)
  block(width: 7%, height: 2%, resize-text(body))
}

#let WeaponDesc(body) = {
  block(width: 26%, height: 10%, resize-text(body))
}

#let Inventory(list) = {
  block(width: 90%, height: 8%, column-breaker(15pt, 3, list))
}

#let SkillName(body) = {
  set align(horizon + left)
  block(width: 27.5%, height: 1.9%, resize-text(body))
}

#let SkillCost(body) = {
  set align(horizon + center)
  block(width: 11%, height: 1.9%, resize-text(body))
}

#let SkillEffect(body) = {
  block(width: 40%, height: 7.5%, resize-text(body))
}

#let Notes(list) = {
  block(width: 89%, height: 13%, column-breaker(15pt, 6, list))
}

#let DMGTYPE = (
  SLASH: 0,
  PIERCE: 1,
  BLUNT: 2,
  RAW: 3,
)
