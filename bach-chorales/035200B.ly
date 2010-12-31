
% BWV 352 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 352"
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
    e'4 e b c      | % 1
    d c8 b b4 a\fermata       | % 2
    c c b a      | % 3
    gis a b2\fermata       | % 4
    e4 e b c      | % 5
    d c8 b b4 a      | % 6
    c c b a\fermata       | % 7
    gis a b2\fermata       | % 8
    b4 c d8 c b4      | % 9
    c b8 a a4 g\fermata       | % 10
    c d e8 d c4      | % 11
    f e d c\fermata       | % 12
    b c d e      | % 13
    d c b2\fermata       | % 14
    a4 b c8 b d4      | % 15
    c b8 a a2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a'8 b c4 b a8 gis      | % 1
    a b a4~ a8 gis e4      | % 2
    e a8 g f e4 d8      | % 3
    d e16 f e8 fis gis2      | % 4
    a8 b c4 b a8 gis      | % 5
    a b a4~ a8 gis e4      | % 6
    e a8 g f e4 d8      | % 7
    d e16 f e8 fis gis2      | % 8
    gis4 a a g      | % 9
    g8 fis g4 fis d      | % 10
    c g' g a8 g      | % 11
    a b c4 b g      | % 12
    g f8 e d4 g8 a      | % 13
    b4 a gis2      | % 14
    a8 g f e e f e d      | % 15
    e4~ e8. d16 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'8 b a4 e' e      | % 1
    d8 b c d e4 c      | % 2
    c8 b a4~ a8 gis a4      | % 3
    b8 c16 d c8 e16 dis e2      | % 4
    c8 b a4 e' e      | % 5
    d8 b c d e4 c      | % 6
    c8 b a4~ a8 gis a4      | % 7
    b8 c16 d c8 e16 dis e2      | % 8
    e4 e d d      | % 9
    c8 d e4 d8 c b4      | % 10
    e b c8 b a4      | % 11
    d g, g'8 f e4      | % 12
    d c g'8 f e4      | % 13
    f e e2      | % 14
    e4 d c8 d gis, a      | % 15
    a4 gis e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a4 a' gis fis8 e      | % 1
    fis gis a4 e a,      | % 2
    a'8 g f e d e f4      | % 3
    b, c8 a e'2      | % 4
    a,4 a' gis fis8 e      | % 5
    fis gis a4 e a,      | % 6
    a'8 g f e d e f4      | % 7
    b, c8 a e'2      | % 8
    e4 a8 g fis d g fis      | % 9
    e4 d8 c d4 g,      | % 10
    a' g8 f e4 f8 e      | % 11
    d4 e8 f g4 c,      | % 12
    g' a b c8 b      | % 13
    a gis a4 e2      | % 14
    c8 b a gis a d e f      | % 15
    e d e4 a,2 \bar "|."\bar "|." 
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
