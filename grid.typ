#set page(margin: 1pt, paper: "a4")

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

////////////////////////////////////////////////////////////// EDIT HERE

#let marks = (
  (square(height: 50pt, fill: green), "Crate"),
  (circle(height: 40pt, fill: blue), "Water Barrel"),  
)

#let mark1s = generate-cells(marks.at(0).at(0), generate-line((0, 0), (19, 13), true))

#let mark2s = generate-cells(marks.at(1).at(0), generate-line((5, 5), (12, 7), false))

#let marksCells = mark2s+mark1s // Cells will be filtered, first has priority

// typst watch --pages 1-3 .\grid.typ "grid-{p}.svg" to generate svg grid
// typst watch "grid.typ" for pdf

///////////////////////////////////////////////////////////// END EDIT HERE

#let coordinates = ()
#let cleanedMarksCells = ()

#for mark in marksCells {
  if((not (mark.x, mark.y) in coordinates)) {
    coordinates.push((mark.x, mark.y))
    cleanedMarksCells.push(mark)
  }
}

#let markP1 = cleanedMarksCells.filter(cell => cell.x <= 9 and cell.y <= 13)
#let markP2 = cleanedMarksCells.filter(cell => cell.x > 9 and cell.y <= 13)

#for i in range(markP2.len()) {
  let cell = markP2.at(i)
  markP2.at(i) = table.cell(
    cell.body,
    x: cell.x - 10,
    y: cell.y,
  )
}

#let char-grid = table(
  align: center+horizon,
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  ..markP1,
)

#let char-grid-2 = table(
  align: center+horizon,
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  ..markP2,
)


#char-grid
#char-grid-2

#page(margin:0.3cm,align(bottom+left,table(
  align: center+horizon,
  columns: (40pt, 60pt),
  [Icon], [Item],
  ..for mark in marks { ([#mark.at(1)], [#mark.at(0)]) },
)))
