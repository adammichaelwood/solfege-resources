
% BWV 72 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 72"
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
    e8 f     g4 a g c      | % 1
    c b c\fermata  c      | % 2
    b a d4. c8      | % 3
    b4 c b2      | % 4
    a2.\fermata  e8 f      | % 5
    g4 a g c      | % 6
    c b c\fermata  c      | % 7
    b a d4. c8      | % 8
    b4 c b2      | % 9
    a2.\fermata  a4      | % 10
    a a b8 a g4      | % 11
    g fis g\fermata  g      | % 12
    a b c b      | % 13
    a2 b4\fermata  e,8 f      | % 14
    g4 a g c      | % 15
    c b c\fermata  c      | % 16
    b a d4. c8      | % 17
    b4 c b2      | % 18
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
    c4     c c c c8 d      | % 1
    e4 d e e      | % 2
    d d d a'      | % 3
    gis a2 gis4      | % 4
    e2. c4      | % 5
    c c c c8 d      | % 6
    e4 d e e      | % 7
    d d d a'      | % 8
    gis a2 gis4      | % 9
    e2. e4      | % 10
    d8 e fis4 fis8 dis e4      | % 11
    e d d e      | % 12
    fis gis a e~      | % 13
    e d8 e16 f b,4 c8 d      | % 14
    e4 e8 d d c g'4      | % 15
    f8 e f d e4 e      | % 16
    f8 e e d d4 e      | % 17
    e a2 gis4      | % 18
    e2. s4 \bar "|." 
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
    a'4     g f e8 f g a      | % 1
    g4 g g g      | % 2
    g f8 g a b c d      | % 3
    e2~ e8 b e d      | % 4
    c2. a4      | % 5
    g f e8 f g a      | % 6
    g4 g g g      | % 7
    g f8 g a b c d      | % 8
    e2~ e8 b e d      | % 9
    c2. c8 b      | % 10
    a4 d8 c b4 b      | % 11
    a a b c8 b      | % 12
    a4 d e8 f g4      | % 13
    c, b8 a gis4 a      | % 14
    b a e' e      | % 15
    a, g g a      | % 16
    a8 gis a4 gis8 a b a      | % 17
    gis4 fis b8 c d4      | % 18
    cis2. s4 \bar "|." 
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
    a'4     e f c8 d e f      | % 1
    g4 g, c c      | % 2
    g' d8 e fis gis a4      | % 3
    e8 d c d e2      | % 4
    a,2. a'4      | % 5
    e f c8 d e f      | % 6
    g4 g, c c      | % 7
    g' d8 e fis gis a4      | % 8
    e8 d c d e2      | % 9
    a,2. a'8 g      | % 10
    fis e d4 g8 fis e d      | % 11
    cis4 d g, c      | % 12
    c' b a g      | % 13
    f2 e4 a      | % 14
    g f e d8 c      | % 15
    d4 g c, a      | % 16
    d8 e f4 b,8 a' gis a      | % 17
    d,4 dis e2      | % 18
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
