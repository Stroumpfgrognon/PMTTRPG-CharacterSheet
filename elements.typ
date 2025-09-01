#let resize-text(body) = layout(size => {
  let font_size = text.size
  let (height,) = measure(
    block(width: size.width, text(size: font_size)[#body]),
  )
  let max_height = size.height;
  
  while height > max_height {
      font_size -= 0.2pt
      height = measure(
        block(width: size.width, text(size: font_size)[#body]),
      ).height
  }
  
  block(
      height: height,
      width: 100%,
      text(size: font_size)[#body]
  )
})

#let Stat(body) = {
  set align(horizon+center)
  set text(size:30pt) // Sets max text size for the resizer
  block(width:14%,height:1.5%, resize-text(body))
}

#let CalculatedStats(body) = {
  set align(horizon+center)
  set text(size:20pt) // Sets max text size for the resizer
  block(width:6%, height:4%, resize-text(body))
}

#let ArmorName(body) = {
  set align(horizon+left)
  block(width:17.5%,height:1.8%,resize-text(body))
}

#let ArmorEffects(body) = {
  block(width:26%,height:12%,resize-text(body))
}

#let ArmorStat(body) = {
  set align(center+horizon)
  set text(size:17pt)
  block(width:2%,height:2%,resize-text(body))
}

#let WeaponName(body) = {
  set align(horizon+left)
  block(width:17.5%,height:2%,resize-text(body))
}

#let WeaponRoll(body) = {
  set align(center+horizon)
  block(width:5%, height:2%, resize-text(body))
}

#let WeaponDesc(body) = {
  block(width:26%,height:10%,resize-text(body))
}

#let Inventory(body) = {
  block(width:90%,height: 8%,resize-text(body))
}

#let SkillName(body) = {
  set align(horizon+left)
  block(width:27.5%,height:1.9%,resize-text(body))
}

#let SkillCost(body) = {
  set align(horizon+center)
  block(width:11%,height:1.9%,resize-text(body))
}

#let SkillEffect(body) = {
  block(width:40%,height:7.5%, resize-text(body))
}

#let Notes(body) = {
  block(width:89%,height:36.5%,resize-text(body))
}
