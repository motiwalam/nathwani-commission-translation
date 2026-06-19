// =====================================================================
//  Appendix B — Places and dates of the Commission's sittings
//  English translation, laid out to mirror the original Urdu page.
//  Designed to be included from main.typ, e.g.:
//      #include "appendixB.typ"
// =====================================================================

#pagebreak(weak: true)
#v(1.6cm)

#set par(first-line-indent: 0pt, justify: false)
#align(center)[
  #text(size: 11pt, tracking: 3pt, fill: luma(90))[APPENDIX B]
  #v(0.4em)
  #text(size: 10.5pt, style: "italic", fill: luma(70))[(See Chapter One)]
  #v(0.7em)
  #text(size: 19pt, weight: "bold", hyphenate: false)[
    Places and Dates of the\ Commission's Sittings
  ]
]
#v(1.0cm)

// The original lists, for each sitting, a serial number, the place, and
// the date (written day–month–year in the manuscript).
#align(center)[
  #block(width: 78%)[
    #set align(left)
    #set text(size: 11pt)
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 1.0em,
      row-gutter: 0.95em,
      align: (right, left, right),
      [1.], [Bombay],            [10 November 1977],
      [2.], [Bombay],            [26 December 1977],
      [3.], [Bombay],            [12 February 1978],
      [4.], [Bombay],            [30 April 1978],
      [5.], [Gandhidham Nagar],  [24 June 1978],
      [6.], [Delhi],             [20 October 1978],
      [7.], [Delhi],             [3 February 1979],
      [8.], [Delhi],             [14 April 1979],
    )
  ]
]

#v(0.7em)
#align(center)[#line(length: 38%, stroke: 0.6pt + luma(120))]

#v(0.6em)
#align(center)[
  #set text(size: 8.5pt, fill: luma(95))
  #emph[Dates are given in the original as day–month–year and are
  rendered here in full. Place names follow the spelling used elsewhere
  in the report; "Gandhidham Nagar" is the town in Kutch referred to in
  Chapter One as Gandhidham (Kutch).]
]
