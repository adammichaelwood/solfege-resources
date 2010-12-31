
% BWV 92 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 92"
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
    fis8 gis     a4 b a d      | % 1
    d cis d\fermata  d      | % 2
    cis b e4. d8      | % 3
    cis4 d8 e cis2      | % 4
    b2.\fermata  fis8 gis      | % 5
    a4 b a d      | % 6
    d cis d\fermata  d      | % 7
    cis b e4. d8      | % 8
    cis4 d8 e cis2      | % 9
    b2.\fermata  b4      | % 10
    b b cis8 b a4      | % 11
    a gis a\fermata  a      | % 12
    b cis d cis      | % 13
    b2 cis4\fermata  fis,8 gis      | % 14
    a4 b a d      | % 15
    d cis d\fermata  d      | % 16
    cis b e4. d8      | % 17
    cis4 d8 e cis2      | % 18
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
    d8 e     fis4 gis fis fis      | % 1
    e e fis fis8 gis      | % 2
    a g fis4 g fis~      | % 3
    fis fis g fis8 e      | % 4
    d2. d8 e      | % 5
    fis4 gis fis fis      | % 6
    e e fis fis8 gis      | % 7
    a g fis4 g fis~      | % 8
    fis fis g fis8 e      | % 9
    d2. dis4      | % 10
    e e e fis      | % 11
    fis e e fis      | % 12
    e e d8 e16 fis e8 fis16 g      | % 13
    fis4 e16 d cis b fis'4 d8 e      | % 14
    fis4 gis fis fis      | % 15
    e e fis fis8 gis      | % 16
    a g fis4 g fis~      | % 17
    fis fis g fis8 e      | % 18
    dis2. s4 \bar "|." 
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
    b'4     cis d cis b      | % 1
    b a a b      | % 2
    e dis8 cis b4 b      | % 3
    ais b2 ais4      | % 4
    fis2. b4      | % 5
    cis d cis b      | % 6
    b a a b      | % 7
    e dis8 cis b4 b      | % 8
    ais b2 ais4      | % 9
    fis2. fis4      | % 10
    gis8 a b gis a b cis4      | % 11
    b b cis d      | % 12
    d cis b4. ais8      | % 13
    b cis16 d e4 ais, b      | % 14
    cis d cis b      | % 15
    b a a b      | % 16
    e dis8 cis b4 b      | % 17
    ais b2 ais4      | % 18
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
    b'4     fis eis fis b      | % 1
    gis a d, b      | % 2
    a a' g8 fis16 e b'4      | % 3
    fis8 e d4 e fis      | % 4
    b,2. b'4      | % 5
    fis eis fis b      | % 6
    gis a d, b      | % 7
    a a' g8 fis16 e b'4      | % 8
    fis8 e d4 e fis      | % 9
    b,2. b4      | % 10
    e8 fis gis e a gis fis e      | % 11
    d b e4 a, d      | % 12
    gis, ais b cis      | % 13
    d8 e16 fis g4 fis b      | % 14
    fis eis fis b      | % 15
    gis a d, b      | % 16
    a a' g8 fis16 e b'4      | % 17
    fis8 e d4 e fis      | % 18
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
