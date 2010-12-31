
% BWV 311 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 311"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     d cis b cis8 d      | % 1
    e4 fis e d      | % 2
    cis2\fermata  r4 e      | % 3
    d cis d b      | % 4
    a fis8 g a4 g      | % 5
    fis2.\fermata  cis'4      | % 6
    d cis b cis8 d      | % 7
    e4 fis e d      | % 8
    cis2\fermata  r4 e      | % 9
    d cis d b      | % 10
    a fis8 g a4 g      | % 11
    fis2.\fermata  a4      | % 12
    g fis e fis      | % 13
    d e fis\fermata  cis'      | % 14
    d cis b cis8 d      | % 15
    e4 d cis\fermata  fis      | % 16
    e8 d cis d e4 b      | % 17
    a g fis\fermata  e      | % 18
    a b cis8 d e4      | % 19
    d cis b\fermata  d      | % 20
    cis b a8 g fis g      | % 21
    a4 g fis2~      | % 22
    fis2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     fis fis g a      | % 1
    g fis8 gis ais4 b      | % 2
    ais2 r4 cis      | % 3
    b8 a g4 a g8 fis      | % 4
    e4 d8 e fis4 e8 d      | % 5
    cis2. fis4      | % 6
    fis fis g a      | % 7
    g fis8 gis ais4 b      | % 8
    ais2 r4 cis      | % 9
    b8 a g a a4 g8 fis      | % 10
    e4 d8 e fis4 e8 d      | % 11
    cis2. cis4      | % 12
    d d cis cis      | % 13
    d8 cis b4 cis fis      | % 14
    fis8 gis ais4 b ais8 b      | % 15
    cis fis, fis4 fis a      | % 16
    gis a e e      | % 17
    e8 d e cis d4 cis      | % 18
    cis8 dis e4 e8 fis g fis      | % 19
    fis gis a4 gis fis      | % 20
    e8 fis g4 fis8 e d4      | % 21
    e2~ e4 d~      | % 22
    d cis8 b cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ais'4     b cis8 d e4 a,      | % 1
    b8 cis d4 e fis      | % 2
    fis2 r4 fis      | % 3
    fis e d d      | % 4
    e a,8 b c4 b      | % 5
    ais2. ais4      | % 6
    b cis8 d e4 a,      | % 7
    b8 cis d4 e fis      | % 8
    fis2 r4 fis      | % 9
    fis e d d      | % 10
    e a,8 b c4 b      | % 11
    ais2. a4      | % 12
    b a a8 g fis4      | % 13
    fis b ais ais      | % 14
    b e fis e8 d      | % 15
    cis4 b ais b      | % 16
    b a b8 a gis4      | % 17
    a a a a      | % 18
    a gis ais8 b cis4~      | % 19
    cis8 b e4 e a,8 b      | % 20
    cis4 d d a      | % 21
    a b cis b~      | % 22
    b ais8 gis ais4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     b a g fis      | % 1
    e d cis b      | % 2
    fis'2 r4 ais      | % 3
    b e, fis g      | % 4
    cis, d dis e      | % 5
    fis2. fis4      | % 6
    b a g fis      | % 7
    e d cis b      | % 8
    fis'2 r4 ais      | % 9
    b e, fis g      | % 10
    cis, d dis e      | % 11
    fis2. fis4      | % 12
    b,8 cis d4 a ais      | % 13
    b g fis fis'      | % 14
    b cis d cis8 b      | % 15
    ais4 b fis dis      | % 16
    e fis gis8 fis e d      | % 17
    cis b cis a d4 a'8 gis      | % 18
    fis4 e8 d cis b ais4      | % 19
    b cis8 dis e4 fis8 gis      | % 20
    a4 b8 cis d4 d,      | % 21
    c b ais b      | % 22
    fis2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
