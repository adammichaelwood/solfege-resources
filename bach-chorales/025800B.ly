
% BWV 258 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 258"
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
    d'4     d b8 cis d e fis4      | % 1
    e e d\fermata  d      | % 2
    cis b8 cis d4 e8 d      | % 3
    cis2 b4\fermata  d      | % 4
    d b8 cis d e fis4      | % 5
    e e d\fermata  d      | % 6
    cis b8 cis d4 e8 d      | % 7
    cis2 b4\fermata  e      | % 8
    fis fis cis8 d e4      | % 9
    d d cis\fermata  d      | % 10
    e b8 cis d4 cis      | % 11
    b b a\fermata  d      | % 12
    cis b8 cis d4 e8 d      | % 13
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
    fis8 g     a4 g a a      | % 1
    b a8 g fis4 gis      | % 2
    a g fis e8 fis      | % 3
    g4 fis fis fis8 g      | % 4
    a4 g a a      | % 5
    b a8 g fis4 gis      | % 6
    a g fis e8 fis      | % 7
    g4 fis fis a      | % 8
    a a e8 fis g4      | % 9
    fis gis ais b      | % 10
    b8 a gis4 fis e      | % 11
    a gis e gis      | % 12
    a gis8 ais b4 b8 fis      | % 13
    g4 fis8 e d4 s4 \bar "|." 
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
    d'4     d d d d      | % 1
    d cis a b      | % 2
    e e d8 cis b4      | % 3
    b ais8 e' d4 d      | % 4
    d d d d      | % 5
    d cis a b      | % 6
    e e d8 cis b4      | % 7
    b ais8 e' d4 a      | % 8
    a a8 b cis4 cis      | % 9
    d8 cis b4 fis' fis      | % 10
    b, e a,8 b cis4      | % 11
    fis e8 d cis4 d      | % 12
    e e fis b,      | % 13
    b ais fis s4 \bar "|." 
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
    b'4     fis g fis8 e d4      | % 1
    gis a d, b      | % 2
    a e' b'8 a g fis      | % 3
    e4 fis b, b'      | % 4
    fis g fis8 e d4      | % 5
    gis a d, b      | % 6
    a e' b'8 a g fis      | % 7
    e4 fis b, cis      | % 8
    d8 e fis g a4 ais      | % 9
    b eis, fis b8 a      | % 10
    gis fis e4 fis8 gis a4      | % 11
    dis, e a, b      | % 12
    cis8 d e4 b'8 a g fis      | % 13
    e4 fis b, s4 \bar "|." 
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
