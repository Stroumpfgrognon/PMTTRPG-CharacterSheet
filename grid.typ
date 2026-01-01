#import "@preview/cetz:0.3.2"

#let generate-line(origin, finish, thick) = {
  let hyp = (finish.at(0) - origin.at(0), finish.at(1) - origin.at(1))
  let len = calc.sqrt(hyp.at(0) * hyp.at(0) + hyp.at(1) * hyp.at(1))
  let hyp2 = (hyp.at(0) / len, hyp.at(1) / len)
  let res = ((finish),)
  for i in range(calc.floor(len)) {
    let coord = (calc.ceil(origin.at(0) + hyp2.at(0) * i), calc.ceil(origin.at(1) + hyp2.at(1) * i))
    if (coord not in res) {
      res.push(coord)
    }
    if (thick) {
      let coord = (calc.floor(origin.at(0) + hyp2.at(0) * i), calc.floor(origin.at(1) + hyp2.at(1) * i))
      if (coord not in res) {
        res.push(coord)
      }
    }
  }
  return res
}

#let generate-cells(mark, coords) = {
  let res = ()
  for coord in coords {
    res.push(table.cell(
      mark,
      x: coord.at(0),
      y: coord.at(1),
    ))
  }
  return res
}

#let mark1 = rect(height: 50pt, width: 50pt, fill: green)

#let mark1-coords = generate-line((1, 1), (9, 3), false)

#let mark1s = generate-cells(mark1, mark1-coords)

#let char-grid = table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  ..mark1s,
)

#page(margin: 0cm, paper: "a4")[

  // A simple grid that fits dies to do combat, might have to reduce the amount of cells for miniatures

  #char-grid


]
