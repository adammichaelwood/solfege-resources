
% BWV 168 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 168"
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
    e d cis e      | % 9
    d cis b\fermata  d      | % 10
    cis b a8 gis fis gis      | % 11
    a4 b cis\fermata  cis      | % 12
    d e fis4. e8      | % 13
    d4 e8 d cis2      | % 14
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
    fis4     e8 fis g4 fis g      | % 1
    fis fis8 e d4 e      | % 2
    e8 fis g4 fis cis'      | % 3
    cis8 ais b4 ais fis      | % 4
    e8 fis g4 fis g      | % 5
    fis fis8 e d4 e      | % 6
    e8 fis g4 fis cis'      | % 7
    cis8 ais b4 ais a      | % 8
    a8 gis a b a4 g8 fis      | % 9
    fis4 fis fis fis8 gis      | % 10
    a4 gis fis cis      | % 11
    fis gis a a8 g      | % 12
    fis b a g fis2~      | % 13
    fis4 e8 fis g4 fis8 e      | % 14
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
    d'4     cis8 d e4 d8 cis b ais      | % 1
    b cis ais4 b gis      | % 2
    a e' d8 e fis4      | % 3
    fis4. eis8 fis4 d      | % 4
    cis8 d e4 d8 cis b ais      | % 5
    b cis ais4 b gis      | % 6
    a e' d8 e fis4      | % 7
    fis4. eis8 fis4 fis      | % 8
    b, fis'8 e e d cis4      | % 9
    cis8 b b ais d4 b      | % 10
    e d8 cis cis b a gis      | % 11
    fis a d4 e e      | % 12
    d8 g fis e d4 cis~      | % 13
    cis8 fis, b2 ais4      | % 14
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
    b'4     cis cis, d e      | % 1
    fis8 e fis4 b, e      | % 2
    a, a' d8 cis b ais      | % 3
    b4 b, fis' b      | % 4
    cis cis, d e      | % 5
    fis8 e fis4 b, e      | % 6
    a, a' d8 cis b ais      | % 7
    b4 b, fis' d      | % 8
    e fis8 gis a4 ais      | % 9
    b fis b, b'      | % 10
    a8 gis fis eis fis4. e8      | % 11
    d cis b4 a a'      | % 12
    b cis d8 cis b ais      | % 13
    b a g fis e4 fis      | % 14
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
