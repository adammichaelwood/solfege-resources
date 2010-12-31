
% BWV 183 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 183"
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
    b8 c~ c b16 c d4\fermata  e      | % 2
    d8 c b a c4 b8 a      | % 3
    a2.\fermata  a4      | % 4
    a b c d      | % 5
    b8 c~ c b16 c d4\fermata  e      | % 6
    d8 c b a c4 b8 a      | % 7
    a2.\fermata  e'4      | % 8
    d c b a      | % 9
    b2.\fermata  b4      | % 10
    c d e e      | % 11
    d8 c b c b4\fermata  b      | % 12
    c d e e      | % 13
    d8 c b c b4\fermata  e      | % 14
    d8 c b a c4 b8 a      | % 15
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
    e8 d     e f e d c e a fis      | % 1
    d g e a gis4 b8 gis      | % 2
    e4. a8 a b gis4      | % 3
    e2. e8 d      | % 4
    e f e d c e a fis      | % 5
    d g e a gis4 b8 gis      | % 6
    e4. a8 a b gis4      | % 7
    e2. a8 g      | % 8
    fis gis a4 a8 gis a d      | % 9
    gis,2. gis4      | % 10
    a g g c8 b      | % 11
    a g fis4 g b      | % 12
    a g g g      | % 13
    fis8 gis a4 gis c8 b      | % 14
    a4 gis8 a a fis gis4      | % 15
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
    c'8 b     c d c b a c b a      | % 1
    b e c f e d b4      | % 2
    a8 b c d e f b, d      | % 3
    c2. c8 b      | % 4
    c d c b a c b a      | % 5
    b e c f e d b4      | % 6
    a8 b c d e f b, d      | % 7
    c2. c4      | % 8
    c8 b e f b, e e a,      | % 9
    e'2. e4      | % 10
    e d c8 d e4      | % 11
    a, d d e      | % 12
    e b c b      | % 13
    a8 e' d a e'4 a,      | % 14
    d8 e f d e4 d8 cis      | % 15
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
    a4     a' gis a fis      | % 1
    g8 a a g16 a b4 gis      | % 2
    a f e8 d e4      | % 3
    a,2. a4      | % 4
    a' gis a fis      | % 5
    g8 a a g16 a b4 gis      | % 6
    a f e8 d e4      | % 7
    a,2. a4      | % 8
    b c8 d e4 f      | % 9
    e2. e4      | % 10
    a8 b c b c b a g      | % 11
    fis e d4 g gis      | % 12
    a8 g f g f e d c      | % 13
    d e f d e4 c      | % 14
    f8 e d f e d e4      | % 15
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
