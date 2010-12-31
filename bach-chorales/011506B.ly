
% BWV 115 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 115"
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
    b'4 c d d      | % 1
    g, a b2\fermata       | % 2
    e4 fis g b,      | % 3
    a2 g\fermata       | % 4
    b4 c d d      | % 5
    g, a b2\fermata       | % 6
    e4 fis g b,      | % 7
    a2 g\fermata       | % 8
    d'4 a b2\fermata       | % 9
    e4~ e8 d cis2\fermata       | % 10
    d4 a b8 cis d4      | % 11
    d cis d2\fermata       | % 12
    e4 fis g b,      | % 13
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
    g'4 g a8 g fis4      | % 1
    g g8 fis g2      | % 2
    g4 a g8 fis g4      | % 3
    g fis d2      | % 4
    g4 g a8 g fis4      | % 5
    g g8 fis g2      | % 6
    g4 a g8 fis g4      | % 7
    g fis d2      | % 8
    a'8 g fis a g2      | % 9
    e4~ e e2      | % 10
    a4 a~ a8 g fis4      | % 11
    e2 fis      | % 12
    a4 a g g      | % 13
    g fis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d'4 e a, b      | % 1
    b e8 d d2      | % 2
    c4 c d d      | % 3
    e d8 c b2      | % 4
    d4 e a, b      | % 5
    b e8 d d2      | % 6
    c4 c d d      | % 7
    e d8 c b2      | % 8
    d4 d d2      | % 9
    b8 a gis b a2      | % 10
    d8 e fis4 fis8 e d cis      | % 11
    b4 a a2      | % 12
    c4 d d d      | % 13
    e8 d16 c d8 a b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'8 fis e g fis e d fis      | % 1
    e d c d g,2      | % 2
    c8 b a c b a g b      | % 3
    c a d4 g,2      | % 4
    g'8 fis e g fis e d fis      | % 5
    e d c d g,2      | % 6
    c8 b a c b a g b      | % 7
    c a d4 g,2      | % 8
    fis'8 e d fis g2      | % 9
    gis8 fis e gis a2      | % 10
    fis8 e d fis g a b a      | % 11
    g e a4 d,2      | % 12
    a8 b c a b c d b      | % 13
    c a d4 g,2 \bar "|."\bar "|." 
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
