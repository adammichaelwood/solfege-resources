
% BWV 135 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 135"
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
    e4     a g f e      | % 1
    d2 e4\fermata  b'      | % 2
    c c b b      | % 3
    a2.\fermata  e4      | % 4
    a g f e      | % 5
    d2 e4\fermata  b'      | % 6
    c c b b      | % 7
    a2.\fermata  c4      | % 8
    b8 a g4 a b      | % 9
    c2 c4 g      | % 10
    a g f f      | % 11
    e2.\fermata  c'4      | % 12
    b8 c d4 c b      | % 13
    a2 b4\fermata  e,      | % 14
    f e d g      | % 15
    e2.\fermata  s4 \bar "|." 
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
    c8 d     e f e d c d e4      | % 1
    a,2 b4 e      | % 2
    e a a gis      | % 3
    e2. c8 d      | % 4
    e f e d c d e4      | % 5
    a,2 b4 e      | % 6
    e a a gis      | % 7
    e2. a8 g      | % 8
    f4 e8 d c4 f      | % 9
    f e8 d e4 e      | % 10
    f e e d      | % 11
    cis2. e4      | % 12
    d g g8 d d g      | % 13
    g4 fis g e8 d      | % 14
    c4 c f8 e d4~      | % 15
    d8 b c4 b s4 \bar "|." 
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
    a'4     a8 c b4 a b8 c      | % 1
    d c b a gis4 b      | % 2
    a4. e'8 f d e b      | % 3
    c2. a4      | % 4
    a8 c b4 a b8 c      | % 5
    d c b a gis4 b      | % 6
    a4. e'8 f d e b      | % 7
    c2. e4      | % 8
    d8 c b4 a d      | % 9
    g,2 g4 c      | % 10
    c bes a a      | % 11
    a2. g8 a      | % 12
    b4 b b8 a b c16 d      | % 13
    e4 d d b      | % 14
    a g a b~      | % 15
    b8 gis a4 gis s4 \bar "|." 
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
    a8 b     c d e4 a g      | % 1
    f2 e4 gis      | % 2
    a8 e f c d b e4      | % 3
    a,2. a8 b      | % 4
    c d e4 a g      | % 5
    f2 e4 gis      | % 6
    a8 e f c d b e4      | % 7
    a,2. a'4      | % 8
    d, e f8 e d4      | % 9
    c2 c4 c      | % 10
    f8 e d cis d e f g      | % 11
    a2. e8 fis      | % 12
    g a b g e fis g e      | % 13
    c a d4 g, gis      | % 14
    a8 b c2 b4      | % 15
    c b8 a e'4 s4 \bar "|." 
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
