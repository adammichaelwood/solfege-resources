
% BWV 133 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 133"
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
    fis8 g     a4 b a g8 fis      | % 1
    fis2\fermata  r4 a      | % 2
    b cis d d8 cis      | % 3
    cis2 b4\fermata  fis8 g      | % 4
    a4 b a g8 fis      | % 5
    fis2\fermata  r4 a      | % 6
    b cis d d8 cis      | % 7
    cis2 b4\fermata  e8 d      | % 8
    cis4 d8 cis b4. a8      | % 9
    a2.\fermata  a4      | % 10
    b cis d4. d8      | % 11
    cis2.\fermata  a4      | % 12
    a b a g8 fis      | % 13
    fis2\fermata  r4 a      | % 14
    b8 cis d4 d cis      | % 15
    d2.\fermata  s4 \bar "|." 
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
    d8 cis     d4 d d8 cis16 b cis4      | % 1
    d2 r4 fis      | % 2
    gis ais b gis      | % 3
    fis4. e8 d4 d8 cis      | % 4
    d4 d d8 cis16 b cis4      | % 5
    d2 r4 fis      | % 6
    gis ais b gis      | % 7
    fis4. e8 d4 e      | % 8
    e fis fis8 d e4      | % 9
    e2. e4      | % 10
    e8 fis gis4 a e      | % 11
    e2. e4      | % 12
    fis g8 fis e4 e      | % 13
    d2 r4 d      | % 14
    d e e8 fis g4      | % 15
    fis2. s4 \bar "|." 
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
    a'4     a g a a      | % 1
    a2 r4 a      | % 2
    e' e fis b,      | % 3
    b ais b a      | % 4
    a g a a      | % 5
    a2 r4 a      | % 6
    e' e fis b,      | % 7
    b ais b b      | % 8
    a a a gis      | % 9
    cis2. cis4      | % 10
    b e d8 cis b4      | % 11
    a2. cis4      | % 12
    d g, a8 b cis4      | % 13
    b2 r4 a      | % 14
    g8 a b4 a a      | % 15
    a2. s4 \bar "|." 
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
    d8 e     fis4 g a a,      | % 1
    d2 r4 d      | % 2
    d cis b8 cis d e      | % 3
    fis2 b,4 d8 e      | % 4
    fis4 g a a,      | % 5
    d2 r4 d      | % 6
    d cis b8 cis d e      | % 7
    fis2 b,4 gis'      | % 8
    a8 gis fis e d b e4      | % 9
    a,2. a'4      | % 10
    gis e fis gis      | % 11
    a2. g4      | % 12
    fis e8 d cis4 a      | % 13
    b2 r4 fis'      | % 14
    g gis a a,      | % 15
    d2. s4 \bar "|." 
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
