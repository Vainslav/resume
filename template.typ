#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)
  
  set page(
    paper: "a4",
    margin: (x: 0.5in, y: 0.5in)
  )
  
  set text(
    size: 10.1pt,
      font: "New Computer Modern",
      ligatures: false
  )
  
  body
}

#let name_header(name) = {
  set text(size: 2.25em)
  [*#name*]
}

#let header(
  name: "Jake Ryan",
  email: "jake@su.edu",
  site: "github.com/jake",
  tg: "example"
) = {
  align(center,
    block[
      #name_header(name) \
      #link("mailto:" + email)[#email] |
      #link("https://" + site)[#site] |
      #link("https://t.me/" + tg)[@#tg]
    ]
  )
  v(5pt)
}

#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")

  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}

#let edu_item(
  name: "Sample University", 
  degree: "B.S in Computer Science", 
  location: "Foo, BA", 
  date: "Aug. 1600 - May 1750",
) = {
    set block(above: 0.7em, below: 0.8em) // 1em was original but since 0.12 this is needed
    pad(left: 1em, right: 0.5em, box[
      #grid(
        columns: (3fr, 1fr),
        align(left)[
          *#name* \
          _#degree _
        ],
        align(right)[
          #date \
        ]
      )
    ])
}

#let exp_item(
  name: "Sample Workplace",
  role: "Worker",
  date: "June 1837 - May 1845",
  location: "Foo, BA",
  ..points
) = {
    set block(above: 0.7em, below: 0.8em) // 1em was original but since 0.12 this is needed
    pad(left: 1em, right: 0.5em, box[
      #grid(
        columns: (3fr, 1fr),
        align(left)[
          *#role* \
          _#name _
        ],
        align(right)[
          #date \
          _#location _
        ]
      )
      #list(..points)
    ])
}

#let project_item(
  name: "Example Project",
  skills: "Programming Language 1, Database3",
  date: "May 1234 - June 4321",
  l: "https://example.com",
  ..points
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    *#name* | _#skills _ #h(1fr) *#link(l, "Ссылка")*
    #list(..points)
  ])
}

#let achievement_item(
  name: "Example Achievemtn",
  status: "Example",
  date: "May 1234 - June 4321",
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    #grid(
        columns: (3fr, 1fr),
        align(left)[
          #name | #status 
        ],
        align(right)[
          #date
        ]
      )
  ])
}

#let course_item(
  name: "Example Achievemtn",
  date: "May 1234 - June 4321",
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    #grid(
        columns: (3fr, 1fr),
        align(left)[
          #name
        ],
        align(right)[
          #date
        ]
      )
  ])
}

#let skill_item(
  category: "Skills",
  skills: "Balling, Yoga, Valorant",
) = {
  set block(above: 0.7em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, block[*#category*: #skills])
}