// =====================================================================
//  Nathwani Commission Report (Dawoodi Bohra Commission)
//  English translation, laid out to mirror the original Urdu edition.
//  Compiles with Typst 0.13+.
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


// ---- Helpers --------------------------------------------------------
// Chapter pages: a "CHAPTER N" kicker over a large title, centred,
// echoing the stacked  باب اول / تعارف  of the original.
#let chapter(kicker, title) = {
  pagebreak(weak: true)
  v(2.4cm)
  set par(first-line-indent: 0pt, justify: false)
  align(center)[
    #text(size: 11pt, tracking: 3pt, fill: luma(90))[#kicker]
    #v(0.5em)
    #text(size: 22pt, weight: "bold", hyphenate: false)[#title]
  ]
  v(1.4cm)
}

#let section(title) = {
  set par(first-line-indent: 0pt)
  v(0.6em)
  text(size: 11.5pt, weight: "bold")[#title]
  v(0.2em)
}

// A pending-translation marker for chapters not yet rendered.
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
// #v(5cm)
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
// #v(1.5cm)
#set par(first-line-indent: 0pt, justify: true, leading: 0.72em)
#align(center)[#text(size: 15pt, weight: "bold")[Note on this Translation]]
#v(0.8em)

The source is a 193-page Urdu edition of the Nathwani Commission Report,
written throughout in handwritten Nastaliq calligraphy. The original
report was prepared in 1977–79 by a committee of Citizens for Democracy,
chaired by N. P. Nathwani, to inquire into alleged violations of the
human rights of reformist members of the Dawoodi Bohra community.

Because the source has no machine-readable text layer and is entirely
handwritten, this English version has been produced by reading the
manuscript directly rather than by automated OCR. The title page, the
publication particulars, the complete table of contents, and Chapter One
have been translated in full. The remaining chapters are laid out with
their translated headings, preserving the structure of the original, and
are marked as pending so they can be translated and checked one chapter
at a time.

Page numbers shown in the table of contents are those of the original
edition (this translation re-paginates). Words placed in square brackets,
and notes in italics, flag points where the handwriting is uncertain.

// =====================================================================
//  TABLE OF CONTENTS
// =====================================================================
#pagebreak()
#v(1cm)


#align(center)[#text(size: 17pt, weight: "bold")[Contents]]
#v(0.8em)

#set par(first-line-indent: 0pt, justify: false, leading: 0.7em)

#let toc-ch(num, title, page) = {
  v(0.45em)
  grid(
    columns: (1fr, auto),
    [#text(weight: "bold")[#num#h(0.6em)#title]],
    [#text(weight: "bold")[#page]],
  )
}
#let toc-sec(title, page) = {
  pad(left: 1.4em)[
    #grid(
      columns: (auto, 1fr, auto),
      column-gutter: 0.4em,
      [#title], [#align(bottom)[#box(width: 1fr, repeat[#text(fill: luma(150))[.]])]], [#page],
    )
  ]
}

#toc-ch[I.][Introduction][5]
#toc-ch[II.][Historical Background and the Dawoodi Tradition][11]
#toc-ch[III.][The Syedna's Claim to Be Absolute Ruler (Qadir-e-Mutlaq)][15]
#toc-ch[IV.][The Misaq (Oath of Allegiance)][24]
#toc-ch[V.][The Grievances of the Reformists][40]

#toc-ch[VI.][Interference with Civil Liberties and Human Rights][46]
#toc-sec[(1) Attack on livelihood and dismissal from service \[?\]][48]
#toc-sec[(2) Ban on reading the Bohra Bulletin][50]
#toc-sec[(3) Marriage without permission declared invalid][51]
#toc-sec[(4) The Mowqqar daily][55]
#toc-sec[(5) Excommunication directed against the orphanage][58]
#toc-sec[(6) Orders to close the cooperative bank][60]
#toc-sec[(7) Order to dissolve the Youth Association][61]
#toc-sec[(8) Are elections contrary to religion?][72]
#toc-sec[(9) Prohibition of association with outsiders \[?\]][73]

#toc-ch[VII.][Excommunication (Bara'at) and Social Oppression][61]
#toc-sec[(1) A sister's distress; a brother's burial][62]
#toc-sec[(2) Attack on women in the mosque][64]
#toc-sec[(3) Oppression at Galiakot][64]
#toc-sec[(4) A son forced to declare disownment of his father][66]
#toc-sec[(5) Boycott of an advocate][69]
#toc-sec[(6) Oppression and excess against a Sheikh][81]
#toc-sec[(7) Oppression of Bohras in foreign countries][85]

#toc-ch[VIII.][Further Instances of Social Persecution][88]
#toc-sec[(1) Obstruction of marriages][93]
#toc-sec[(2) Forced resignations][94]
#toc-sec[(3) Loss of livelihood through threats][95]
#toc-sec[(4) Ban on entry into mosques][97]
#toc-sec[(5) Harassment during burial rites][98]
#toc-sec[(6) Financial pressure][99]
#toc-sec[(7) Reservation in the cemetery][103]
#toc-sec[(8) Reservation in mosques][103]
#toc-sec[(9) Violation of human dignity][104]
#toc-sec[(10) Forcing women to give up employment][105]
#toc-sec[(11) The Bohra community \[?\]][106]

#toc-ch[IX.][Interference with the Right to Vote][110]
#toc-sec[(1) Compulsory notification \[?\]][113]

#toc-ch[X.][The Autocratic Dispensation][116]
#toc-sec[(1) The Firman (decree)][118]

#toc-ch[XI.][Attempts at Legislation][129]

#toc-ch[XII.][Taxes][138]
#toc-sec[(1) Zakat and Khums][138]
#toc-sec[(2) Sila and Fitra][139]
#toc-sec[(3) Nazr-e-Maqam][139]
#toc-sec[(4) Haqq al-Nafs][140]
#toc-sec[(5) Are the payments obligatory or voluntary?][143]
#toc-sec[(6) A state within a state][146]
#toc-sec[(7) A passport to paradise][148]

#toc-ch[XIII.][Income, Property, and Their Management][149]
#toc-ch[XIV.][Recommendations][158]

#v(0.7em)
#text(weight: "bold")[Appendices]
#toc-sec[Appendix (to Chapter I): The Questionnaire — Sections A, B, C, and D (miscellaneous matters; tax, levy, offerings and Islam)][174]
#toc-sec[Appendix A-1: English dailies; Gujarati press; press note][169]
#toc-sec[Appendix B: Places and dates of the Commission's sittings][181]
#toc-sec[Appendix C: Illegal transfer of \[funds\] \[?\]][182]
#toc-sec[Appendix D][184]
#toc-sec[Appendix E: Degrading conditions imposed for the grant of consent (raza) \[?\]][185]
#toc-sec[Appendix F][186]
#toc-sec[Appendix G][188]
#toc-sec[Appendix H: The Prevention of Social Disabilities Bill, 1966; Statement of Objects and Reasons][189]

#emph[#text(size: 8.5pt, fill: luma(90))[Section-level page numbers are transcribed from a handwritten contents page and may contain minor reading errors.]]

#set page(numbering: "1")
#counter(page).update(1)
#set par(justify: true, first-line-indent: 1.2em, leading: 0.72em)


#chapter[CHAPTER ONE][Introduction]
#include "chapter01.typ"

#chapter[CHAPTER TWO][Historical Background and the Dawoodi Tradition]
#include "chapter02.typ"

#chapter[CHAPTER THREE][The Syedna's Claim to Be Absolute Ruler]
#include "chapter03.typ"

#chapter[CHAPTER FOUR][The Misaq (Oath of Allegiance)]
#include "chapter04.typ"

#chapter[CHAPTER FIVE][The Grievances of the Reformists]
#include "chapter05.typ"

#chapter[CHAPTER SIX][Interference with Civil Liberties and Human Rights]
#section[(1) Attack on livelihood and dismissal from service]
#section[(2) Ban on reading the Bohra Bulletin]
#section[(3) Marriage without permission declared invalid]
#section[(4) The Mowqqar daily]
#section[(5) Excommunication directed against the orphanage]
#section[(6) Orders to close the cooperative bank]
#section[(7) Order to dissolve the Youth Association]
#section[(8) Are elections contrary to religion?]
#section[(9) Prohibition of association with outsiders]
#include "chapter06.typ"

#chapter[CHAPTER SEVEN][Excommunication (Bara'at) and Social Oppression]
#section[(1) A sister's distress; a brother's burial]
#section[(2) Attack on women in the mosque]
#section[(3) Oppression at Ghatkopar]
#section[(4) A son forced to declare disownment of his father]
#section[(5) Boycott of an advocate]
#section[(6) Oppression and excess against a Sheikh]
#section[(7) Oppression of Bohras in foreign countries]
#include "chapter07.typ"

#chapter[CHAPTER EIGHT][Further Instances of Social Persecution]
#section[(1) Obstruction of marriages]
#section[(2) Forced resignations]
#section[(3) Loss of livelihood through threats]
#section[(4) Ban on entry into mosques]
#section[(5) Harassment during burial rites]
#section[(6) Financial pressure]
#section[(7) Reservation in the cemetery]
#section[(8) Reservation in mosques]
#section[(9) Violation of human dignity]
#section[(10) Forcing women to give up employment]
#section[(11) The Bohra community]
#include "chapter08.typ"

#chapter[CHAPTER NINE][Interference with the Right to Vote]
#section[(1) Compulsory notification]
#include "chapter09.typ"

#chapter[CHAPTER TEN][The Autocratic Dispensation]
#section[(1) The Firman (decree)]
#include "chapter10.typ"

#chapter[CHAPTER ELEVEN][Attempts at Legislation]
#include "chapter11.typ"

#chapter[CHAPTER TWELVE][Taxes]
#section[(1) Zakat and Khums]
#section[(2) Sila and Fitra]
#section[(3) Nazr-e-Maqam]
#section[(4) Haqq al-Nafs]
#section[(5) Are the payments obligatory or voluntary?]
#section[(6) A state within a state]
#section[(7) A passport to paradise]
#include "chapter12.typ"

#chapter[CHAPTER THIRTEEN][Income, Property, and Their Management]
#include "chapter13.typ"

#chapter[CHAPTER FOURTEEN][Recommendations]
#include "chapter14.typ"

#chapter[APPENDICES][Questionnaire, Press Notes, and Supporting Documents]
// #section[Appendix (to Chapter 1): The Questionnaire — Sections A–D]
#include "appendixchapter01.typ"

#section[Appendix A-1: English dailies; Gujarati press; press note]
#include "appendixA.typ"

// appendix B
#include "appendixB.typ"

#section[Appendix C: Illegal transfer of funds]
#include "appendixC.typ"
// #section[Appendix D]
#include "appendixD.typ"
#section[Appendix E: Degrading conditions imposed for the grant of consent (raza)]
#include "appendixE.typ"
#section[Appendix F]
#include "appendixF.typ"
#section[Appendix G]
#include "appendixG.typ"
#section[Appendix H: The Prevention of Social Disabilities Bill, 1966]
#include "appendixH.typ"
