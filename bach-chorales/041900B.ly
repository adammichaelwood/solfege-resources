
% BWV 419 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 419"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a b c d      | % 1
    b4. a8 g4\fermata  g      | % 2
    a a b b      | % 3
    e,2.\fermata  a4      | % 4
    a b c d      | % 5
    b4. a8 g4\fermata  g      | % 6
    a a b b      | % 7
    e,2.\fermata  e'4      | % 8
    d c b a      | % 9
    b2.\fermata  b4      | % 10
    c d e e      | % 11
    d2 b4\fermata  d      | % 12
    c b a a      | % 13
    b4. a8 g4\fermata  f      | % 14
    e a8 b c4 b      | % 15
    a2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     f f g a      | % 1
    g fis e e      | % 2
    e d8 e f4 e8 d~      | % 3
    d c16 b c2 e4      | % 4
    f f g a      | % 5
    g fis e e      | % 6
    e d8 e f4 e8 d~      | % 7
    d c16 b c2 e8 fis      | % 8
    gis4 a8 g f4 e8 fis      | % 9
    gis2. gis4      | % 10
    a b c8 b a g      | % 11
    a g fis4 g f      | % 12
    e8 a4 g8 g f16 e f4      | % 13
    fis8 dis e fis b,4 b      | % 14
    c c8 d e4 e8 d      | % 15
    c2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     c d g, d'      | % 1
    d8 e fis4 b, b      | % 2
    a a a gis      | % 3
    a2. c4      | % 4
    c d g, d'      | % 5
    d8 e fis4 b, b      | % 6
    a a a gis      | % 7
    a2. g8 a      | % 8
    b4 e8 c d b c4      | % 9
    b2. e4      | % 10
    e f g c,8 b      | % 11
    a4 d d b      | % 12
    a8 e' e4 e8 d16 cis d8 c      | % 13
    b a g fis e4 f      | % 14
    g a a gis      | % 15
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 g     f4 e8 d e4 fis      | % 1
    g dis e e8 d      | % 2
    c4 f8 e d4 e      | % 3
    a2. a8 g      | % 4
    f4 e8 d e4 fis      | % 5
    g dis e e8 d      | % 6
    c4 f8 e d4 e      | % 7
    a2. c,4      | % 8
    b8 b' a4 gis a      | % 9
    e2. e4      | % 10
    a g8 f c'4 e,      | % 11
    fis e8 d g4 gis      | % 12
    a e f4. e8      | % 13
    dis b cis dis e4 d      | % 14
    c f e8 d e4      | % 15
    a,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
