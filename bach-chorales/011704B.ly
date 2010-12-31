
% BWV 117 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 117"
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
    \partial 4
    d'4     d d d8 e f4      | % 1
    e d c\fermata  d      | % 2
    b8 a g a b4 cis      | % 3
    d e d\fermata  d      | % 4
    d d d8 e f4      | % 5
    e d c\fermata  d      | % 6
    b8 a g a b4 cis      | % 7
    d e d\fermata  d      | % 8
    g fis e fis      | % 9
    g8 fis e4 d\fermata  d      | % 10
    g d e b8 c      | % 11
    d4 c b\fermata  b      | % 12
    a8 b c4 b a      | % 13
    e fis g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     g g8 fis g4 c,8 d      | % 1
    e8. f16 g4 g a      | % 2
    g d g8 fis e4      | % 3
    a8 fis g4 fis a      | % 4
    g g8 fis g4 c,8 d      | % 5
    e8. f16 g4 g a      | % 6
    g d g8 fis e4      | % 7
    a8 fis g4 fis b      | % 8
    b a8 b cis4 cis      | % 9
    d a8 g fis4 g      | % 10
    g g g g      | % 11
    a8 b e, a gis4 g      | % 12
    a g8 a b g e4      | % 13
    e d d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'8 c     b4 a b a      | % 1
    g8 c c b e4 d      | % 2
    d8 c b a g4 a      | % 3
    a8 d4 cis8 d4 d8 c      | % 4
    b4 a b a      | % 5
    g8 c c b e4 d      | % 6
    d8 c b a g4 a      | % 7
    a8 d4 cis8 d4 d      | % 8
    d8 e fis g a g fis e      | % 9
    d4 cis a b      | % 10
    b8 c d4 c g8 e'      | % 11
    d b c e16 dis e4 d      | % 12
    d e d c8 b      | % 13
    a2 b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     g d g, a8 b      | % 1
    c4 g c fis      | % 2
    g4. fis8 e fis g a      | % 3
    fis d a'4 d, fis      | % 4
    g d g, a8 b      | % 5
    c4 g c fis      | % 6
    g4. fis8 e fis g a      | % 7
    fis d a'4 d, g8 a      | % 8
    b cis d4 a ais      | % 9
    b8 g a4 d, g8 fis      | % 10
    e d c b c d e4      | % 11
    fis8 gis a4 e g      | % 12
    fis e8 fis g4 c,      | % 13
    cis d g, s4 \bar "|." 
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
