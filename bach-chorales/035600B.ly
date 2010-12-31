
% BWV 356 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 356"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    g'2 a4      | % 1
    bes c d      | % 2
    c2 bes4      | % 3
    a2 g4\fermata       | % 4
    d' ees f      | % 5
    bes, c d      | % 6
    c2 c4      | % 7
    bes2.\fermata       | % 8
    g2 a4      | % 9
    bes c d      | % 10
    c2 bes4      | % 11
    a2 g4\fermata       | % 12
    d' ees f      | % 13
    bes, c d      | % 14
    c2 c4      | % 15
    bes2.\fermata       | % 16
    a2 g4      | % 17
    a bes c      | % 18
    bes2 a4      | % 19
    g2 f4\fermata       | % 20
    bes2 a4      | % 21
    bes c d      | % 22
    d2 c4      | % 23
    d2.\fermata       | % 24
    a2 d4      | % 25
    g, a bes      | % 26
    a2 a4      | % 27
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    d2 a'4~      | % 1
    a8 g f ees d4      | % 2
    g a~ a8 g      | % 3
    g4 fis d      | % 4
    bes' a8 g f4      | % 5
    g f8 ees d4      | % 6
    g ees8 g f ees      | % 7
    d2.      | % 8
    d2 a'4~      | % 9
    a8 g f ees d4      | % 10
    g a~ a8 g      | % 11
    g4 fis d      | % 12
    bes' a8 g f4      | % 13
    g f8 ees d4      | % 14
    g ees8 g f ees      | % 15
    d2.      | % 16
    f2 g4~      | % 17
    g8 f e d c4      | % 18
    f g~ g8 f~      | % 19
    f4 e c      | % 20
    f g d~      | % 21
    d8 g f ees d4      | % 22
    g8 fis g bes a g      | % 23
    fis2.      | % 24
    fis2 fis4      | % 25
    g d d      | % 26
    ees c d8 c      | % 27
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'2 d4      | % 1
    d c bes~      | % 2
    bes a bes8 d      | % 3
    ees a, d c bes4      | % 4
    f' ees d~      | % 5
    d c bes~      | % 6
    bes a8 g a4      | % 7
    bes2.      | % 8
    bes2 d4      | % 9
    d c bes~      | % 10
    bes a bes8 d      | % 11
    ees a, d c bes4      | % 12
    f' ees d~      | % 13
    d c bes~      | % 14
    bes a8 g a4      | % 15
    bes2.      | % 16
    c2 c4      | % 17
    c bes a~      | % 18
    a g a8 c      | % 19
    d g, c bes a4      | % 20
    d c~ c      | % 21
    bes8 ees d c bes4~      | % 22
    bes8 a bes4 ees      | % 23
    a,2.      | % 24
    d2 d4      | % 25
    d a g      | % 26
    g2 fis4      | % 27
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    g4 g' fis      | % 1
    g a bes      | % 2
    e, fis g      | % 3
    c, d g,      | % 4
    bes c d      | % 5
    g, a bes      | % 6
    ees c f      | % 7
    bes,2.      | % 8
    g4 g' fis      | % 9
    g a bes      | % 10
    e, fis g      | % 11
    c, d g,      | % 12
    bes c d      | % 13
    g, a bes      | % 14
    ees c f      | % 15
    bes,2.      | % 16
    f4 f' e      | % 17
    f g a      | % 18
    d, e f      | % 19
    bes, c f,      | % 20
    d' e fis      | % 21
    g a bes      | % 22
    ees,2.      | % 23
    d2.      | % 24
    d8 d, d' c bes a      | % 25
    bes a g fis g4      | % 26
    c a d      | % 27
    g,2. \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Alto")
\book {
\layout { \partpaper }
\score {
<<
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
>>
}
\score {
<<
\new Voice = AAvoiceBA \AAvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Tenor")
\book {
\layout { \partpaper }
\score {
<<
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
>>
}
\score {
<<
\new Voice = ATvoiceCA \ATvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ABvoiceDA \ABvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
