
% BWV 25 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 25"
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
    c'4 d e d      | % 1
    c b a g\fermata       | % 2
    c d e d8 e16 f      | % 3
    e4 d8. c16 c2\fermata       | % 4
    c4 d e d      | % 5
    c b a g\fermata       | % 6
    c d e d8 e16 f      | % 7
    e4 d8. c16 c2\fermata       | % 8
    e4 f g f      | % 9
    e d e2\fermata       | % 10
    g4 g a g      | % 11
    f e d2\fermata       | % 12
    e4 g f e8 d      | % 13
    c4 d e2      | % 14
    c\fermata  e4 g      | % 15
    f e d c      | % 16
    d2 c\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    g'4 g g g      | % 1
    a d, d d      | % 2
    g a8 b c g g4      | % 3
    g g g2      | % 4
    g4 g g g      | % 5
    a d, d d      | % 6
    g a8 b c g g4      | % 7
    g g g2      | % 8
    g4 a8 bes16 c bes4 a      | % 9
    g f8 a16 gis a2      | % 10
    g4 c c b      | % 11
    a g8 fis g2      | % 12
    g4 c8 b a b c4      | % 13
    a a b e,      | % 14
    e2 g8 a bes4      | % 15
    a8 b c4 g g      | % 16
    g2 g \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e'4 b c d      | % 1
    e8 fis g4 g8 fis b,4      | % 2
    c f g8 c, d4~      | % 3
    d8 c c b e2      | % 4
    e4 b c d      | % 5
    e8 fis g4 g8 fis b,4      | % 6
    c f g8 c, d4~      | % 7
    d8 c c b e2      | % 8
    c4 c c c8 d      | % 9
    e a, a b cis2      | % 10
    c8 d e4 f8 e d4      | % 11
    c c b2      | % 12
    c8 d e4 f g8 g,      | % 13
    a e' d c b2      | % 14
    a bes4 e,      | % 15
    f g8 a b4 c      | % 16
    c b e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c4 g' c b      | % 1
    a g d g      | % 2
    e d c b      | % 3
    c g c2      | % 4
    c4 g' c b      | % 5
    a g d g      | % 6
    e d c b      | % 7
    c g c2      | % 8
    c'4 a e f      | % 9
    cis d a2      | % 10
    e'4 c f g      | % 11
    a8 b c4 g2      | % 12
    c4 c, d e      | % 13
    f fis g gis      | % 14
    a2 g4 c,      | % 15
    d e8 f g f e c      | % 16
    g2 c \bar "|."\bar "|." 
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
