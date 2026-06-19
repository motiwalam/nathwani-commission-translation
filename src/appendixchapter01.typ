#import "lib.typ": *

// =====================================================================
//  APPENDIX (to Chapter One) — The Questionnaire
// =====================================================================

#heading(level: 1, numbering: none)[Appendix to Chapter I: The Questionnaire]

// ---- Local helpers (scoped to this file) ----------------------------
#let qsec(letter, title) = {
  set par(first-line-indent: 0pt, justify: false)
  v(1.1em)
  align(center)[
    #text(size: 10pt, tracking: 2.5pt, fill: luma(90))[SECTION "#letter"]
    #v(0.35em)
    #text(size: 14pt, weight: "bold", hyphenate: false)[#title]
  ]
  v(0.7em)
}

#let q(num, body) = {
  set par(first-line-indent: 0pt, justify: true)
  v(0.55em)
  grid(
    columns: (1.8em, 1fr),
    column-gutter: 0.2em,
    [#text(weight: "bold")[#num.]], [#body],
  )
}

#let sub(label, body) = {
  pad(left: 1.9em)[
    #set par(first-line-indent: 0pt, justify: true)
    #v(0.18em)
    #grid(
      columns: (1.6em, 1fr),
      column-gutter: 0.2em,
      [(#label)], [#body],
    )
  ]
}

#let choices(body) = {
  pad(left: 1.9em, top: 0.18em)[
    #set par(first-line-indent: 0pt, justify: false)
    #text(fill: luma(45))[#body]
  ]
}

#let note(body) = {
  pad(left: 1.9em, top: 0.15em)[
    #set par(first-line-indent: 0pt, justify: false)
    #text(size: 9pt, style: "italic", fill: luma(70))[#body]
  ]
}

#let blanks(n) = {
  pad(left: 1.9em, top: 0.1em)[
    #set par(first-line-indent: 0pt, justify: false, leading: 0.95em)
    #for i in range(n) {
      [(#("abcdefgh".at(i)))#h(0.5em)#box(width: 9em, repeat[#text(fill: luma(170))[.]])\ ]
    }
  ]
}


// =====================================================================
//  COVERING LETTER
// =====================================================================
#set par(first-line-indent: 0pt, justify: true, leading: 0.72em)

#align(right)[
  #set par(first-line-indent: 0pt, justify: false, leading: 0.85em)
  Ahmedabad \
  12 February 1978
]
#v(0.4em)

Dear Sir / Madam,

#set par(first-line-indent: 1.2em)
You may be aware that the Executive Council of Citizens for Democracy
has appointed a commission to inquire into the alleged violation of the
human rights of the reform-minded members of the Dawoodi Bohra
community — at the hands of the Bohra clerical class and their
associates, in the name of the Mullaji — and to prepare a report. Its
chairman is Shri Narendra Nathwani, a current Member of the Lok Sabha
and a former judge of the Bombay High Court. The members of the
commission are as follows:

#set par(first-line-indent: 0pt, leading: 0.7em)
#pad(left: 0.6em)[
#grid(
  columns: (1.6em, 1fr),
  row-gutter: 0.6em,
  [1.], [Shri V. M. Tarkunde — a retired judge of the Bombay High Court, General Secretary of Citizens for Democracy, and President of the Supreme Court Bar Association.],
  [2.], [Dr. (Miss) Aloo Dastoor — Head of the Department of Political Science, Bombay University.],
  [3.], [Dr. Moin Shakir — Head of the Department of Politics, Marathwada University, Aurangabad.],
  [4.], [Dr. Alam Khundmiri — Head of the Department of Philosophy, Osmania University, Hyderabad.],
  [5.], [Shri C. T. Daru — Member-Secretary.],
)
]
#v(0.3em)

#set par(first-line-indent: 1.2em, leading: 0.72em)
The commission has prepared a questionnaire for this inquiry, which is
enclosed herewith. If, after reading it carefully, you send correct and
accurate answers, it will greatly assist the work of the inquiry. If the
form does not leave enough space for an answer, you may use a separate
sheet of paper for the purpose.

Kindly fill in the form, sign it, and return it — together with your
name and full address — to the address given below:

#set par(first-line-indent: 0pt, justify: false, leading: 0.85em)
#pad(left: 1.2em)[
The Nathwani Commission \
c/o C. T. Daru \
9, New Valkapuri Society \
Gulbai Tekri Road \
Ahmedabad 380015 (India)
]
#v(0.3em)

#set par(first-line-indent: 1.2em, justify: true, leading: 0.72em)
If for any reason you do not wish your name to be disclosed to others,
please make this clear in your letter. All the information entered on the
form will be kept entirely confidential. Please also state clearly
whether or not you would be willing to give oral testimony in connection
with the information you provide.

It is hoped that you will send your answers within twenty-one days of
receiving this questionnaire.

It must also be made clear that the commission's purpose is not to
investigate the truth or falsity of the community's religious beliefs. It
will be the commission's duty not to allow even the slightest harm, in
letter or in spirit, to the right to religious freedom guaranteed by the
Constitution of India.

We hope that you will send your answers as soon as possible and so
cooperate in the commission's work.

#v(0.5em)
#align(right)[
  #set par(first-line-indent: 0pt, justify: false, leading: 0.85em)
  Yours faithfully, \
  C. T. Daru \
  For the Commission
]

// =====================================================================
//  QUESTIONNAIRE
// =====================================================================
#v(1.3em)
#set par(first-line-indent: 0pt, justify: false)
#align(center)[
  #text(size: 17pt, weight: "bold", tracking: 1pt)[QUESTIONNAIRE]
]

// ---------------------------------------------------------------------
//  SECTION A
// ---------------------------------------------------------------------
#qsec("A")[Civil Liberty and Human Rights]

#q[1][Do you agree that in India — irrespective of religion, community, or
race — every community enjoys equal rights and freedom in social matters?]
#choices[(1) Yes #h(2em) (2) No #h(2em) (3) Don't know]

#q[2][If not, name the community that does not enjoy these rights.]

#q[3][In your opinion, do you have the right to express your views on the
affairs of your own community?]
#choices[(1) Yes #h(2em) (2) No]

#q[4][If not, why not?]
#sub("a")[Only the Mullaji and his agents have that right.]
#sub("b")[It is against the social traditions of the community.]
#sub("c")[It is contrary to religious tradition.]
#sub("d")[You fear the consequences.]
#sub("e")[Some other reason.]

#q[5][Do you have the right to:]
#sub("a")[form any union, association, mandal, or cooperative organization?]
#sub("b")[establish any welfare institution — for example a school, society,
bank, trust (#emph[waqf]), travellers' lodge, orphanage, cooperative
store, or home for widows and the elderly — and / or to manage it
(whether from your own funds or from donations collected from the
public)?]
#sub("c")[mobilize the members of the community in order to shape public
opinion about its affairs?]
#sub("d")[support, or become a member of, any organization that seeks to
bring about reform in the community?]
#sub("e")[publish any newspaper or journal?]
#sub("f")[read any newspaper or magazine without first obtaining the
Syedna's permission?]

#q[6][In your opinion, should the permission of the religious head be
obtained in these matters?]
#choices[(1) Yes #h(2em) (2) No]

#q[7][If yes, then because:]
#sub("a")[it is the tradition of the community to do so;]
#sub("b")[it is a good thing to obtain the religious head's blessing before
beginning any undertaking;]
#sub("c")[our religious principles require it;]
#sub("d")[failing to do so makes one deserving of God's wrath;]
#sub("e")[\[blank\].]

#q[8][If not, then because:]
#sub("a")[it is contrary to self-respect;]
#sub("b")[it is contrary to the country's constitution;]
#sub("c")[it involves financial and other difficulties;]
#sub("d")[it violates the fundamental human rights provided by the Charter
of the United Nations.]

#q[9][When permission was granted, was any condition imposed that obstructs
your fundamental rights and freedom?]
#choices[(1) Yes #h(2em) (2) No]

#q[10][If yes, list those conditions.]
#blanks(4)

#q[11][In the management of institutions started with the Mullaji's
permission, did you — or any person known to you — face interference from
the Mullaji or any of his agents?]
#choices[(1) Yes #h(2em) (2) No]

#q[12][If yes, describe the difficulties that arose.]

#q[13][In your opinion, according to the Qur'an, should the permission of
the religious head and his agents be obtained for the above activities?]
#choices[(1) Yes #h(2em) (2) No]

#q[14][Have you — or any other person known to you — done any of the things
mentioned above without obtaining the permission of the religious head or
his agent?]
#sub("1")[No.]
#sub("2")[I have done so.]
#sub("3")[A relative, friend, or acquaintance of mine has done so.]
#note[(Kindly write the name of the person and the relationship.)]

#q[15][If the things mentioned in (2) or (3) were done, what was the
consequence?]
#sub("a")[Social boycott.]
#sub("b")[Excommunication (being cast out of the community).]
#sub("c")[Discrimination.]
#sub("d")[Oppression.]
#sub("e")[An order to close down or wind up the institution.]
#sub("f")[Some other consequence.]

#q[16][In your opinion, do these people deserve such treatment?]
#choices[(1) Yes #h(2em) (2) No]

#q[17][If yes, then because:]
#sub("a")[they have violated religious commandments;]
#sub("b")[they should be punished for breaking religious traditions;]
#sub("c")[if they do not abide by our beliefs and traditions, why do they
wish to remain in our community?]
#sub("d")[\[blank\];]
#sub("e")[\[blank\].]

#q[18][If not, then because:]
#sub("a")[there is nothing wrong in not obtaining permission;]
#sub("b")[within the bounds of the law, every person has the right to act
according to his own will;]
#sub("c")[\[blank\];]
#sub("d")[\[blank\];]
#sub("e")[\[blank\].]

#q[19][Kindly state whether the following statements are true or false.
#h(0.6em) #text(fill: luma(45))[(True / False)]]
#sub("a")[An organized campaign is being carried on against the
reform-minded Bohras.]
#sub("b")[In this campaign, school children are being used.]
#sub("c")[The children of reform-minded Bohras who study in Bohra schools
are harassed and troubled.]
#sub("d")[The reformists are bent on splitting the community.]
#sub("e")[By spreading false stories, the reformists are bent on diminishing
the prestige of our religion. #text(size: 8.5pt, style: "italic", fill: luma(90))[\[reading of one word uncertain\]]]

#q[20][Are you free to:]
#sub("a")[cast your vote for the party or candidate of your choice?
#h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.5em) (2) No]]
#sub("b")[stand as a candidate in general or municipal elections without
obtaining the religious head's permission? #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.5em) (2) No]]

#q[21][Is any direct or indirect pressure put on the members of your
community to vote only for those candidates who — if they belong to the
community — have obtained the religious head's permission, or who — if
they belong to another community — have received the religious head's
blessing?]
#choices[(1) Yes #h(2em) (2) No]

#q[22][On all invitation cards, in letters written to the religious head
and his officials, and in other community correspondence, is it
obligatory in your community to write #emph[Abd-e-Syedna] ("slave of the
Syedna") for a man and #emph[Amat-e-Syedna] ("bondmaid of the Syedna")
for a woman?]
#choices[(1) Yes #h(2em) (2) No]

#q[23][If someone fails to do so, what is the consequence?]
#sub("a")[Social boycott. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("b")[Excommunication. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("c")[Discrimination. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("d")[Oppression. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("e")[Consent (#emph[raza]) for marriages is withheld. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("f")[Some other consequence.]

#q[24][Do you agree that the following measures are necessary in order to
preserve every citizen's access to civil and human rights?]
#sub("a")[The 1955 law for the protection of civil rights should be amended
to include every Indian citizen, without distinction of religion or
community.]
#sub("b")[\[blank\].]
#sub("c")[\[blank\].]
#sub("d")[\[blank\].]

// ---------------------------------------------------------------------
//  SECTION B
// ---------------------------------------------------------------------
#qsec("B")[Social Boycott and Excommunication]

#q[1][In your opinion, is the practice of #emph[bara'at] (excommunication)
and social boycott in conformity with the principles of the Shia Isma'ili
Tayyibi sect of Islam?]
#choices[(1) Yes #h(2em) (2) No]

#q[2][Is #emph[bara'at] or social boycott practised in your community?]
#choices[(1) Yes #h(2em) (2) No]

#q[3][If yes, then this practice:]
#sub("a")[In which year did it begin?]
#sub("b")[Who started it?]
#sub("c")[Through whom was it begun?]
#sub("d")[How is the public informed of it?]
#sub("e")[How is it enforced?]

#q[4][If you know of any, give details of the persons or families who have
been socially boycotted:]
#pad(left: 1.9em, top: 0.2em)[
  #set par(first-line-indent: 0pt, justify: false)
  #table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: 5pt,
    align: (center, left, left, left),
    stroke: 0.5pt + luma(160),
    table.header(
      [], [*Name of person\ or family*], [*Year boycott\ imposed*], [*Reason for\ the boycott*],
    ),
    [a], [], [], [],
    [b], [], [], [],
    [c], [], [], [],
    [d], [], [], [],
    [e], [], [], [],
  )
]

#q[5][State whether the following statements are true or false (if true,
illustrate with examples):]
#sub("a")[In order to socially boycott a person or family, divorces were
brought about between husband and wife, or organized efforts were made to
do so.]
#sub("b")[People were forced, against their wishes, to socially boycott a
person or family.]
#sub("c")[Members of the community are strictly forbidden to buy any goods
from the shop or factory of a person or family that has been socially
boycotted.]
#sub("d")[Bohra employers are compelled to dismiss from employment a Bohra
employee who — or whose family — has been socially boycotted.]
#sub("e")[Persons or families who are socially boycotted are forcibly
prevented from entering the community's mosques and so barred from
worship.]
#sub("f")[Those who are socially boycotted have been prevented — by force or
by other means — from burying the dead of their households in the public
cemeteries set aside for Bohras.]
#sub("g")[Because one connected party was socially boycotted, a father,
mother, or spouse has been separated from their children (the latter
being cut off from the former).]
#sub("h")[In the mosques, the Mullaji or his agent has uttered curses
against the Bohras who work for social reform and against those who
support them in principle, and has created an atmosphere of hatred toward
the reformers.]
#sub("i")[On several occasions the Mullaji or his agent has directed the
worshippers in the mosque to wage #emph[jihad] against the Bohras working
for social reform.]
#sub("j")[Social reformers have been attacked and threatened inside the
mosques.]
#sub("k")[For families who are socially boycotted, it is almost impossible
to arrange marriages within the community.]
#sub("l")[Of the intellectuals and social reformers who voiced even the
slightest dissent between 1916 and 1948, \[the account continues\] — they
were excommunicated without even being given a hearing.]
#sub("m")[Such cases of excommunication, carried out in this manner, have
been taken to the courts.]
#sub("n")[After the law to prevent excommunication was enacted in Bombay in
1948–49, the practice of excommunication in the Bohra community came to
an end.]
#sub("o")[Before the suit filed in 1917 by the Advocate General of Bombay —
acting as protector of the public, in respect of the public trusts under
the Mullaji's control #text(size: 8.5pt, style: "italic", fill: luma(90))[\[one clause uncertain\]] — no one used to be
excommunicated or socially boycotted on social (as opposed to religious)
grounds.]
#sub("p")[After that suit was filed in the Bombay High Court, the religious
head revived the practice of excommunication so that no member of the
community would dare to oppose the Mullaji.]

#q[8][Does the religious head continue the practice of excommunication even
today?]
#choices[(1) Yes #h(2em) (2) No]

#q[9][If yes, was it done after the matter had been placed before the
congregation (#emph[jamaat])?]
#choices[(1) Yes #h(2em) (2) No]

#q[10][Was the person concerned given an opportunity to be heard?]
#choices[(1) Yes #h(2em) (2) No]

#q[11][It is enforced on the following grounds:]
#sub("a")[deviation from religious belief; #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]
#sub("b")[the advocacy of social reforms that have no bearing on religious
belief. #h(0.6em) #text(fill: luma(45))[(1) Yes #h(1.2em) (2) No]]

#q[12][If any case of excommunication has come to your knowledge since 1949,
please record it:]
#pad(left: 1.9em, top: 0.2em)[
  #set par(first-line-indent: 0pt, justify: false)
  #table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: 5pt,
    align: (center, left, left, left),
    stroke: 0.5pt + luma(160),
    table.header(
      [], [*Name of person\ or family*], [*Year*], [*Reason*],
    ),
    [a], [], [], [],
    [b], [], [], [],
    [c], [], [], [],
  )
]

#q[13][In your opinion, what steps are needed to put these conditions right?]
#sub("a")[Appropriate legislation.]
#sub("b")[\[blank\].]
#sub("c")[\[blank\].]

#note[Items numbered (6) and (7) in this section appear in the original as a
short series of yes / no statements continuous with those above; the
question numbering of the manuscript is irregular and has been preserved
as written.]

// ---------------------------------------------------------------------
//  SECTION C
// ---------------------------------------------------------------------
#qsec("C")[Taxes, Levies, Offerings (Nazrana), and Salaam]

#q[1][Do you have to give any tax, levy, offering (#emph[nazrana]), or
#emph[salaam] to the Mullaji or his agents?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, please explain:]
#pad(left: 1.9em, top: 0.1em)[
  #set par(first-line-indent: 0pt, justify: false)
  #table(
    columns: (auto, auto, auto, auto, auto, 1fr),
    inset: 5pt,
    align: center + horizon,
    stroke: 0.5pt + luma(160),
    table.header(
      [], [*Tax*], [*Levy*], [*Nazrana*], [*Salaam*], [*Amount / Purpose*],
    ),
    [a], [], [], [], [], [],
    [b], [], [], [], [], [],
    [c], [], [], [], [], [],
    [d], [], [], [], [], [],
  )
]

#q[2][In your opinion, is it necessary to do this?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, why?]
#sub("1")[it is the custom of our community;]
#sub("2")[the money from it helps to increase the welfare of the community;]
#sub("3")[out of fear and intimidation;]
#sub("4")[some other reason.]
#note[If these are collected, then:]
#sub("1")[by whom?]
#sub("2")[monthly, quarterly, half-yearly, or annually?]
#note[If not, why not?]
#sub("1")[there should be no coercion;]
#sub("2")[it breeds corruption;]
#sub("3")[some other reason.]

#q[3][What happens if one fails to do this?]
#sub("1")[Social boycott.]
#sub("2")[Expulsion from the community.]
#sub("3")[Discriminatory treatment.]
#sub("4")[Retaliatory action.]
#sub("5")[Permission for marriages or burials is withheld.]
#sub("6")[Some other consequence.]

#q[4][For the schools, colleges, hospitals, dispensaries, mosques,
travellers' lodges, madrasas, and the like that are started — directly or
indirectly — through the chief Mullaji or his representatives, do you have
to give donations (#emph[chanda])?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, how much have you paid, annually or on average?]

#q[5][Is it true that the government or the local civil authorities give
the community land for burying its dead?]
#choices[(1) Yes #h(2em) (2) No]

#q[6][Is the cemetery of your locality one given by the government, or by
the local civil body?]
#choices[(1) Yes #h(2em) (2) No]

#q[7][Is there a practice of reserving a grave-plot for oneself or one's
family by paying the price in advance?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, how is the price for reserving the plot fixed?]

#q[8][Have you — or anyone known to you — paid any sum for a burial; or has
any member of your family paid any price for burial in a particular
cemetery?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, give details.]

#q[9][Is there any tax or levy, under the name #emph[Haqq al-Nafs], for the
salvation of the deceased (a levy upon the dead)?]
#choices[(1) Yes #h(2em) (2) No]

#q[10][For whom is the levy called #emph[Nazr-e-Maqam] intended?]

#q[11][Who collects it?]

#q[12][Is there a practice of the chief Mulla conferring titles
(#emph[khitab]) on members of the community?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes:]
#sub("1")[on what basis?]
#sub("2")[the nature of the titles;]
#sub("3")[how many?]
#sub("4")[anything else.]

#q[13][On what occasions are these titles conferred?]

#q[14][What merits are looked for in conferring these titles?]

#q[15][At the time of receiving such a title, does the recipient — and do
the members of his family — present any offering (#emph[nazrana]) to the
chief Mulla?]
#choices[(1) Yes #h(2em) (2) No]
#note[If yes, how much?]

#q[16][Are receipts given for the payments mentioned above?]
#choices[(1) Yes #h(2em) (2) No]

#q[17][In your opinion, should the chief Mulla or his agents not be required
to render an account of these sums to the community?]
#choices[(1) Yes #h(2em) (2) No]

#q[18][#text(weight: "bold")[(A)] If yes, then because:]
#sub("1")[the community has the right to know how these sums are used;]
#sub("2")[this would help prevent the misuse of such funds;]
#sub("3")[some other reason.]
#pad(left: 1.8em, top: 0.2em)[#text(weight: "bold")[(B)] If no, then because:]
#sub("1")[it is not the custom of the community;]
#sub("2")[it would amount to expressing distrust of the chief Mulla;]
#sub("3")[fear of the consequences;]
#sub("4")[some other reason.]

// ---------------------------------------------------------------------
//  SECTION D
// ---------------------------------------------------------------------
#qsec("D")[Miscellaneous Matters]

#set par(first-line-indent: 0pt, justify: true)
Will you throw light on the various customs and practices of the community
— for example, death rites, feasts (#emph[da'wat]), the celebration of
festivals, the naming of a child, the keeping of a beard, personal
grooming, the wearing of a particular kind of dress, and so on?

#v(1.2em)
#pad(left: 0.4em)[
  #set par(first-line-indent: 0pt, justify: false, leading: 1.1em)
  Name: #box(width: 12em, repeat[#text(fill: luma(170))[.]]) \
  Address: #box(width: 11em, repeat[#text(fill: luma(170))[.]]) #h(1.2em) Signature: #box(width: 7em, repeat[#text(fill: luma(170))[.]])
]

// restore the document's body defaults
#set par(first-line-indent: 1.2em, justify: true, leading: 0.72em)
