// =====================================================================
//  lib.typ — Shared typesetting helpers
//  Import at the top of every chapter and appendix file:
//      #import "lib.typ": *
// =====================================================================

// Pending-translation marker for chapters not yet rendered.
#let pending(pages) = {
  set par(first-line-indent: 0pt, justify: false)
  block(
    width: 100%, inset: 11pt, radius: 4pt,
    fill: luma(244), stroke: 0.5pt + luma(200),
  )[
    #text(size: 9pt, style: "italic", fill: luma(70))[
      Body translation pending. In the source edition this material runs
      across #pages. The chapter and section headings above are
      translated from the table of contents and chapter pages; the prose
      has deliberately not been rendered yet, to avoid introducing errors
      into the dense, handwritten Urdu original. (Ask to have this chapter
      translated next and it can be filled in and verified page by page.)
    ]
  ]
}

// Indented block for quoted documents and letters.
#let docquote(body) = {
  set par(first-line-indent: 0pt, justify: true, leading: 0.72em)
  pad(left: 1.2em, right: 1.2em, top: 0.3em, bottom: 0.3em)[#body]
}

// Deeply indented block for letter signature / closing lines.
#let sigblock(body) = {
  set par(first-line-indent: 0pt, justify: false, leading: 0.85em)
  pad(left: 4em, top: 0.4em, bottom: 0.4em)[#body]
}

// Decorative section divider (× × ×).
#let divider = {
  v(0.4em)
  align(center)[#text(tracking: 0.6em, fill: luma(110))[× × ×]]
  v(0.4em)
}

// Left-rule block quote for firmans and formal notices.
#let quoted(body) = {
  set par(first-line-indent: 0pt, justify: true, leading: 0.7em)
  pad(left: 0.9em)[
    block(
      inset: (left: 0.7em, top: 0.2em, bottom: 0.2em),
      stroke: (left: 1pt + luma(170)),
    )[#body]
  ]
}

// Lettered or numbered clause within a quoted document or bill section.
#let clause(label, body) = {
  grid(
    columns: (1.7em, 1fr),
    column-gutter: 0.3em,
    [#label], body,
  )
  v(0.2em)
}

// Numbered recommendation (Chapter Fourteen).
#let rec(num, body) = {
  set par(first-line-indent: 0pt)
  v(0.35em)
  pad(left: 0.2em)[
    #grid(
      columns: (1.6em, 1fr),
      column-gutter: 0pt,
      text(weight: "bold")[#num.],
      body,
    )
  ]
}

// Centered subsection heading with a decorative rule beneath.
#let subhead(title) = {
  set par(first-line-indent: 0pt, justify: false)
  v(0.8em)
  align(center)[
    #text(size: 12.5pt, weight: "bold")[#title]
    #v(0.25em)
    #line(length: 38%, stroke: 0.6pt + luma(120))
  ]
  v(0.35em)
}

// Numbered condition — right-aligned number with body text.
#let cond(n, body) = {
  v(0.5em)
  grid(
    columns: (1.7em, 1fr),
    column-gutter: 0.5em,
    align(right)[#n.],
    body,
  )
}
