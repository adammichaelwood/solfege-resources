
% BWV 346 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 346"
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
    g'4     e fis g g      | % 1
    e d c\fermata  c      | % 2
    g' g a b      | % 3
    c b a a      | % 4
    g2\fermata  r4 g      | % 5
    a b c\fermata  g      | % 6
    a g f f      | % 7
    e2\fermata  r4 c'      | % 8
    a b c\fermata  a      | % 9
    g f e\fermata  g      | % 10
    e fis g\fermata  c      | % 11
    b a g\fermata  g      | % 12
    e8 f g4 a g      | % 13
    f e d d      | % 14
    c1\fermata  \bar "|." 
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
    c4     c c b d~      | % 1
    d8 c4 b8 g4 g      | % 2
    d' e~ e8 fis g4~      | % 3
    g8 fis g4~ g~ g8 fis      | % 4
    d2 r4 e~      | % 5
    e8 d~ d e e4 c~      | % 6
    c8 b c cis d cis d4~      | % 7
    d cis r g'~      | % 8
    g8 f16 e f4 e f      | % 9
    e~ e8 d~ d cis d4      | % 10
    e b b g'8 a~      | % 11
    a g4 fis8 d4 d      | % 12
    c c c8 f4 e8      | % 13
    d4. c8~ c b16 a b4      | % 14
    g1 \bar "|." 
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
    e8 f     g4 a d, g      | % 1
    g~ g8. f16 e4 e      | % 2
    g c c d      | % 3
    c d e d8. c16      | % 4
    b2 r4 c      | % 5
    c b a e      | % 6
    f g a a      | % 7
    a2 r4 c      | % 8
    c d g, d'8 c      | % 9
    bes4 a a g~      | % 10
    g8 a~ a g16 fis e4 e'8 d      | % 11
    d4 d8. c16 b4 g      | % 12
    g c8 bes a8. b16 c8. bes16      | % 13
    a8 g g4 a8 d, g f      | % 14
    e1 \bar "|." 
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
    c4     bes a g b      | % 1
    c g c, c'      | % 2
    b c8 b a4 g      | % 3
    e' d c d      | % 4
    g,2 r4 e'      | % 5
    f gis, a c      | % 6
    f4. e8 d e f d      | % 7
    a'2 r4 e      | % 8
    f8 e d4 c d~      | % 9
    d8 cis d4 a b      | % 10
    cis dis e e8 fis      | % 11
    g4 d g, b      | % 12
    c8 d e c f4 c~      | % 13
    c8 b c4 f, g      | % 14
    c,1 \bar "|." 
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
