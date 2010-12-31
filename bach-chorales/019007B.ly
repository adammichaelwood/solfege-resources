
% BWV 190 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 190"
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
    fis'4     fis d e fis      | % 1
    g2 e4\fermata  e      | % 2
    e d d cis      | % 3
    d2.\fermata  e4      | % 4
    e e e fis      | % 5
    d2 d4\fermata  d      | % 6
    cis d e e      | % 7
    d2.\fermata  fis4      | % 8
    fis d e fis      | % 9
    g2 e4\fermata  e      | % 10
    e d d cis      | % 11
    d2.\fermata  e4      | % 12
    e e e fis      | % 13
    d2 d4\fermata  d      | % 14
    cis d e e      | % 15
    d2.\fermata  cis4      | % 16
    cis cis cis cis      | % 17
    d2 d4\fermata  cis      | % 18
    cis cis cis cis      | % 19
    d2 d4\fermata  fis      | % 20
    fis d e fis      | % 21
    g2 fis4 fis      | % 22
    e fis dis dis      | % 23
    e2.\fermata  fis4      | % 24
    fis d e fis      | % 25
    g2 fis4 fis      | % 26
    e fis dis dis      | % 27
    e2.\fermata  fis4      | % 28
    fis d e fis      | % 29
    g2 e4 e      | % 30
    e d d cis      | % 31
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
    a'4     a fis g a      | % 1
    b2 g4 g      | % 2
    fis fis e a      | % 3
    a2. a4      | % 4
    e gis a ais      | % 5
    b2 b4 fis      | % 6
    e fis g8 a16 b a8 e      | % 7
    fis2. a4      | % 8
    a fis g a      | % 9
    b2 g4 g      | % 10
    fis fis e a      | % 11
    a2. a4      | % 12
    e gis a ais      | % 13
    b2 b4 fis      | % 14
    e fis g8 a16 b a8 e      | % 15
    fis2. e4      | % 16
    a a a a      | % 17
    a2 a4 e      | % 18
    a a a a      | % 19
    a2 a4 a      | % 20
    a fis g a      | % 21
    g a a b      | % 22
    g a fis fis      | % 23
    g2. a4      | % 24
    a fis g a      | % 25
    g a a b      | % 26
    g a fis fis      | % 27
    g2. fis4      | % 28
    fis fis e dis      | % 29
    e fis g g      | % 30
    fis fis e e      | % 31
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
    d'4     d a b c      | % 1
    d2 c4 c      | % 2
    cis d b e      | % 3
    fis2. cis4      | % 4
    b8 cis d4 cis cis      | % 5
    d8 e fis4 fis b,      | % 6
    g a8 d d4 cis      | % 7
    a2. d4      | % 8
    d a b c      | % 9
    d2 c4 c      | % 10
    cis d b e      | % 11
    fis2. cis4      | % 12
    b8 cis d4 cis cis      | % 13
    d8 e fis4 fis b,      | % 14
    g a8 d d4 cis      | % 15
    a2. a4      | % 16
    e' e fis g8 e      | % 17
    fis2 fis4 a,      | % 18
    e' e fis g8 e      | % 19
    fis2 fis4 d      | % 20
    d a b c      | % 21
    d a d fis      | % 22
    b, c b b      | % 23
    b2. d4      | % 24
    d a b c      | % 25
    d a d fis      | % 26
    b, c b b      | % 27
    b2. cis4      | % 28
    d fis b, a      | % 29
    b2 ais4 b      | % 30
    cis b b a      | % 31
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
    d4     d' c b a      | % 1
    g2 c,4 b'      | % 2
    ais b gis a      | % 3
    d,2. a'4      | % 4
    gis e a fis      | % 5
    b2 b4 b      | % 6
    e, d a' a,      | % 7
    d2. d4      | % 8
    d' c b a      | % 9
    g2 c,4 b'      | % 10
    ais b gis a      | % 11
    d,2. a'4      | % 12
    gis e a fis      | % 13
    b2 b4 b      | % 14
    e, d a' a,      | % 15
    d2. a4      | % 16
    a' g fis a      | % 17
    d,2 d4 a      | % 18
    a' g fis a      | % 19
    d,2 d4 d      | % 20
    d' c b a      | % 21
    b cis d dis,      | % 22
    e a b b,      | % 23
    e2. d4      | % 24
    d' c b a      | % 25
    b cis d dis,      | % 26
    e a b b,      | % 27
    e2. ais4      | % 28
    b a g fis      | % 29
    e d cis b      | % 30
    ais b gis a      | % 31
    d,2. s4 \bar "|." 
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
