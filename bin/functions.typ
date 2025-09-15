#import "keywords.typ": ATKTYPE

/// General functions

#let bullet(header, body) = {
  [*#header*] + " - " + [#body]
}

#let is_in_dict(key, dict) = {
  for pair in dict.pairs() {
    if pair.first() == key {
      return true
    }
  }
  return false
}

#let array-to-list(list) = {
  let i = 0
  while i < list.len() {
    [- #list.at(i)]
    i += 1
  }
}

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

#let column-breaker(text-size, item-per-line, list) = {
  set text(size: text-size)
  let cut = calc.ceil(list.len() / item-per-line)
  cut = calc.max(cut, 1)
  resize-text(columns: cut + 0, columns(cut, [#array-to-list(list)]))
}

#let multi_sort(sort_list, others, addIndex: false) = {
  let toBeSorted = ()
  for i in range(sort_list.len()) {
    let cell = ()
    for j in range(others.len()) {
      cell.push(others.at(j).at(i))
    }
    let toPush = (sort_list.at(i), ..cell)
    if (addIndex) {
      toPush.push(i)
    }
    toBeSorted.push(toPush)
  }
  return toBeSorted.sorted().rev()
}

/// Sheet specific functions

#let diff_names(character_list) = {
  let character_names = ()
  for i in range(0, character_list.len()) {
    let name = character_list.at(i).name.text
    let already_found = true
    let limit = 100
    while limit > 0 {
      limit -= 1
      let already_found = character_names.find(it => it == name)
      if already_found != none {
        name = name + "+1"
      } else {
        break
      }
    }
    character_names.push(name)
  }
  return character_names
}

#let damage_calc(character_attacked, damage_type, damage_sent) = {
  let damage_dealt = damage_sent
  let stagger_dealt = damage_sent

  if damage_type == ATKTYPE.Slash {
    damage_dealt = damage_dealt * character_attacked.slashHP
    stagger_dealt = stagger_dealt * character_attacked.slashST
  } else if damage_type == ATKTYPE.Pierce {
    damage_dealt = damage_dealt * character_attacked.pierceHP
    stagger_dealt = stagger_dealt * character_attacked.pierceST
  } else if damage_type == ATKTYPE.Blunt {
    damage_dealt = damage_dealt * character_attacked.bluntHP
    stagger_dealt = stagger_dealt * character_attacked.bluntST
  }
  return (damage_dealt, stagger_dealt)
}


#let full_damage_calc(character_attacked,damage_dealt) = {
  let dmg_slash = damage_calc(character_attacked, ATKTYPE.Slash, damage_dealt)
  let dmg_pierce = damage_calc(character_attacked, ATKTYPE.Pierce, damage_dealt)
  let dmg_blunt = damage_calc(character_attacked, ATKTYPE.Blunt, damage_dealt)
  show table.cell.where(x: 1): set text(fill: red)
  show table.cell.where(x: 2): set text(fill: yellow)
  show figure.caption: set text(size: 7pt, fill: white)
  set text(size:8pt)
  [#figure(table(
    stroke:gray,
    columns:(1fr,1fr,1fr),
    [*Type*],[*HP*],[*ST*],
    [#ATKTYPE.Slash],[#dmg_slash.at(0)],[#dmg_slash.at(1)],
    [#ATKTYPE.Pierce],[#dmg_pierce.at(0)],[#dmg_pierce.at(1)],
    [#ATKTYPE.Blunt],[#dmg_blunt.at(0)],[#dmg_blunt.at(1)],
  ), caption: [Damage calculation for \ #character_attacked.name ],
  supplement: [],
  numbering: none,
  )]
}

