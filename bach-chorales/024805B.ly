
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
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
    c c b8 c16 d b4      | % 3
    a2.\fermata  e4      | % 4
    a g f e      | % 5
    d2 e4\fermata  b'      | % 6
    c c b8 c16 d b4      | % 7
    a2.\fermata  c4      | % 8
    b8 a g4 a b      | % 9
    c2 c4\fermata  g      | % 10
    a g f8 e f4      | % 11
    e2.\fermata  c'4      | % 12
    b8 c d4 c b      | % 13
    a2 b4\fermata  e,      | % 14
    f e d g8 f      | % 15
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
    e8 d     c d d e e d d c      | % 1
    c4 b8 a b4 e      | % 2
    e a a gis      | % 3
    e2. e8 d      | % 4
    c d d e e d d c      | % 5
    c4 b8 a b4 e      | % 6
    e a a gis      | % 7
    e2. a8 g      | % 8
    f4 e8 d c4 f      | % 9
    f e8 d e4 e      | % 10
    f bes,8 a a g a d      | % 11
    cis2. d4      | % 12
    d g g8 fis g4      | % 13
    g fis g g      | % 14
    c,8 d c4 f, d'      | % 15
    d c b s4 \bar "|." 
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
    gis'4     a b c8 d g,4      | % 1
    a8 gis a4 gis gis      | % 2
    a8 b c4 f e8 d      | % 3
    c2. gis4      | % 4
    a b c8 d g,4      | % 5
    a8 gis a4 gis gis      | % 6
    a8 b c4 f e8 d      | % 7
    c2. e4      | % 8
    d8 c b4 a8 g f g      | % 9
    a4 g8 f g4 c      | % 10
    c8 d e4 d8 cis d gis,      | % 11
    a2. a4      | % 12
    g8 a b4 c8 d e4      | % 13
    e d d c      | % 14
    c8 b b a a4 g8 a      | % 15
    b4 a gis s4 \bar "|." 
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
    e4     f g a8 b c4      | % 1
    f,2 e4 e      | % 2
    a8 g f e d b e4      | % 3
    a,2. e'4      | % 4
    f g a8 b c4      | % 5
    f,2 e4 e      | % 6
    a8 g f e d b e4      | % 7
    a,2. a'4      | % 8
    d, e f8 e d4      | % 9
    a8 b c4 c c      | % 10
    f8 e d cis d4 d      | % 11
    a2. fis'4      | % 12
    g g8 fis e4. d8      | % 13
    c a d4 g, c8 b      | % 14
    a b c4~ c8 b~ b a      | % 15
    gis4 a e' s4 \bar "|." 
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
