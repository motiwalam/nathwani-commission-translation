// =====================================================================
//  Nathwani Commission Report (Dawoodi Bohra Commission)
//  English translation, laid out to mirror the original Urdu edition.
//  Compiles with Typst 0.14+.
// =====================================================================

#set document(
  title: "Nathwani Commission Report (Dawoodi Bohra Commission) — English translation",
  author: "Citizens for Democracy",
)

#set page(
  paper: "a5",
  margin: (top: 2.1cm, bottom: 2.3cm, x: 1.9cm),
  numbering: "1",
  number-align: center,
)

#set text(size: 10.5pt, lang: "en", hyphenate: true)
#set par(justify: true, leading: 0.72em, first-line-indent: 1.2em)

// ---- Heading configuration ------------------------------------------

// Number level-1 headings with Roman numerals; leave other levels unnumbered.
#set heading(numbering: (..nums) => {
  let pos = nums.pos()
  if pos.len() == 1 { numbering("I.", ..nums) }
})

// Separate counter for the "CHAPTER I" kicker so appendix headings
// (which carry numbering: none) do not disturb the chapter count.
#let _ch = counter("_nathwani_chapter")

#show heading.where(level: 1): it => {
  if it.numbering != none { _ch.step() }
  pagebreak(weak: true)
  v(2.4cm)
  set par(first-line-indent: 0pt, justify: false)
  align(center)[
    #if it.numbering != none [
      #text(size: 11pt, tracking: 3pt, fill: luma(90))[
        CHAPTER #context _ch.display("I")
      ]
      #v(0.5em)
    ]
    #text(size: 22pt, weight: "bold", hyphenate: false)[#it.body]
  ]
  v(1.4cm)
}

#show heading.where(level: 2): it => {
  set par(first-line-indent: 0pt)
  v(0.6em)
  text(size: 11.5pt, weight: "bold")[#it.body]
  v(0.2em)
}

// =====================================================================
//  TITLE PAGE
// =====================================================================
#set page(numbering: none)
#set par(justify: false, first-line-indent: 0pt)
#v(3.2cm)
#align(center)[
  #text(size: 26pt, weight: "bold")[Nathwani Commission Report]
  #v(0.4em)
  #text(size: 15pt)[(The Dawoodi Bohra Commission)]
  #v(2.2cm)

  #text(size: 11pt, tracking: 2pt, fill: luma(90))[CHAIRMAN]
  #v(0.4em)
  #text(size: 16pt, weight: "bold")[N. P. Nathwani]
  #v(1.0cm)

  #text(size: 11pt, tracking: 2pt, fill: luma(90))[MEMBERS]
  #v(0.6em)
  #set par(leading: 0.9em)
  #text(size: 12.5pt)[
    V. M. Tarkunde \
    Dr. (S.) Alam Khundmiri \
    Dr. Moin Shakir \
    C. T. Daru (Secretary)
  ]
]

// =====================================================================
//  PUBLICATION / COLOPHON PAGE
// =====================================================================
#pagebreak()
#set par(first-line-indent: 0pt, justify: false, leading: 0.9em)
#align(center)[
  #block(width: 78%)[
    #set align(left)
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.8em,
      row-gutter: 0.7em,
      [*Title of book:*], [Nathwani Commission Report (The Dawoodi Bohra Commission)],
      [*Print run:*],     [One thousand],
      [*Published:*],     [July 1979],
      [*Calligraphy:*],   [Musharraf Ali],
      [*Cover:*],         [Aasim],
      [*Supervision:*],   [Azhar Husain Rahi],
      [*Printed at:*],    [J. K. Offset Press, Delhi],
    )
  ]
]
#v(1fr)
#align(center)[
  #block(width: 85%)[
    #set text(size: 8.5pt, fill: luma(60))
    #set align(center)
    On behalf of Citizens for Democracy, C. T. Daru had this printed at
    J. K. Offset Printers, Delhi, and published it from
    "9, Beniwal Kapoori Society, Secretary Road, Ahmedabad."
    #linebreak()
    #emph[(Address transliterated from the handwritten original; some
    elements are uncertain.)]
  ]
]

// =====================================================================
//  NOTE ON THIS TRANSLATION
// =====================================================================
#pagebreak()
#set par(first-line-indent: 0pt, justify: true, leading: 0.72em)
#align(center)[#text(size: 15pt, weight: "bold")[Note on this Translation]]
#v(0.8em)

The source is a 193-page Urdu edition of the Nathwani Commission Report,
written throughout in handwritten Nastaliq calligraphy. The original
report was prepared in 1977--79 by a committee of Citizens for Democracy,
chaired by N. P. Nathwani, to inquire into alleged violations of the
human rights of reformist members of the Dawoodi Bohra community.

Because the source has no machine-readable text layer and is entirely
handwritten, this English version has been produced by reading the
manuscript directly rather than by automated OCR. 

Words placed in square brackets, and notes in italics, flag points where
the handwriting is uncertain. Page numbers in the table of contents
are those of this translation.

// =====================================================================
//  TABLE OF CONTENTS
// =====================================================================
#pagebreak()
#v(1cm)
#align(center)[#text(size: 17pt, weight: "bold")[Contents]]
#v(0.8em)

#set par(first-line-indent: 0pt, justify: false, leading: 0.7em)

#show outline.entry.where(level: 1): it => {
  v(0.45em, weak: true)
  let loc = it.element.location()
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[
      #if it.element.numbering != none {
        context numbering(it.element.numbering, ..counter(heading).at(loc))
        h(0.5em)
      }
      #it.element.body
    ],
    context text(weight: "bold")[#counter(page).at(loc).first()],
  )
}

#show outline.entry.where(level: 2): it => {
  let loc = it.element.location()
  pad(left: 1.4em, grid(
    columns: (auto, 1fr, auto),
    column-gutter: 0.4em,
    it.element.body,
    align(bottom, box(width: 1fr, repeat(text(fill: luma(150))[.]))),
    context [#counter(page).at(loc).first()],
  ))
}

#outline(title: none, depth: 2)

// =====================================================================
//  BODY
// =====================================================================
#set page(numbering: "1")
#counter(page).update(1)
#set par(justify: true, first-line-indent: 1.2em, leading: 0.72em)

#include "chapter01.typ"
#include "chapter02.typ"
#include "chapter03.typ"
#include "chapter04.typ"
#include "chapter05.typ"
#include "chapter06.typ"
#include "chapter07.typ"
#include "chapter08.typ"
#include "chapter09.typ"
#include "chapter10.typ"
#include "chapter11.typ"
#include "chapter12.typ"
#include "chapter13.typ"
#include "chapter14.typ"
#include "appendixchapter01.typ"
#include "appendixA.typ"
#include "appendixB.typ"
#include "appendixC.typ"
#include "appendixD.typ"
#include "appendixE.typ"
#include "appendixF.typ"
#include "appendixG.typ"
#include "appendixH.typ"
