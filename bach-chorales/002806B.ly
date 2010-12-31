
% BWV 28 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 28"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a b c d      | % 1
    b~ b8 c d4\fermata  e      | % 2
    c a b b      | % 3
    a2.\fermata  a4      | % 4
    a b c d      | % 5
    b~ b8 c\fermata  d4 e      | % 6
    c a b b      | % 7
    a2.\fermata  e'4      | % 8
    d c b a      | % 9
    b2.\fermata  b4      | % 10
    c d e c      | % 11
    d~ d8 c b4\fermata  b      | % 12
    c d e c      | % 13
    d~ d8 c b4\fermata  e      | % 14
    c8 b a4 b b      | % 15
    a2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e e e d      | % 1
    d g8 fis g4 e      | % 2
    e a a gis      | % 3
    e2. e4      | % 4
    e e e d      | % 5
    d g8 fis g4 e      | % 6
    e a2 gis4      | % 7
    e2. a4      | % 8
    a8 gis a4 a8 gis a a,      | % 9
    e'2. gis4      | % 10
    a g g a      | % 11
    a g8 fis g4 g      | % 12
    g f e a      | % 13
    a8 g fis e d4 e      | % 14
    e a a gis      | % 15
    e2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     c b a a      | % 1
    g8 fis g a b4 b      | % 2
    a8 b c4 f e8 d      | % 3
    c2. c4      | % 4
    c b a a      | % 5
    g8 fis g a b4 b      | % 6
    a8 b c4 f e8 d      | % 7
    c2. c4      | % 8
    d e f8 e e d      | % 9
    gis,2. e'4      | % 10
    e d c8 d e4      | % 11
    a, d d d      | % 12
    g, a8 b c d e4      | % 13
    d a b b      | % 14
    a8 b c4 f e8 d      | % 15
    cis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     a' gis a fis      | % 1
    g2 g,4 gis'      | % 2
    a8 g f e d4 e      | % 3
    a2. a,4      | % 4
    a' gis a fis      | % 5
    g2 g,4 gis'      | % 6
    a8 g f e d4 e      | % 7
    a2. a,4      | % 8
    b c d8 e f4      | % 9
    e2. e4      | % 10
    a b c8 b a g      | % 11
    fis e d4 g f      | % 12
    e d c b8 a      | % 13
    b c d4 g, gis'      | % 14
    a8 g f e d4 e      | % 15
    a,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
