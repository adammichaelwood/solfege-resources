
% BWV 111 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 111"
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
    e4     g a g c      | % 1
    c b c c      | % 2
    b a d4. c8      | % 3
    b4 c b b      | % 4
    a2.\fermata  e4      | % 5
    g a g c      | % 6
    c b c c      | % 7
    b a d4. c8      | % 8
    b4 c b b      | % 9
    a2.\fermata  a4      | % 10
    a a b4. a8      | % 11
    b4 g g fis      | % 12
    g2.\fermata  g4      | % 13
    a b c b      | % 14
    a2 b4\fermata  e,      | % 15
    g a g c      | % 16
    c b c\fermata  c      | % 17
    b a d4. c8      | % 18
    b4 c b2      | % 19
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
    c4     c c8 d e f g4      | % 1
    g g g g      | % 2
    g f8 e d e e fis      | % 3
    gis4 a4. gis16 fis gis4      | % 4
    e2. c4      | % 5
    c c8 d e f g4      | % 6
    g g g g      | % 7
    g f8 e d e e fis      | % 8
    gis4 a4. gis16 fis gis4      | % 9
    e2. e4      | % 10
    d4. fis8 g4. a8      | % 11
    g4 g8 fis e4 d      | % 12
    d2. e4      | % 13
    fis8 e fis gis a4 e      | % 14
    e d8 e16 f b,4 c      | % 15
    c c8 d e f g4      | % 16
    g g g g      | % 17
    g f8 e d e e fis      | % 18
    gis4 a4. gis16 fis gis4      | % 19
    e2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     g c c c8 d      | % 1
    e d d4 e e      | % 2
    d d a8 b c d      | % 3
    e2. d16 c d8      | % 4
    c2. a4      | % 5
    g c c c8 d      | % 6
    e d d4 e e      | % 7
    d d a8 b c d      | % 8
    e2. d16 c d8      | % 9
    c2. c4      | % 10
    c8 a d4 d4. dis8      | % 11
    e4 b c a      | % 12
    b2. c8 b      | % 13
    a4 d e8 f g b,      | % 14
    c4 b8 a gis4 a      | % 15
    g c c c8 d      | % 16
    e d d4 e e      | % 17
    d d a8 b c d      | % 18
    e2. d16 c d8      | % 19
    c2. s4 \bar "|." 
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
    fis e fis d g a g fis      | % 11
    e fis e d c a d4      | % 12
    g,2. c4      | % 13
    c' b a g      | % 14
    f8 e f4 e a      | % 15
    e f c8 d e f      | % 16
    g4 g, c c      | % 17
    g' d8 e fis gis a4      | % 18
    e8 d c d e2      | % 19
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
