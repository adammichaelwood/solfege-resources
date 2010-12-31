
% BWV 65 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 65"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     g a g c      | % 1
    c b c\fermata  c      | % 2
    b a d4. c8      | % 3
    b4 c b2      | % 4
    a2.\fermata  e4      | % 5
    g a g c      | % 6
    c b c\fermata  c      | % 7
    b a d4. c8      | % 8
    b4 c b2      | % 9
    a2.\fermata  a4      | % 10
    a a b4. a8      | % 11
    b4 g g fis      | % 12
    g\fermata  g a b      | % 13
    c b a2      | % 14
    b4\fermata  e,8 fis g4 a      | % 15
    g c c b      | % 16
    c\fermata  c b a      | % 17
    d4. c8 b4 c      | % 18
    b2 ^\markup {\upright  "BWV 65.7"} a4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     e8 d c d e f g4      | % 1
    g g g g      | % 2
    g f8 g a2      | % 3
    gis4 a a gis      | % 4
    e2. c4      | % 5
    e8 d c d e f g4      | % 6
    g g g g      | % 7
    g f8 g a2      | % 8
    gis4 a a gis      | % 9
    e2. e4      | % 10
    d8 e fis4 g4. a8      | % 11
    g4 e e d      | % 12
    d e fis f      | % 13
    e8 fis gis4 a4. dis,8      | % 14
    e4 b e fis      | % 15
    e e a g      | % 16
    g a a8 g g f      | % 17
    f4. e8 d4 c8 d      | % 18
    e2 e4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     b a8 b c4 c8 d      | % 1
    e d16 c d4 e e      | % 2
    d d a e'~      | % 3
    e e e4. d8      | % 4
    c2. a4      | % 5
    b a8 b c4 c8 d      | % 6
    e d16 c d4 e e      | % 7
    d d a e'~      | % 8
    e e e4. d8      | % 9
    c2. c8 b      | % 10
    a4 d d4. dis8      | % 11
    e4 b a a      | % 12
    b c a d      | % 13
    c8 d e4 e8 d c fis,      | % 14
    gis4 g8 a b4 c      | % 15
    b c d d      | % 16
    e e f8 e e d      | % 17
    d c b a e'2~      | % 18
    e8 a, gis4 cis s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     e' f c8 d e f      | % 1
    g4 g, c c      | % 2
    g' d8 e f g a4      | % 3
    e8 d c a e'2      | % 4
    a,2. a4      | % 5
    e' f c8 d e f      | % 6
    g4 g, c c      | % 7
    g' d8 e f g a4      | % 8
    e8 d c a e'2      | % 9
    a,2. a'8 g      | % 10
    fis4 e8 d g d g fis      | % 11
    e b e d c a d4      | % 12
    g, c c'8 b a gis      | % 13
    a4 e8 d c b a4      | % 14
    e' e e dis      | % 15
    e a8 g fis4 g      | % 16
    c, a d8 e f4      | % 17
    b,8 c d4 gis,8 e' c a      | % 18
    e'2 a,4 s4 \bar "|." 
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
