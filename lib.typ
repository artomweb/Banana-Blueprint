#let section(name: "", body) = {
  if name != "" {
    text(size: 12pt, weight: "bold")[
      #name
    ]
    body
    linebreak()
  } else {
    body
  }
}

#let recipe(
  title: none,
  details: "",
  ingredients: [],
  method: [],
  body,
) = {
  set page(
    width: 210mm,
    height: 148mm,
    margin: 4mm,
  )
  set text(size: 9.6pt)
  align(center)[
    #stack(
      spacing: 14pt,
      text(size: 40pt, weight: "bold")[#title],
      text(size: 20pt, fill: luma(100))[#details],
      line(length: 100%),
    )
  ]
  grid(
    columns: (1fr, 3pt, 2fr),
    box(inset: 10pt)[
      #stack(
        spacing: 19pt,
        text(size: 18pt)[Ingredients:],
        text(size: 11pt)[
          #ingredients
        ],
      )
    ],
    line(angle: 90deg, length: 300pt),
    box(inset: (x: 20pt, y: 10pt))[
      #stack(
        spacing: 19pt,
        text(size: 18pt)[Method:],
        text(size: 11pt)[
          #method
        ],
      )
    ],
  )
}
