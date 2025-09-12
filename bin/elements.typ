#import "functions.typ": *
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

#let EGOSkillName(body) = {
  set align(horizon + center)
  block(width: 13.5%, height: 2%, resize-text(body))
}

#let EGOSkillCost(body) = {
  set align(horizon + center)
  block(width: 5%, height: 2%, resize-text(body))
}

#let EGOSkillEffect(body) = {
  set align(left)
  block(width: 19.5%, height: 10%, resize-text(body))
}

#let EgoPassive(list) = {
  set align(horizon)
  block(width: 41%, height: 21.5%, column-breaker(15pt, 3, list))
}

#let Notes(list) = {
  block(width: 89%, height: 13%, column-breaker(15pt, 6, list))
}

#let ClashW(effect) = {
  [\[_On Clash Win_\] : #effect]
}

#let ClashL(effect) = {
  [\[_On Clash Loss_\] : #effect]
}

#let Hit(effect) = {
  [\[_On Hit_\] : #effect]
}

#let Use(effect) = {
  [\[_On Use_\] : #effect]
}

#let Gain(effect, count) = {
  if type(effect) == array {
    [Gain ]
    for i in range(effect.len() - 2) {
      [#count.at(i) #effect.at(i), ]
    }
    let i = effect.len() - 2
    if i >= 0 {
      [#count.at(i) #effect.at(i) ]
      i += 1
    }
    [and #count.at(i) #effect.at(i)]
  } else [Gain #count #effect]
}

#let Inflict(effect, count) = {
  if type(effect) == array {
    [Inflict ]
    for i in range(effect.len() - 2) {
      [#count.at(i) #effect.at(i), ]
    }
    let i = effect.len() - 2
    if i >= 0 {
      [#count.at(i) #effect.at(i) ]
      i += 1
    }
    [and #count.at(i) #effect.at(i)]
  } else [Inflict #count #effect]
}

#let CondEffect(cond, effect) = {
  [If #cond : #effect \ ]
}
