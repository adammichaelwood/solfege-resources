
% BWV 174 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 174"
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
    d'4     cis b a g8 fis      | % 1
    b4 b a\fermata  d      | % 2
    cis b a g8 fis      | % 3
    b4 b a\fermata  a      | % 4
    b cis d8 e fis4      | % 5
    e8 d e4 d\fermata  d      | % 6
    cis b a g8 fis      | % 7
    b4 b a\fermata  d      | % 8
    cis b a g8 fis      | % 9
    b4 b a\fermata  a      | % 10
    b cis d8 e fis4      | % 11
    e8 d e4 d\fermata  d      | % 12
    d e d b8 cis      | % 13
    d4 d cis\fermata  cis      | % 14
    d e d b8 cis      | % 15
    d4 d cis\fermata  fis      | % 16
    g8 fis e4 fis8 e d4      | % 17
    d cis d\fermata  cis      | % 18
    d cis b a      | % 19
    a gis a\fermata  fis'      | % 20
    e d cis\fermata  fis      | % 21
    g8 fis e4 fis8 e d4      | % 22
    d cis d\fermata  d      | % 23
    d d e d      | % 24
    d cis d\fermata  s4 \bar "|." 
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
    fis4     e8 fis g fis e4 d      | % 1
    d d d fis8 eis      | % 2
    fis e d e fis e d fis      | % 3
    fis4 eis fis fis8 e      | % 4
    d b' a g fis g a b      | % 5
    e, fis g4 fis fis      | % 6
    e8 fis g fis e4 d      | % 7
    d d d fis8 eis      | % 8
    fis e d e fis e d fis      | % 9
    fis4 eis fis fis8 e      | % 10
    d b' a g fis g a b      | % 11
    e, fis g4 fis a      | % 12
    a8 g~ g fis fis4 e      | % 13
    e e e e      | % 14
    fis g fis e      | % 15
    d8 e fis4 fis fis      | % 16
    e e a8 g fis4      | % 17
    e e fis g      | % 18
    fis e8 fis gis4 fis      | % 19
    fis e e d'      | % 20
    ais b ais cis      | % 21
    b b8 a a4 a      | % 22
    e fis fis a      | % 23
    a g8 fis g4 fis      | % 24
    e8 d e4 fis s4 \bar "|." 
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
    a'8 b     cis4 d e8 a, a4      | % 1
    a g fis fis8 gis      | % 2
    a4 b cis d8 cis      | % 3
    b4 cis cis d8 cis      | % 4
    b g' fis e d4 d      | % 5
    d cis a a8 b      | % 6
    cis4 d e8 a, a4      | % 7
    a g fis fis8 gis      | % 8
    a4 b cis d8 cis      | % 9
    b4 cis cis d8 cis      | % 10
    b g' fis e d4 d      | % 11
    d cis a fis'8 e      | % 12
    d4 cis b8 cis d4      | % 13
    gis,8 a b4 a a      | % 14
    a a a g      | % 15
    fis b ais b      | % 16
    b cis cis d8 cis      | % 17
    b4 a a e'      | % 18
    a,8 b cis4 d cis      | % 19
    b b cis a8 b      | % 20
    cis4 fis, fis' fis8 e      | % 21
    d4 e d d8 cis      | % 22
    b4 cis b d8 c      | % 23
    b4 b b8 a a4      | % 24
    a a a s4 \bar "|." 
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
    d4     a b cis d      | % 1
    g,8 a b cis d4 b      | % 2
    fis' g a b8 a      | % 3
    gis4 cis, fis d      | % 4
    g a b a8 g      | % 5
    a4 a, d d      | % 6
    a b cis d      | % 7
    g,8 a b cis d4 b      | % 8
    fis' g a b8 a      | % 9
    gis4 cis, fis d      | % 10
    g a b a8 g      | % 11
    a4 a, d d'8 cis      | % 12
    b4 ais b8 a gis fis      | % 13
    e fis gis e a4 a8 g      | % 14
    fis e d cis d4 e      | % 15
    b8 cis d e fis4 dis      | % 16
    e a8 g fis4 b8 a      | % 17
    gis4 a d, e      | % 18
    fis8 gis a4 eis fis8 eis      | % 19
    dis4 e a, d      | % 20
    cis b fis' ais      | % 21
    b cis d fis,      | % 22
    gis ais b fis      | % 23
    g8 a b4 cis, d      | % 24
    a' a, d s4 \bar "|." 
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
