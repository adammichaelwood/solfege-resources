
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g a g      | % 1
    a8 b c4 c b      | % 2
    c2\fermata  d4 e      | % 3
    c2\fermata  b8 c d4      | % 4
    a2\fermata  d4 d      | % 5
    c b8 a a2      | % 6
    g\fermata  g4 g      | % 7
    a g a8 b c4      | % 8
    c b c2\fermata       | % 9
    d4 e c2\fermata       | % 10
    b8 c d4 a2\fermata       | % 11
    d4 d c b8 a      | % 12
    a2 g\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d4 e d d      | % 1
    e f g2      | % 2
    g b8 a b4      | % 3
    a2 g4 g      | % 4
    fis2 fis4 g      | % 5
    g g g fis      | % 6
    d2 e4 b8 cis      | % 7
    d c b4 c8 d c d      | % 8
    e4 d c2      | % 9
    fis4 gis e2      | % 10
    g4 fis8 g a2      | % 11
    g4 g8 fis g a d, e      | % 12
    fis g4 fis8 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4 c fis, g      | % 1
    c c8 d e4 d      | % 2
    e2 g8 f e4      | % 3
    e2 e4 d      | % 4
    d2 a4 b      | % 5
    c d e d8 c      | % 6
    b2 c4 g      | % 7
    fis g g8 f g a      | % 8
    g4 e' e2      | % 9
    d8 c b4 a2      | % 10
    g8 a b g d'2      | % 11
    b8 c d4 e8 fis g4      | % 12
    d8 c16 b c4 b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 c, c' b      | % 1
    a aes g2      | % 2
    c, g'4 gis      | % 3
    a2 e4 b8 c      | % 4
    d2 d4 g8 fis      | % 5
    e4 d c d      | % 6
    g,2 c8 d e4      | % 7
    d8 e f4 e8 d e fis      | % 8
    g4 gis a2      | % 9
    b4 e, a2      | % 10
    e4 d8 e fis2      | % 11
    g8 a b4~ b8 a b c      | % 12
    d4 d, g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
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
