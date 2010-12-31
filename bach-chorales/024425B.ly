
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
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
    fis8 g     a4 b a d      | % 1
    d cis d\fermata  d      | % 2
    cis b e d8 cis      | % 3
    cis2 b4\fermata  fis8 g      | % 4
    a4 b a d      | % 5
    d cis d\fermata  d      | % 6
    cis b e d8 cis      | % 7
    cis2 b4\fermata  b      | % 8
    b b cis8 b a4      | % 9
    a gis a\fermata  a      | % 10
    b cis d cis      | % 11
    b2 cis4\fermata  fis,8 g      | % 12
    a4 b a d      | % 13
    d cis d\fermata  d      | % 14
    cis b e d8 cis      | % 15
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
    d4     d d d d8 e      | % 1
    fis g a4 a gis      | % 2
    a g8 a b4 b      | % 3
    b ais fis d      | % 4
    d d d d8 e      | % 5
    fis g a4 a gis      | % 6
    a g8 a b4 b      | % 7
    b ais fis fis      | % 8
    e8 fis gis4 gis fis      | % 9
    fis e e fis      | % 10
    fis8 e e d d4 e      | % 11
    fis gis8 eis fis4 fis      | % 12
    fis fis8 eis fis4 fis      | % 13
    e fis8 g fis4 fis      | % 14
    e8 fis gis ais b4 b      | % 15
    b ais fis s4 \bar "|." 
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
    b'4     a g fis8 g a b      | % 1
    a4 e' fis e8 d      | % 2
    e fis g4 g fis      | % 3
    g fis8 e d4 b      | % 4
    a g fis8 g a b      | % 5
    a4 e' fis e8 d      | % 6
    e fis g4 g fis      | % 7
    g fis8 e d4 d8 cis      | % 8
    b4 e8 d cis4 cis      | % 9
    b cis8 d cis4 d      | % 10
    d8 cis cis b b ais ais gis      | % 11
    fis b d gis, ais4 d      | % 12
    cis d8 b cis4 d8 cis      | % 13
    b4 a a a8 b      | % 14
    cis dis e4 b8 cis d4      | % 15
    gis, cis dis s4 \bar "|." 
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
    b'4     fis g d8 e fis g      | % 1
    a4 a, d b      | % 2
    a e'8 fis g a b4      | % 3
    e, fis b, b'      | % 4
    fis g d8 e fis g      | % 5
    a4 a, d b      | % 6
    a e'8 fis g a b4      | % 7
    e, fis b, b'8 a      | % 8
    gis fis e4 eis fis8 e      | % 9
    dis4 e a, d      | % 10
    gis, ais b cis      | % 11
    d b fis' b      | % 12
    a gis fis b8 a      | % 13
    gis4 a d, fis8 gis      | % 14
    a4 gis g fis      | % 15
    eis fis b, s4 \bar "|." 
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
