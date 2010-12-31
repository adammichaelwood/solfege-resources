
% BWV 389 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 389"
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
    c'4     c b a g      | % 1
    c d e\fermata  e      | % 2
    e8 d e4 e d      | % 3
    c8 d d4 c\fermata  c      | % 4
    c b a g      | % 5
    c d e\fermata  e      | % 6
    e8 d e4 e d      | % 7
    c8 d d4 c\fermata  c      | % 8
    c8 d e4 d e      | % 9
    c b a\fermata  a      | % 10
    d8 c b4 c8 b a4      | % 11
    g\fermata  g c c      | % 12
    d d e8 d e4      | % 13
    c\fermata  c f f      | % 14
    e8 d e4 d\fermata  d      | % 15
    e e f f      | % 16
    g8 f16 e f8 g c,4\fermata  e      | % 17
    d8 c b4 c8 b a4      | % 18
    g\fermata  g c b      | % 19
    a g d' e      | % 20
    d\fermata  e f e      | % 21
    d c8 d e4 d      | % 22
    c2.\fermata  s4 \bar "|." 
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
    g'4     a g g8 f e f      | % 1
    g4 a8 g g4 g      | % 2
    g8 a b4 a4. g8      | % 3
    g a g f e4 g      | % 4
    a g g8 f e f      | % 5
    g4 a8 g g4 g      | % 6
    g8 a b4 a4. g8      | % 7
    g a g f e4 e      | % 8
    f c' g8 f e4      | % 9
    e2 e4 e      | % 10
    d d g8 e fis4      | % 11
    d d g8 f e4      | % 12
    a8 f g4 g8 f g4      | % 13
    f g f8 g a4      | % 14
    bes e, f g      | % 15
    g a a bes      | % 16
    bes a8 g f4 g      | % 17
    a g g8 e fis4      | % 18
    d d a' d,8 e      | % 19
    f4 g a4. b16 c      | % 20
    g4 b a g8 a      | % 21
    b4 c2 b4      | % 22
    g2. s4 \bar "|." 
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
    e'4     e e8 d c4 c      | % 1
    c4. b8 c4 c8 d      | % 2
    e f e d c4. b8      | % 3
    c4 b g e'      | % 4
    e e8 d c4 c      | % 5
    c4. b8 c4 c8 d      | % 6
    e f e d c4. b8      | % 7
    c4 b g g      | % 8
    a g8 a b4 b      | % 9
    b8 a4 gis8 c4 c8 b      | % 10
    a4 g g d'8 c      | % 11
    b4 b8 a g4 c      | % 12
    c b c bes      | % 13
    a c d8 e f4      | % 14
    g cis, a b      | % 15
    c c d d      | % 16
    e8 d c bes a4 c8 b      | % 17
    a4 d g, d'8 c      | % 18
    b4 b e,8 fis g4      | % 19
    d' d8 c c b c4      | % 20
    b e8 d c d e f      | % 21
    g f e f g4. f8      | % 22
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
    c'8 b     a4 e f c8 d      | % 1
    e4 f8 g c,4 c      | % 2
    c' gis a8 g f g      | % 3
    e f g4 c, c'8 b      | % 4
    a4 e f c8 d      | % 5
    e4 f8 g c,4 c      | % 6
    c' gis a8 g f g      | % 7
    e f g4 c, c      | % 8
    f e8 f g4 gis      | % 9
    a e a, a'8 g      | % 10
    fis4 g8 fis e c d4      | % 11
    g, g'8 f e4 a8 g      | % 12
    f d g4 c,4. d16 e      | % 13
    f4 e d d'      | % 14
    g,8 bes a4 d, g      | % 15
    c8 b a g f e d4      | % 16
    c d8 e f4 c'      | % 17
    fis, g e8 c d4      | % 18
    g, g a b8 c      | % 19
    d4 e f fis      | % 20
    g gis a8 b c4      | % 21
    f,8 g a4 g8 f g4      | % 22
    c,2. s4 \bar "|." 
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
