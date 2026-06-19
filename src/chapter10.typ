// Chapter Ten — The Autocratic Dispensation
// Body-only include file for main.typ. The chapter title is supplied by
// main.typ via #chapter[][]. Helper macros are defined locally because
// #include does not expose the calling file's `let` bindings.

#let section(title) = {
  set par(first-line-indent: 0pt)
  v(0.6em)
  text(size: 11.5pt, weight: "bold")[#title]
  v(0.2em)
}

// A quoted document (firman, official letter, notice). Set off from the
// Commission's own prose by indentation and a left rule.
#let quoted(body) = {
  set par(first-line-indent: 0pt, justify: true, leading: 0.7em)
  pad(left: 0.9em)[
    #block(
      inset: (left: 0.7em, top: 0.2em, bottom: 0.2em),
      stroke: (left: 1pt + luma(170)),
    )[#body]
  ]
  set par(first-line-indent: 1.2em, justify: true, leading: 0.72em)
}

// A lettered or numbered clause inside a quoted document.
#let clause(label, body) = {
  grid(
    columns: (1.7em, 1fr),
    row-gutter: 0pt,
    [#label], [#body],
  )
  v(0.35em)
}

Many Dawoodi Bohras live in countries other than India, and almost all of
them have gone there from Gujarat. In these countries the local
#emph[jamaats] have constitutions of their own, democratic in character.
The previous Syedna Sahib had attempted to concentrate all powers in
India, but the jamaats abroad remained, to a large extent, self-governing.
The present Syedna set himself to complete the task of destroying the
democratic character of the jamaats in the countries of East Africa.

The story of how he did this was set out, with documentary proof, by the
Dawoodi Bohra Jamaat Corporation, Birmingham, and the Dawoodi Bohra
\[Welfare\] Society Limited, Britain, in their memorandum dated 19 July
1968 \[day and month uncertain in the source\], which they also submitted
to the Indian High Commissioner. In brief, they state that in Britain they
represent the progressive section of the Dawoodi Bohra community. Most of
their members are people who migrated from East Africa and India, the
majority of them from Uganda. They state that their differences with the
priestly class, and the oppression of that group, have continued since
1965.

Until that time the various jamaats of East Africa had functioned under a
constitution that had been settled after negotiations with the previous
#emph[Da'i]. With the help of this constitution the jamaat had amassed
great wealth — wealth that was not used for the welfare of the needy
members of the community. Such funds were meant to go to beneficial
programmes: education, free and subsidized housing, the support of widows
and orphans, interest-free loans to enable people to start in trade,
medical aid, guest-houses, religious instruction, and the like, provided
as the need arose.

#section[(1) The Firman]

In 1965 the present Syedna, Mohammed Burhanuddin, attempted to introduce a
new constitution. The object of this new constitution was that he should
obtain absolute control over the various #emph[awqaf] boards, the
finances, and the management of the properties of the East African
jamaats — assets equivalent to several million pounds. The attempt met
with a measure of success in Tanzania, but in Kenya and Uganda it was
strongly opposed. He thereupon issued a #emph[firman] imposing a new
constitution; a copy of the firman was annexed to the memorandum. The
firman was issued on 7 Muharram al-Haram 1385 H, corresponding to 25 April
1965, and reads as follows.

#align(center)[#v(0.4em) #text(size: 14pt, weight: "bold")[Firman] #v(0.2em)]

#quoted[
To the believers (#emph[mu'minin]) of East Africa: this firman of ours is
being issued on the basis of our previous two firmans, which were issued
on 16 Muharram al-Haram 1385 H \[the source digit appears to read
1285\]. We now command that:

#clause[(1)][The constitution of the jamaats of East Africa shall be
cancelled, and action upon it suspended; we abrogate it, and suspend
action upon it, from 30 April 1965.]

#clause[(2)][The councils of administration and the boards of trustees
(#emph[mutawallis]) formed under the old constitution shall come to an end
from 21 Muharram al-Haram 1385 H, corresponding to 30 April 1965.]

#clause[(3)][For all the jamaats of East Africa, the basic constitution
declared and proclaimed by us shall come into operation, and shall be
deemed effective from 21 Muharram al-Haram 1385 H, corresponding to 30
April 1965.]

#clause[(4)][Exercising the powers of the rank of #emph[Da'i al-Mutlaq],
and further by virtue of this firman — issued on 16 Muharram al-Haram 1385
H — by both these firmans and the new constitution, which we have bestowed
for the reform of the various jamaats of the believing followers of East
Africa: we, from 1 Muharram al-Haram 1385 H, appoint Bhai Yusuf Najmuddin
and the Sahibzada Syed Jowher Bhai Izzuddin \[name uncertain\] as our
deputies (#emph[na'ib]) for the establishment in East Africa, and grant
to them all or several of the distinct powers and offices that we
ourselves hold; and under the new constitution we grant them the authority
to appoint, and to make use of, the honorary president of the council of
administration, its office-bearers, and members holding all or several
distinct powers and offices.]

#clause[(5)][Bhai Yusuf Najmuddin is our special representative, and to him
is given this authority and direction: that he may appoint any of the
former office-bearers and members of the councils of administration, and
any of the former members of the Dawoodi Bohra Jamaat corporations of East
Africa; and that the office-bearers of the various jamaats shall, on our
behalf, transmit copies of our firmans and of the constitution.]

#clause[(6)][The former office-bearers, members or trustees of the councils
of administration and the boards of trustees, if appointed after this
firman, shall be deemed newly appointed; and in the conduct of their work
they shall be bound to act upon the directions and orders of our special
representative.]

We pray for the good of all the believers.

We further direct that the central council of the Dawoodi Bohra jamaat of
East Africa shall, on 20 Muharram al-Haram 1385 H, be given this firman and
the new constitution, which we have bestowed for the administration of the
various jamaats of the believing followers of East Africa. As is stated in
this separate firman, our special representative, Bhai Yusuf Najmuddin, is
granted the authority. The present constitution of all the jamaats of East
Africa shall stand abrogated, and as regards the future code of conduct of
the jamaats, directions shall be given in this separate firman.
]

It has been pointed out that the new constitution of the East African
jamaat is wholly undemocratic, and that under it very extensive powers are
conferred upon the Da'i. The memorandum quotes the following clauses of
the new constitution.

#quoted[
In a sub-clause of clause 3, which deals with the aims and objects of the
jamaat, it is laid down that no donation of any kind, and no endowed
(#emph[waqf]) property, shall be accepted from non-Dawoodi-Bohra
individuals, or from any corporation or institution run under the
management of non-Dawoodi-Bohra persons, without obtaining the permission
of His Holiness the Da'i al-Mutlaq.

In a further sub-clause of clause 3 the aims and objects are stated thus:
to administer and maintain the property and institutions endowed for, or
acquired for, the sphere and use of the Dawoodi Bohra community, upon the
basis of the principles laid down by His Holiness the Da'i al-Mutlaq.

A clause provides that His Holiness the Da'i al-Mutlaq may, for whatever
period and on whatever conditions he thinks fit, at his own pleasure
nominate any person as a member of the corporation.

A sub-clause of clause 10 \[number uncertain\] provides that any person
shall cease to be a member of the corporation if His Holiness the Da'i
al-Mutlaq, at his absolute will and pleasure, removes him from membership
of the corporation.

A sub-clause of clause 12 \[number uncertain\] provides that any person
shall cease, from that time, to be a member of the council of
administration if His Holiness the Da'i al-Mutlaq, at his own will and
pleasure, removes him from membership of the council.

Clause 26 \[number uncertain\] provides for the special representative of
His Holiness: His Holiness the Da'i al-Mutlaq has full authority to
appoint any person, on whatever conditions and for whatever period he
thinks fit, at his own pleasure, to represent him in any corporation. At
whatever meetings, functions and celebrations of the corporation, the
council of administration and the sub-committees, the representative or
special representatives of His Holiness shall be present, they shall have
precedence over all others present, shall exercise the powers conferred by
His Holiness the Da'i al-Mutlaq, and shall perform the office.

A sub-clause of clause 25 provides: (a) any person shall cease to be a
member of the board of trustees from the time when His Holiness the Da'i
al-Mutlaq, at his own will and pleasure, removes him from membership of
the board.

The clause relating to amendment of the constitution provides: His
Holiness the Da'i al-Mutlaq may, by virtue of his rank and at his own will
and pleasure, abrogate or amend the existing clauses, or suspend, abrogate
and amend them.

A clause provides: the corporation, the council of administration, the
board of trustees, and the committees and sub-committees shall, in all
matters relating to their office, performance and powers, act upon the
directions and counsel of His Holiness the Da'i al-Mutlaq.

A further clause \[number uncertain\] is as follows: (a) if, in the opinion
of His Holiness the Da'i al-Mutlaq, any decision, resolution or action of
the corporation, or of the council of administration, or of the board of
trustees, or of any committee or sub-committee, is contrary to the objects
of the corporation, or contrary to the interests of the Dawoodi Bohra
community, then His Holiness the Da'i al-Mutlaq — by virtue of his
absolute capacity and the powers of that rank — shall have, and shall
retain, the authority to cancel or abrogate such decision, resolution or
action; and in this matter the decision of the Da'i al-Mutlaq shall be
final and conclusive.

The clause relating to winding-up of institutions provides: His Holiness
the Da'i al-Mutlaq may, at his own will and pleasure, close down or wind up
the corporation; and if the corporation is closed or wound up, then after
its debts are paid and its liabilities discharged, any property remaining
shall not be distributed among the members of the corporation, but shall
be transferred to some other corporation having similar charitable objects
— it being forbidden to distribute the property, institutions and income
among the corporation's own members. In appointing such institutions or
corporations the Da'i al-Mutlaq shall himself, at the time of winding-up,
make the arrangement; and if such an arrangement cannot be made, then that
property shall be applied to some charitable object.

In the clause defining "Dawoodi Bohra," "the Dawoodi Bohra community" and
"the community," the following meaning is given, and only those persons
shall be included who are Shia Isma'ili Tayyibi Dawoodi Bohra Muslims, who
believe in giving the #emph[Misaq] (oath of allegiance) to the Da'i
al-Mutlaq present in the age and in obeying him, and who acknowledge His
Holiness Syedna Mohammed Burhanuddin Sahib — who, in uninterrupted
succession from his predecessors, is the representative of the hidden Imam
(#emph[Imam-e-Ghaib]) upon the face of the earth, and the 52nd Da'i
al-Mutlaq — and who acknowledge themselves to be his followers. But those
Muslims of the Shia Isma'ili Tayyibi Dawoodi Bohra community who have not
yet attained puberty shall be regarded as Dawoodi Bohras until such time
as, on reaching the age of puberty, they give the Misaq in accordance with
the principles of the #emph[shariah] and conduct themselves in accordance
with the definition of a Dawoodi Bohra stated here.
]

When the application was made to register this constitution, the Minister
of \[Mineral and\] Water Resources of Uganda, in his letter dated 1 July
1968 addressed to the Secretary of the Dawoodi Bohra Jamaat Corporation,
said the following.

#quoted[
I have received your applications of 29 June 1968 and 1 July 1968, with
which is enclosed the affidavit of the majority of your community.

\[Paragraph 3.\] My view is that every community should have authority over
its own affairs, but in a manner that accords with the wishes of the
majority of its members. From my inquiries it appears that the
constitution registered on 30 June 1968 does not have the wishes, the
approval, or the acceptance of the majority of your community. I have
reached a final and conclusive conclusion on the matter, and accordingly I
today issue my order cancelling your decision of 30 June 1968. In 1928
your community had a constitution registered, and it is that same one
which is in force. You may now register the new constitution, on condition
that two-thirds of the members of your community agree to it and give
their consent and approval.
]

When the Bohras refused to accept the new constitution, the Syedna,
exercising his powers, started a boycott against them, so as to compel
their obedience. The Da'i al-Mutlaq issued notices in the name of the
president, Mr Ghulam Abbas Raja Bhai, and of the local priest
(#emph[peshwa]), Mr Ibrahim Sheikh Mohammed Ali. Photocopies of these
notices have been placed before us. Both were issued on 29 July 1968. We
reproduce the entire text of one of them.

#quoted[
Dated 29 July 1968 \
Mr Ibrahim Sheikh Mohammed Ali \
Post Office Box 32\[?\]14\[?\] — Kampala

Respected Sir,

In accordance with the order of the 52nd Da'i al-Mutlaq, His Holiness Dr
Syedna Mohammed Burhanuddin, I write to you as follows.

#clause[(a)][The Dawoodi Bohras are a sect of Islam. Upon every follower of
the Dawoodi Bohra community, if he wishes to remain within it, lies the
religious obligation (#emph[fariza]) of holding certain beliefs, of
declaring them, and of remaining firm upon them. This is a basic and
essential condition, which under no circumstances may be abandoned.]

#clause[(b)][The belief of the Dawoodi Bohras is that God is One; that
Muhammad is the Messenger of God and His Prophet; that Maulana Ali was the
legatee (#emph[wasi]) and successor of the Prophet (peace be upon him);
that from them a chain of the Imamate began, each Imam nominating his
deputy (#emph[na'ib]) as his successor; that Imam Tayyib withdrew into
concealment of his own will; that even today there is present upon the
face of the earth an Imam descended in direct line from the Holy Prophet
(peace be upon him); and that during the concealment of the Imam, the Da'i
al-Mutlaq spreads the mission (#emph[da'wat]) of the Imam.]

#clause[(c)][The Dawoodi Bohras also hold this belief: that the Imams, in
their capacity as the highest religious leaders, teach the methods of
worship; that they interpret the Holy Qur'an and the articles of faith;
that they alone are authorized to give commands and guidance concerning
the religion and the affairs of the community; and that the authority to
guide, to confer authority, and to give permission for the performance of
all the religious customs and observances of the Dawoodi Bohra community
belongs to the Imams alone. Furthermore, the management, organization and
regulation of all the property named in the name of God and used for the
welfare of the followers belongs to the Imams alone.]

#clause[(d)][The Dawoodi Bohras also hold this belief: that the Da'i
al-Mutlaq, in his capacity as the representative and successor of the
hidden Imam upon the face of the earth, holds and exercises, in the Imam's
name, all the authority and power of the Imam. The position of the Da'i
al-Mutlaq is an essential part of the Dawoodi Bohra community. To have
faith in his spiritual mission and his administrative competence is a bond
that keeps the community united; he maintains discipline and keeps the
community ordered; he is the guarantor of the purity of fellowship and the
safeguarding of brotherhood. He alone is authorized to command in all
matters relating to the religion and the community, and to perform the
religious customs and observances; and the management of all the property
is carried on under his supervision, with his permission and approval.]

Upon every member of the Dawoodi Bohra community, by reason of this
belief, lies the religious obligation of giving the Misaq to the Da'i
al-Mutlaq present in the age and, in a spirit of obedience, of fulfilling
all the conditions of the Misaq. By reason of the articles of faith of the
Dawoodi Bohra community and of the Misaq given, upon every follower lies
the obligation of carrying out, and acting upon, the firman of His
Holiness the Da'i al-Mutlaq. To deviate from the firman is equivalent to
breaking the Misaq, and on that account His Holiness the Da'i al-Mutlaq
acquires this authority: that he may, at his own will, deprive the breaker
of the Misaq of any one or of all the rights and privileges of the Dawoodi
Bohra community.

#clause[(b)][#emph[\[so lettered in the source\]] Exercising the powers,
rights, distinctions and office of the rank of Da'i al-Mutlaq, His Holiness
Dr Syedna Mohammed Burhanuddin Sahib, in his capacity as the 52nd Da'i
al-Mutlaq, issued two firmans, on 25 April and 26 April 1965; both became
operative from 30 April 1965. These firmans bind all the Dawoodi Bohra
followers resident in East Africa to His Holiness the Da'i al-Mutlaq.]

#clause[(c)][You have plainly refused to accept these firmans of the 52nd
Da'i al-Mutlaq, His Holiness, and to act upon them. This conduct is
equivalent to breaking the Misaq, and is contrary to, and a violation of,
the powers of His Holiness the Da'i al-Mutlaq. Moreover, with the intent
of defaming the rank of the Da'i al-Mutlaq and of trampling upon his
powers — and/or with malicious intent — you have persisted in propagating
your own ideas. Your activities and conduct are harmful to the powers and
rank of His Holiness the Da'i al-Mutlaq, and damaging to the interests of
the Dawoodi Bohra community.]

#clause[(d)][From 29 April 1965 to the present date you have,
indiscriminately and without authority, and without the knowledge,
authority or permission of His Holiness the Da'i al-Mutlaq, performed the
ceremonies of the community and of the religion. You have administered the
Misaq, led the prayers (#emph[namaz]), led the funeral prayers, and
performed the shrouding and burial of the dead, as well as other
ceremonies of the community and the religion — the authority to perform
which belongs only to His Holiness the Da'i al-Mutlaq or to the
representative appointed by him. Your acts are equivalent to a direct
challenge to, and a rejection and trampling of, the powers, position and
rank of His Holiness the Da'i al-Mutlaq, and to the starting and promoting
of a movement of disruption, destruction and disorder against the
religious institution of the hidden Imam upon the face of the earth.]

#clause[(e)][You have directly fostered customs and observances with such
persons and institutions concerning whom you know that His Holiness the
Da'i al-Mutlaq has imposed #emph[bara'at] (excommunication) upon them, and
with whom His Holiness the Da'i al-Mutlaq, and his loyal followers, have
severed relations. Furthermore, you have directly fostered observances
with such individuals and institutions whose objects, policies and
activities are harmful to the #emph[Da'wat-e-Hadiya] and to the Dawoodi
Bohra community.]

#clause[(f)][Through your own conduct, activities and acts you have caused
the abandonment of the creed. This is contrary to the basic articles of
faith and the principles of the Fatimi religion, and a violation of the
principles of the Dawoodi Bohra community; it is a violation of the
\[authorized\] methods, customs and observances of the religion or the
creed. You have repeatedly acted in violation of the Misaq, as appears in
the light of the facts set out in paragraphs 3 to 5 above.]

#clause[(g)][In the light of the facts set out in paragraphs 3 to 5 above,
you have repeatedly committed grave offences. As a consequence of any one
of these offences, from the religious point of view, and in the opinion of
His Holiness the Da'i al-Mutlaq, it is necessary that you be expelled from
the Dawoodi Bohra community.]

#clause[(h)][Notwithstanding the previous warning and notice given to you by
His Holiness the Da'i al-Mutlaq, or by those on his behalf, you did not
reform yourself, nor did you tender any apology for your objectionable
conduct, activities and statements; rather, on the contrary, with
malicious intent, you continued this course of objectionable speech and
conduct. His Holiness the 52nd Da'i al-Mutlaq has therefore directed me to
inform you, by means of this writing, once again of His Holiness's warning
concerning your aforesaid speech, conduct and activities. You are warned
once more, and are called upon to reform yourself and to express regret
for the aforesaid conduct, speech and acts.]

#clause[(i)][His Holiness the 52nd Da'i al-Mutlaq has further directed me to
give you notice that, if you do not change your conduct, and do not, within
two months from the date of this writing, express regret, then His
Holiness the 52nd Da'i al-Mutlaq will publicly censure you and will sever
his relations with you; and the followers and members of the jamaat, in
the assembly of the jamaat, shall as a matter of rule be required to sever
their relations with you; and you shall be expelled from the membership of
the Dawoodi Bohra community.]

And this notice I give to you by means of this writing.

Your sincere servant, \
Sd/- \
Secretary
]

A notice of the same kind was also sent in the name of Ghulam Abbas Raja
Bhai, and both notices bore the signature of the Syedna's secretary. From
this it appears plainly that the Dawoodi Bohras living in the various
regions of East Africa — Uganda, Kenya and Tanzania — by electing their
own administrative councils, had been managing their own affairs under a
democratic constitution. As we have seen earlier, the predecessor of the
present Syedna, in India, brought the self-government of the local jamaats
to an end by abolishing all their powers, and took those powers into his
own hands. The present Syedna, using his religious position, carried
through these proceedings in the countries of East Africa.

The clauses of the new constitution are instructive. The constitution
gives to the Da'i the authority to expel any member from the jamaat, and
to annul any decision of the council; he may also suspend the members of
the administrative committee; and he may alter or abrogate any decision
the jamaat has taken. Not only this: at his own will he may amend the
constitution, and may also abrogate it. The conduct of the Syedna comes
into clear light when one sees that the lives of all the people of the
community have passed into the grip of a single person — who is the Da'i
al-Mutlaq of this community.

It is therefore no surprise that the Government of Uganda, being
democratic, refused to attest a constitution of this kind. Nor is it any
surprise that the people of the community — who for a long time had been
managing their own affairs, and who were unsettled by this matter —
expressed their feelings, and gave their views in favour of having the
constitution reopened and reformed. But, by using the weapon of bara'at
and of anathema (#emph[la'nat]) against those who supported democracy
within the community, they were cowed into silence. The reasons given for
their expulsion are religious reasons; yet it appears that the Syedna
makes no distinction between religious and non-religious matters. For, on
his view, a violation of any firman of any kind whatever is a violation
against him, and a breaking of the Misaq, which renders the violator
liable to be cast out of the community. This confirms the explanation of
the Misaq that we gave in the chapter dealing with its conditions.
