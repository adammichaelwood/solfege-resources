
% BWV 103 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 103"
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
    b b8 cis16 d cis8 b a4      | % 9
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
    fis g e4 fis fis      | % 2
    fis8 e d4 g fis8 gis      | % 3
    ais b4 ais8 fis4 d      | % 4
    d d d d8 e      | % 5
    fis g e4 fis fis      | % 6
    fis8 e d4 g fis8 gis      | % 7
    ais b4 ais8 fis4 fis      | % 8
    e8 fis gis4 a e      | % 9
    e e e fis      | % 10
    fis fis fis e      | % 11
    d cis8 b fis'4 d8 e      | % 12
    fis4 g d8 e fis g      | % 13
    a e fis g fis4 b      | % 14
    e,8 fis g a b a16 g fis4      | % 15
    fis8 g fis e dis4 s4 \bar "|." 
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
    a4 a a b      | % 2
    ais b b8 cis d e      | % 3
    fis cis fis e d4 b      | % 4
    a g fis8 g a b      | % 5
    a4 a a b      | % 6
    ais b b8 cis d e      | % 7
    fis cis fis e d4 d8 cis      | % 8
    b4 e e8 d cis4      | % 9
    b cis8 d cis4 d8 cis      | % 10
    b4 e d8 cis b ais      | % 11
    fis'4 e ais, b      | % 12
    cis d8 e fis4 a,      | % 13
    a8 b a4 a a8 gis      | % 14
    a4 b b8 cis d gis,      | % 15
    ais b4 ais8 fis4 s4 \bar "|." 
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
    fis' g8 fis e4 b'      | % 3
    fis2 b,4 b'      | % 4
    fis g d8 e fis g      | % 5
    a4 a, d b      | % 6
    fis' g8 fis e4 b'      | % 7
    fis2 b,4 b'8 a      | % 8
    gis fis e4 a,8 b cis d      | % 9
    e d e4 a, d8 e      | % 10
    d cis b ais b4 cis      | % 11
    d g fis b      | % 12
    a g fis e8 d      | % 13
    a' g a4 d, b      | % 14
    a e'8 fis g a b4      | % 15
    fis8 e fis4 b, s4 \bar "|." 
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
