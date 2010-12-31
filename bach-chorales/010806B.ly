
% BWV 108 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 108"
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
    b'4     b b fis' e      | % 1
    fis8 e d4 cis\fermata  b8 cis      | % 2
    d4 cis d8 e fis4      | % 3
    e d cis\fermata  d8 cis      | % 4
    b4 b e~ e8 d      | % 5
    cis d16 e d8 cis b2      | % 6
    a4\fermata  a d cis      | % 7
    d8 e fis4 e d      | % 8
    cis\fermata  b8 cis d4 cis      | % 9
    d8 e fis4 e d      | % 10
    cis\fermata  fis fis fis      | % 11
    e~ e8 d cis4 d8 e      | % 12
    cis2 b4\fermata  s4 \bar "|." 
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
    fis4     g g fis8 gis ais b      | % 1
    cis4 b ais b8 ais      | % 2
    b4 fis fis fis      | % 3
    b8 cis fis, gis ais4 b      | % 4
    fis e8 fis gis2      | % 5
    a4 a a gis      | % 6
    e fis b cis8 ais      | % 7
    b4 b b8 cis fis,4      | % 8
    fis fis e e      | % 9
    fis8 g a4 g fis      | % 10
    fis fis8 e d fis b a      | % 11
    g fis e2 d8 g      | % 12
    g4 fis8 e dis4 s4 \bar "|." 
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
    d'4     e e d g      | % 1
    fis fis fis fis8 e      | % 2
    fis4 fis8 e d cis b d      | % 3
    d cis d b cis4 fis8 e      | % 4
    d cis b4 b cis8 d      | % 5
    e4 a, fis' e8 d      | % 6
    cis4 d8 e fis4 fis      | % 7
    fis8 e d4 d8 cis cis b      | % 8
    ais4 d8 cis b gis a4      | % 9
    a d d8 cis cis b      | % 10
    ais4 cis cis b      | % 11
    b2 a8 g' fis b,      | % 12
    b4 ais fis s4 \bar "|." 
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
    b4     e8 fis g a b d cis b      | % 1
    ais fis b b, fis'4 d8 cis      | % 2
    b b' ais fis b cis d b      | % 3
    gis ais b b, fis'4 b,      | % 4
    b'8 a gis fis e d cis b      | % 5
    a cis fis e d b e4      | % 6
    a, d8 cis b b' ais fis      | % 7
    b cis d b gis ais b b,      | % 8
    fis'4 b8 a gis e a g      | % 9
    fis e d cis b ais b4      | % 10
    fis ais b8 cis d dis      | % 11
    e fis g gis a ais b g      | % 12
    e cis fis fis, b4 s4 \bar "|." 
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
