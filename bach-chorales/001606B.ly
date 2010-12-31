
% BWV 16 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 16"
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
    b4. c8 d4\fermata  e      | % 2
    c a b b      | % 3
    a2.\fermata  a4      | % 4
    a b c d      | % 5
    b4. c8 d4\fermata  e      | % 6
    c a b b      | % 7
    a2.\fermata  e'4      | % 8
    d c b a      | % 9
    b2.\fermata  b4      | % 10
    c d e e      | % 11
    d2 b4\fermata  b      | % 12
    c d e e      | % 13
    d4. c8 b4\fermata  e      | % 14
    d8 c b a b4 b      | % 15
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
    g2 a4 e      | % 2
    e a a gis      | % 3
    e2. e4      | % 4
    f f g a      | % 5
    g2 a4 e      | % 6
    e a a gis      | % 7
    e2. e8 fis      | % 8
    gis4 a8 g f4 e8 fis      | % 9
    gis2. gis4      | % 10
    a b c8 b a g      | % 11
    a g fis4 g g      | % 12
    g g8 f e f g4      | % 13
    f8 g a4 gis b      | % 14
    a e f e8 d      | % 15
    cis2. s4 \bar "|." 
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
    d e d b      | % 2
    c8 d e4 f e8 d      | % 3
    c2. c4      | % 4
    c d g, d'      | % 5
    d e d b      | % 6
    c8 d e4 f e8 d      | % 7
    c2. g8 a      | % 8
    b4 e8 c d b c4      | % 9
    b2. e4      | % 10
    e f g c,8 b      | % 11
    a4 d d d      | % 12
    g, a bes a8 g      | % 13
    a2 e'4 e      | % 14
    e, a a gis      | % 15
    e2. s4 \bar "|." 
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
    g fis8 e fis4 gis      | % 2
    a8 b c a d,4 e      | % 3
    a,2. a'8 g      | % 4
    f4 e8 d e4 fis      | % 5
    g fis8 e fis4 gis      | % 6
    a8 b c a d,4 e      | % 7
    a,2. c'4      | % 8
    b a gis a      | % 9
    e2. e4      | % 10
    a g8 f c'4 e,      | % 11
    fis e8 d g4 g8 f      | % 12
    e4 d cis d8 e      | % 13
    f4 e8 d e4 gis      | % 14
    a c, d e      | % 15
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
