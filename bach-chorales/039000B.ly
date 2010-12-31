
% BWV 390 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 390"
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
    \time 3/4 
    \partial 4
    c'4     c2 b4      | % 1
    a2 g4      | % 2
    c d2      | % 3
    e\fermata  e4      | % 4
    e2 e4      | % 5
    e2 d4      | % 6
    c8 d d4. c8      | % 7
    c2\fermata  c4      | % 8
    c2 b4      | % 9
    a2 g4      | % 10
    c d2      | % 11
    e\fermata  e4      | % 12
    e2 e4      | % 13
    e2 d4      | % 14
    c8 d d4. c8      | % 15
    c2\fermata  c4      | % 16
    c d e      | % 17
    d2 e4      | % 18
    c b8 a b4      | % 19
    a2\fermata  a4      | % 20
    d c b      | % 21
    c a2      | % 22
    g\fermata  g4      | % 23
    c2 c4      | % 24
    d e f      | % 25
    e d e      | % 26
    c2\fermata  c4      | % 27
    f2 f4      | % 28
    e d e      | % 29
    d2\fermata  d4      | % 30
    e2 e4      | % 31
    f2 f4      | % 32
    g4. f8 e d      | % 33
    c2\fermata  e4      | % 34
    d c b      | % 35
    c a2      | % 36
    g\fermata  g4      | % 37
    c2 b4      | % 38
    a2 g4      | % 39
    d' e4. d8      | % 40
    d2\fermata  e4      | % 41
    f e d      | % 42
    c8 d d4. c8      | % 43
    c2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     a2 g4      | % 1
    c, d e8 f      | % 2
    g4 a g      | % 3
    g2 g4      | % 4
    b a gis      | % 5
    a e8 f g4      | % 6
    g a g      | % 7
    e2 g4      | % 8
    a2 g4      | % 9
    c, d e8 f      | % 10
    g4 a g      | % 11
    g2 g4      | % 12
    b a gis      | % 13
    a e8 f g4      | % 14
    g a g      | % 15
    e2 e4      | % 16
    f2 e4      | % 17
    gis a b      | % 18
    a2 gis4      | % 19
    a2 f8 e      | % 20
    d2 d4      | % 21
    e d c      | % 22
    b2 e4      | % 23
    d2 a'4      | % 24
    g2 g4      | % 25
    g f e      | % 26
    e2 a4      | % 27
    a2 a4      | % 28
    bes f g      | % 29
    f2 g4      | % 30
    g2 a4      | % 31
    f a2      | % 32
    g2.      | % 33
    a2 g4      | % 34
    a2 g4      | % 35
    g2 fis4      | % 36
    d2 d4      | % 37
    e f g      | % 38
    c, d e      | % 39
    f e8 d e fis      | % 40
    g2 g4      | % 41
    f g2      | % 42
    g4 a g      | % 43
    e2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    e'4     e f g      | % 1
    f2 e4      | % 2
    c2 b4      | % 3
    c2 c4      | % 4
    b c d      | % 5
    c2 b4      | % 6
    c2 b4      | % 7
    g2 e'4      | % 8
    e f g      | % 9
    f2 e4      | % 10
    c2 b4      | % 11
    c2 c4      | % 12
    b c d      | % 13
    c2 b4      | % 14
    c2 b4      | % 15
    g2 g4      | % 16
    a b c      | % 17
    d8 e f4 e      | % 18
    e2 d4      | % 19
    c2 c4      | % 20
    a2 g4      | % 21
    g fis2      | % 22
    g b4      | % 23
    c d e      | % 24
    d c b      | % 25
    c2 b4      | % 26
    c2 f4      | % 27
    a,2 d4      | % 28
    d2 cis4      | % 29
    a2 b4      | % 30
    c2 c4      | % 31
    a2 d4      | % 32
    d b c      | % 33
    c2 c8 b      | % 34
    a2 d4      | % 35
    c e d8 c      | % 36
    b2 b4      | % 37
    g d' e      | % 38
    a, b c      | % 39
    b c a      | % 40
    b2 c4      | % 41
    c2 b4      | % 42
    c2 b4      | % 43
    g2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    c'4     a2 e4      | % 1
    f2 c4      | % 2
    e f g      | % 3
    c,2 c'4      | % 4
    gis fis e      | % 5
    a g f      | % 6
    e f g      | % 7
    c,2 c'4      | % 8
    a2 e4      | % 9
    f2 c4      | % 10
    e f g      | % 11
    c,2 c'4      | % 12
    gis fis e      | % 13
    a g f      | % 14
    e f g      | % 15
    c,2 c4      | % 16
    f2 c'4      | % 17
    b a gis      | % 18
    a e2      | % 19
    f f4      | % 20
    fis2 g4      | % 21
    c, d2      | % 22
    g, e'4      | % 23
    a b c      | % 24
    b a g      | % 25
    c2 gis4      | % 26
    a2 f4      | % 27
    d e f      | % 28
    g a2      | % 29
    d, g4      | % 30
    c, b a      | % 31
    d c b      | % 32
    e d c      | % 33
    f2 c'4      | % 34
    fis,2 g4      | % 35
    e c d      | % 36
    g,2 g'8 f      | % 37
    e4 d c      | % 38
    f2 e4      | % 39
    d c2      | % 40
    g' c4      | % 41
    a g f      | % 42
    e f g      | % 43
    c,2 s4 \bar "|." 
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
