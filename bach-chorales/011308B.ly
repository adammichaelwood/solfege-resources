
% BWV 113 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 113"
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
    b'4     b ais b cis      | % 1
    d cis b\fermata  b      | % 2
    cis cis fis e      | % 3
    d2 cis4\fermata  b      | % 4
    b ais b cis      | % 5
    d cis b\fermata  b      | % 6
    cis cis fis e      | % 7
    d2 cis4\fermata  fis      | % 8
    e d cis8 d e4      | % 9
    d cis b\fermata  d      | % 10
    cis b a8 gis fis gis      | % 11
    a b b4 cis\fermata  cis      | % 12
    d e fis4. e8      | % 13
    d4 e cis2      | % 14
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
    fis4     e fis fis gis8 ais      | % 1
    b4 ais fis fis8 gis      | % 2
    a4 a8 g fis4 gis8 ais      | % 3
    b2 ais4 fis      | % 4
    e fis fis gis8 ais      | % 5
    b4 ais fis fis8 gis      | % 6
    a4 a8 g fis4 gis8 ais      | % 7
    b2 ais4 a      | % 8
    a8 g fis gis ais b cis4      | % 9
    b ais fis fis8 gis      | % 10
    a4. gis8 fis e fis4      | % 11
    cis fis8 e e4 fis      | % 12
    fis8 b a g fis4 gis8 ais      | % 13
    b a g4 fis2      | % 14
    fis2. s4 \bar "|." 
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
    d'4     cis8 b cis4 d e      | % 1
    fis4. e8 d4 d      | % 2
    e a, d8 cis b cis      | % 3
    d e fis4 fis d      | % 4
    cis8 b cis4 d e      | % 5
    fis4. e8 d4 d      | % 6
    e a, d8 cis b cis      | % 7
    d e fis4 fis a,8 b      | % 8
    cis4 d8 e fis4 g      | % 9
    g cis,8 e d4 d      | % 10
    e8 e, fis gis a b a gis      | % 11
    fis4. gis8 a4 cis      | % 12
    b8 fis' e4 d4. cis8      | % 13
    b4 cis8 b ais cis e4      | % 14
    dis2. s4 \bar "|." 
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
    b'8 a     g4 fis8 e d4 cis      | % 1
    b fis b b'      | % 2
    a8 g fis e d4. cis8      | % 3
    b cis d e fis4 b8 a      | % 4
    g4 fis8 e d4 cis      | % 5
    b fis b b'      | % 6
    a8 g fis e d4. cis8      | % 7
    b cis d e fis4 d      | % 8
    a' b fis e8 fis      | % 9
    g e fis4 b, b'      | % 10
    a dis,8 eis fis4 fis,      | % 11
    fis'8 e d e a,4 ais      | % 12
    b cis d e8 fis      | % 13
    g fis e4 fis fis,      | % 14
    b2. s4 \bar "|." 
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
