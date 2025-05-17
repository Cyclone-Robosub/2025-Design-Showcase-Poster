

#let poster(
  title: "Developing an Autonomous Submarine", 
  leadership: json("data/leaders.json").map(it => [#it.name]),
  advisors: json("data/advisors.json").map(it => [#it.name]), 
  members: json("data/members.json").map(it => [#it.name]), 
  date: datetime.today().display("[month repr:long] [day], [year]"),
  split: (1fr, 1.2fr, 1fr),
  print-margin: .5in,
  colors: (rgb("01696cff"), rgb("02979dff"), rgb("48b0b3ff"))
) = {
  

  set document(author: "Cyclone RoboSub @ UC Davis", title: title)
  
  set page(

    height: 35in + print-margin*2,
    width: 47in + print-margin*2,
    margin: (
      bottom: 2.5in + print-margin,
      rest: 1.5in + print-margin,
    ),
    background: image("graphics/background.svg", width: 48in, height: 36in, scaling: "smooth", fit: "stretch")
  )
  

  set text(
    font: "Atkinson Hyperlegible", 
    lang: "en", 
    28pt
  )
  
  set par(justify: true)
  set grid(gutter: .4in)
  
  set heading(numbering: none)
  show heading: set text(colors.at(0))
  //show heading: set align(right)
  
  show heading.where(level: 1): it => {
    set par(leading: .5em)
    set text(72pt, weight: "bold")
    v(-.5em)
    block(it.body)
  }
  

  show heading.where(level: 2): it => {
    set text(32pt, weight: "bold", tracking: 1.5pt)
     v(.5em)
    block(upper(it.body))
  }

  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  // Code Block
  show raw.where(block: true): block.with(
    fill: luma(96%),
    inset: 10pt,
    radius: 4pt,
  )

  show figure.caption: set text(.7em, fill: colors.at(2))

  let list(list) = {
    for l in list {
      l + if l != list.last() [, ]
    }
  }
  
  // Title 
  place(top + left, image("graphics/COE_logo_color_cmyk.svg", height: 1.15in)) 
  place(top + right, image("graphics/Full Title.svg", height: 1.5in))
  align(center, text(110pt, weight: 900, fill: colors.at(0), title)) 
  v(-2em)
  
  line(length: 100%, stroke: 4pt + colors.at(0))
  
  align(
    center, 
    stack(
      spacing: 1em,
      list(leadership),
      // text(.5em, list(members)),
      [Advisors: #list(advisors)],
    )
  )
  v(2em)
  
  // Body
  grid(
    columns: split, 
    column-gutter: 3%,
    include "column-left.typ",
    include "column-middle.typ",
    include "column-right.typ",
  )  




}

#poster()