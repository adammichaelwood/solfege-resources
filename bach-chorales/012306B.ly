
% BWV 123 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 123"
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
    \time 3/2 
    d'2 d d      | % 1
    cis2. b4 a2\fermata       | % 2
    b g fis4 e      | % 3
    e1 d2\fermata       | % 4
    a' a fis      | % 5
    b2. cis4 d2\fermata       | % 6
    d,4 e e2. fis4      | % 7
    fis1.\fermata       | % 8
    d'2 d d      | % 9
    cis2. b4\fermata  a2      | % 10
    b g fis4 e      | % 11
    e1 d2\fermata       | % 12
    a' a fis      | % 13
    b2. cis4 d2\fermata       | % 14
    d,4 e e2. fis4      | % 15
    fis1.\fermata       | % 16
    fis2 fis g      | % 17
    a fis1\fermata       | % 18
    b2 ais b      | % 19
    cis ais1\fermata       | % 20
    d2 cis b      | % 21
    ais2. fis4 b2      | % 22
    cis4 d ais2. b4      | % 23
    b1.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/2 
    fis2 fis eis4 fis      | % 1
    gis2 eis fis      | % 2
    g e d      | % 3
    d cis a      | % 4
    d e d      | % 5
    d g fis      | % 6
    fis e4 d cis b      | % 7
    cis1.      | % 8
    fis2 fis eis4 fis      | % 9
    gis2 eis fis      | % 10
    g e d      | % 11
    d cis a      | % 12
    d e d      | % 13
    d g fis      | % 14
    fis e4 d cis b      | % 15
    cis1.      | % 16
    d2 d d      | % 17
    e d1      | % 18
    fis2 e fis      | % 19
    fis fis1      | % 20
    fis2 g e      | % 21
    fis2. fis4 fis2      | % 22
    g fis fis      | % 23
    fis1. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/2 
    b'2 b b4 a      | % 1
    gis2 cis cis      | % 2
    d e4 a, a2      | % 3
    a2. g4 fis2      | % 4
    a a a      | % 5
    g4 a b2 b      | % 6
    b b e      | % 7
    ais,1.      | % 8
    b2 b b4 a      | % 9
    gis2 cis cis      | % 10
    d e4 a, a2      | % 11
    a2. g4 fis2      | % 12
    a a a      | % 13
    g4 a b2 b      | % 14
    b b e      | % 15
    ais,1.      | % 16
    b2 b b      | % 17
    a a1      | % 18
    b2 cis d      | % 19
    ais cis1      | % 20
    b2 ais b      | % 21
    cis2. cis4 b2      | % 22
    e4 d cis2 cis      | % 23
    dis1. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/2 
    b2 b'4 a gis fis      | % 1
    eis2 cis fis      | % 2
    b, cis d      | % 3
    a' a, d      | % 4
    fis cis d      | % 5
    g e b      | % 6
    a g g'      | % 7
    fis1.      | % 8
    b,2 b'4 a gis fis      | % 9
    eis2 cis fis      | % 10
    b, cis d      | % 11
    a' a, d      | % 12
    fis cis d      | % 13
    g e b      | % 14
    a g g'      | % 15
    fis1.      | % 16
    b,2 d e      | % 17
    cis d1      | % 18
    d2 cis b      | % 19
    fis' fis1      | % 20
    b2 e, g      | % 21
    fis e d      | % 22
    e fis fis,      | % 23
    b1. \bar "|."\bar "|." 
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
