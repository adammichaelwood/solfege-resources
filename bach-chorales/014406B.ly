
% BWV 144 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 144"
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
    fis4     a b a d      | % 1
    d cis d\fermata  d      | % 2
    cis b e4. d8      | % 3
    cis4 d cis2      | % 4
    b2.\fermata  fis4      | % 5
    a b a d      | % 6
    d cis d\fermata  d      | % 7
    cis b e4. d8      | % 8
    cis4 d cis2      | % 9
    b2.\fermata  b4      | % 10
    b b cis4. b8      | % 11
    cis4 a a gis      | % 12
    a\fermata  a b cis      | % 13
    d cis b2      | % 14
    cis2.\fermata  fis,8 gis      | % 15
    a4 b a d      | % 16
    d cis d\fermata  d      | % 17
    cis b e4. d8      | % 18
    cis4 d cis2      | % 19
    b2.\fermata  s4 \bar "|." 
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
    fis g a4 a a      | % 2
    a g g fis      | % 3
    fis2~ fis8 g fis e      | % 4
    d2. d4      | % 5
    d d d d8 e      | % 6
    fis g a4 a a      | % 7
    a g g fis      | % 8
    fis2~ fis8 g fis e      | % 9
    d2. fis4      | % 10
    e d cis dis8 eis      | % 11
    fis4 fis fis e      | % 12
    e e e e      | % 13
    fis ais b gis      | % 14
    ais2. cis,4      | % 15
    fis gis fis fis      | % 16
    b a a gis      | % 17
    a gis ais4. b8      | % 18
    cis4 b2 ais4      | % 19
    a g fis s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     a g fis8 g a b      | % 1
    a4 e' fis fis      | % 2
    e e b b      | % 3
    ais b2 ais4      | % 4
    fis2. b4      | % 5
    a g fis8 g a b      | % 6
    a4 e' fis fis      | % 7
    e e b b      | % 8
    ais b2 ais4      | % 9
    fis2. d'8 cis      | % 10
    b cis b a g4 a8 b      | % 11
    a b cis4 b b      | % 12
    cis cis b ais      | % 13
    b g' fis eis      | % 14
    fis2. a,8 b      | % 15
    cis4 d8 cis cis4 d      | % 16
    e e fis e8 d      | % 17
    e4 e e8 fis g4~      | % 18
    g8 fis16 e d8 cis16 b fis'8 cis fis e      | % 19
    dis4 e dis s4 \bar "|." 
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
    b4     fis' g d8 e fis g      | % 1
    a4 a, d d      | % 2
    a' e8 fis g a b4      | % 3
    fis8 e d e fis2      | % 4
    b,2. b4      | % 5
    fis' g d8 e fis g      | % 6
    a4 a, d d      | % 7
    a' e8 fis g a b4      | % 8
    fis8 e d e fis2      | % 9
    b,2. b'8 a      | % 10
    gis a gis fis eis cis fis gis      | % 11
    a gis fis e d b e4      | % 12
    a, a' gis g      | % 13
    fis e d8 cis d b      | % 14
    fis'2. fis,4      | % 15
    fis' eis fis b8 a      | % 16
    gis4 a d, b      | % 17
    a e'8 d cis d cis b      | % 18
    ais g' fis eis fis2      | % 19
    b,2. s4 \bar "|." 
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
