
% BWV 331 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 331"
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
    a'4 e a b      | % 1
    c d b2      | % 2
    a\fermata  c4 b      | % 3
    a b c d      | % 4
    e1\fermata       | % 5
    a,4 e a b      | % 6
    c d b2      | % 7
    a\fermata  c4 b      | % 8
    a b c d      | % 9
    e1\fermata       | % 10
    e4 f g c,      | % 11
    f e d2      | % 12
    c\fermata  d4 d      | % 13
    e a, d c      | % 14
    b2 a\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 e e d      | % 1
    e a a gis      | % 2
    e2 a4 gis      | % 3
    a e e a      | % 4
    gis1      | % 5
    e4 e e d      | % 6
    e a a gis      | % 7
    e2 a4 gis      | % 8
    a e e a      | % 9
    gis1      | % 10
    a4 a g a      | % 11
    a8 aes g4 g4. f8      | % 12
    e2 g4 g      | % 13
    g fis8 e fis gis a4      | % 14
    a gis e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 c c8 a4 b16 a      | % 1
    gis4 a e'4. d8      | % 2
    c2 e4 d      | % 3
    e e8 d c b a4      | % 4
    b1      | % 5
    c4 c c8 a4 b16 a      | % 6
    gis4 a e'4. d8      | % 7
    c2 e4 d      | % 8
    e e8 d c b a4      | % 9
    b1      | % 10
    c4 d d8 c c4      | % 11
    c8 b c4 c b      | % 12
    g2 b4 b      | % 13
    c8 g d'4 d e      | % 14
    e4. d8 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a4 a'8 g fis4 f      | % 1
    e f8 d e2      | % 2
    a, a'4 b      | % 3
    c gis a8 g f4      | % 4
    e1      | % 5
    a,4 a'8 g fis4 f      | % 6
    e f8 d e2      | % 7
    a, a'4 b      | % 8
    c gis a8 g f4      | % 9
    e1      | % 10
    a4 g8 f e4 f8 e      | % 11
    d4 e8 f g2      | % 12
    c, g'8 f e d      | % 13
    c e d c b4 a      | % 14
    e'2 a, \bar "|."\bar "|." 
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
