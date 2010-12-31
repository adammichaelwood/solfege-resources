
% BWV 398 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 398"
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
    a'4     fis d a' a      | % 1
    b2\fermata  r4 b      | % 2
    e, e a g      | % 3
    fis e d\fermata  a'      | % 4
    b b a g      | % 5
    fis2\fermata  r4 e      | % 6
    fis gis a b8 cis16 d      | % 7
    cis4 b a\fermata  a      | % 8
    a a d c8 b      | % 9
    b2\fermata  r4 b      | % 10
    b b e d8 cis      | % 11
    cis2\fermata  r4 a      | % 12
    b a b cis      | % 13
    d2\fermata  r4 a      | % 14
    b8 a g fis e4 e      | % 15
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
    d4     d d8 e fis4 d      | % 1
    d2 r4 d      | % 2
    cis cis d e      | % 3
    d cis a fis'      | % 4
    g g8 fis e d e4      | % 5
    d2 r4 cis      | % 6
    d e e fis      | % 7
    e4. d8 cis4 cis      | % 8
    d d d d      | % 9
    d2 r4 g      | % 10
    g8 fis g a b a b gis      | % 11
    a2 r4 a      | % 12
    g fis fis fis      | % 13
    fis2 r4 fis8 e      | % 14
    d4 d cis cis      | % 15
    a2. s4 \bar "|." 
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
    fis4     a a d a      | % 1
    g2 r4 b      | % 2
    a a a a      | % 3
    a4. g8 fis4 d'      | % 4
    d g, a a      | % 5
    a2 r4 a      | % 6
    a b a a      | % 7
    a gis e e      | % 8
    fis8 e fis g a g a fis      | % 9
    g2 r4 d'      | % 10
    e e b e      | % 11
    e2 r4 d      | % 12
    d d d cis      | % 13
    b2 r4 d8 cis      | % 14
    b4 b8 d a4. g8      | % 15
    fis2. s4 \bar "|." 
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
    d4     d8 e fis g fis e fis d      | % 1
    g2 r4 g      | % 2
    a8 g fis e fis e d cis      | % 3
    d4 a d d      | % 4
    g8 fis e d cis b cis a      | % 5
    d2 r4 a      | % 6
    d8 cis d b cis4 d      | % 7
    e8 d e4 a, a      | % 8
    d8 cis d e fis e fis d      | % 9
    g2 r4 g8 fis      | % 10
    e dis e fis gis fis gis e      | % 11
    a2 r4 fis      | % 12
    g8 b d e d cis b ais      | % 13
    b2 r4 fis      | % 14
    g8 a b g a4 a,      | % 15
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
