
% BWV 428 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 428"
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
    g'4     d e fis g      | % 1
    a b g\fermata  b8 c      | % 2
    d4 d b8 c d4      | % 3
    c2 b4\fermata  b      | % 4
    c b a g8 a      | % 5
    b4 b8 a g4\fermata  b8 c      | % 6
    d4 d b d      | % 7
    c2 b4\fermata  b      | % 8
    c b a g8 a      | % 9
    b4 b g\fermata  a      | % 10
    b b e, fis      | % 11
    g8 fis e4 d\fermata  d      | % 12
    g a b a8 b      | % 13
    c4 b a2      | % 14
    g2.\fermata  s4 \bar "|." 
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
    d4     d c c d      | % 1
    d d e d      | % 2
    d8 e fis4 g f      | % 3
    e fis d d      | % 4
    d4. e8 fis4 g8 fis      | % 5
    e4 dis e e      | % 6
    d a' g b~      | % 7
    b a g g      | % 8
    g g fis8 e d4      | % 9
    d d e e8 fis~      | % 10
    fis e16 fis g8 fis e4~ e8 d      | % 11
    d4 d8 cis a4 d      | % 12
    d d g g      | % 13
    fis8 a~ a g g4 fis      | % 14
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'8 a     g4 g a b      | % 1
    c b c b      | % 2
    a a g8 a b4~      | % 3
    b a g b      | % 4
    a b b b      | % 5
    b b b g      | % 6
    a8 b c d d e f4      | % 7
    e fis d d      | % 8
    c d d d8 c      | % 9
    b a g4 c c      | % 10
    b b~ b8 a a b16 c      | % 11
    b8 a g4 fis fis8 a      | % 12
    b4 a g e'8 d      | % 13
    c d d4 e d8 c      | % 14
    b2. s4 \bar "|." 
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
    g8 a     b4 bes a g      | % 1
    fis g c g'      | % 2
    fis8 e d4 e b      | % 3
    c d g, g'      | % 4
    fis g dis e8 fis      | % 5
    g a b4 e, e      | % 6
    f fis g gis      | % 7
    a d, g g8 fis      | % 8
    e4 d c b8 a      | % 9
    g a b4 c a'      | % 10
    g8 fis e d cis4 d      | % 11
    g, a d d8 c      | % 12
    b a g fis e d' c b      | % 13
    a fis g b c a d d,      | % 14
    g2. s4 \bar "|." 
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
