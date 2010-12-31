
% BWV 257 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 257"
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
    c'4     c8 b a b c d e4      | % 1
    d d c\fermata  c      | % 2
    b a8 b c4 d      | % 3
    b2 a4\fermata  c      | % 4
    c8 b a b c d e4      | % 5
    d d c\fermata  c      | % 6
    b a8 b c4 d      | % 7
    b2 a4\fermata  d      | % 8
    e e b8 c d4      | % 9
    c c b\fermata  c      | % 10
    d a8 b c4 b      | % 11
    a a g\fermata  c      | % 12
    b a8 b c4 d8 c      | % 13
    b2 a4\fermata  s4 \bar "|." 
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
    a'4     g f e8 d c4      | % 1
    d8 e f4 e fis      | % 2
    g fis8 gis a4 a8 g      | % 3
    f4 e8 d c4 a'      | % 4
    g f e8 d c4      | % 5
    d8 e f4 e fis      | % 6
    g fis8 gis a4 a8 g      | % 7
    f4 e8 d c4 g'      | % 8
    g g d4. e8      | % 9
    fis gis a4 gis a      | % 10
    a8 g fis4 e d8 e      | % 11
    f4 f e a      | % 12
    g a gis8 b a g      | % 13
    f4 e8 d cis4 s4 \bar "|." 
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
    e'4     e8 d c4 c8 b a g      | % 1
    a4 b c c      | % 2
    d d e a,      | % 3
    a gis a e'      | % 4
    e8 d c4 c8 b a g      | % 5
    a4 b c c      | % 6
    d d e a,      | % 7
    a gis a g      | % 8
    c g8 a b4 a8 b      | % 9
    c d e4 e e      | % 10
    d d g,8 a b4      | % 11
    c8 b c d e4 ees      | % 12
    d d e a,      | % 13
    a gis e s4 \bar "|." 
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
    a'4     e f8 g a b c4      | % 1
    f, g c, a'      | % 2
    g d' a8 g f e      | % 3
    d4 e a, a'      | % 4
    e f8 g a b c4      | % 5
    f, g c, a'      | % 6
    g d' a8 g f e      | % 7
    d4 e a, b      | % 8
    c8 d e f g4 fis8 gis      | % 9
    a b c d e4 a,8 g      | % 10
    fis e d4 e8 fis g4      | % 11
    a8 g a b c4 fis,      | % 12
    g f e8 c f e      | % 13
    d b e4 a, s4 \bar "|." 
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
