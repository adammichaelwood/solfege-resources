
% BWV 340 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 340"
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
    c'4     b a g8 f e4      | % 1
    a a g\fermata  c      | % 2
    b a g8 f e4      | % 3
    a a g\fermata  g      | % 4
    a b c8 d e4      | % 5
    d2 c4\fermata  c      | % 6
    b a g8 f e4      | % 7
    a a g\fermata  c      | % 8
    b a g8 f e4      | % 9
    a a g\fermata  g      | % 10
    a b c8 d e4      | % 11
    d2 c4\fermata  c      | % 12
    c d c a8 b      | % 13
    c4. d8 b4\fermata  b      | % 14
    c d c8 b a b      | % 15
    c4. d8 b4\fermata  e      | % 16
    f8 e d4 e8 d c4      | % 17
    c b c\fermata  b      | % 18
    c b a8 b g4      | % 19
    g8 a fis4 g\fermata  e'      | % 20
    d c b\fermata  e      | % 21
    f8 e d4 e8 d c b      | % 22
    a d b4 c\fermata  c      | % 23
    c c d c      | % 24
    c b c\fermata  s4 \bar "|." 
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
    g'4     g8 f e4 e e8 d      | % 1
    c4 f e e8 f      | % 2
    g4 f8 e d4 c8 d      | % 3
    e dis e fis fis e e4      | % 4
    d8 c f4 e a      | % 5
    a g8 f e4 g      | % 6
    g8 f e4 e e8 d      | % 7
    c4 f e e8 f      | % 8
    g4 f8 e d4 c8 d      | % 9
    e dis e fis fis e e4      | % 10
    d8 c f4 e a      | % 11
    a g8 f e4 g      | % 12
    a b a e      | % 13
    e d d g      | % 14
    g g g f      | % 15
    e4. fis8 gis4 a8 g      | % 16
    f4 g g8 f e4      | % 17
    a g g g      | % 18
    a a8 g g fis fis e      | % 19
    e4 d d c      | % 20
    d8 e e dis e4 e8 d      | % 21
    c e gis a b4 e,      | % 22
    e8 d e4 e c'8 bes      | % 23
    a g f e d4 e8 g      | % 24
    g4. g8 g4 s4 \bar "|." 
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
    e'4     d d8 c b4 c8 b      | % 1
    a b c4 c c8 d      | % 2
    e d c4 d g,      | % 3
    c8 b a c b4 c8 b      | % 4
    a4 d c8 b c4      | % 5
    c b g e'      | % 6
    d d8 c b4 c8 b      | % 7
    a b c4 c c8 d      | % 8
    e d c4 d g,      | % 9
    c8 b a c b4 c8 b      | % 10
    a4 d c8 b c4      | % 11
    c b g e'      | % 12
    e8 c f e e4. d8      | % 13
    c b a4 g d'      | % 14
    e f e a,8 gis      | % 15
    a e a4 b a      | % 16
    d8 c b4 b c      | % 17
    d e8 f e4 d      | % 18
    d d8 e e d b c      | % 19
    c4 a8 b16 c b4 g8 a      | % 20
    b4 a8 fis gis4 c8 b      | % 21
    a c d f b,4 c      | % 22
    c8 a b gis a4 g      | % 23
    c8 bes a4 a8 g g e'      | % 24
    d c d4 e s4 \bar "|." 
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
    c4     g' a e8 d c4      | % 1
    f8 g a b c4 a      | % 2
    e f b, c8 b      | % 3
    a b cis dis e4 c      | % 4
    f e8 d a'4. g8      | % 5
    f e g4 c, c      | % 6
    g' a e8 d c4      | % 7
    f8 g a b c4 a      | % 8
    e f b, c8 b      | % 9
    a b cis dis e4 c      | % 10
    f e8 d a'4. g8      | % 11
    f e g4 c, c'8 b      | % 12
    a4. gis8 a b c b      | % 13
    a g fis d g4 g8 f      | % 14
    e d c b c4 d      | % 15
    a8 b c a e'4 cis      | % 16
    d g8 f e4 a8 g      | % 17
    f d g4 c, g'      | % 18
    g8 fis g e c d e c      | % 19
    a4 d g, c      | % 20
    g'8 gis a4 e a,      | % 21
    a' b8 a gis4 a8 g      | % 22
    fis4 gis8 e a4 e      | % 23
    f8 g a4 b, e8 c      | % 24
    g'4 g, c s4 \bar "|." 
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
