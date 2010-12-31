
% BWV 144 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 144"
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
    d4     g a b e      | % 1
    d4. c8 b4\fermata  e      | % 2
    d c b c8 d      | % 3
    a2 g4\fermata  d      | % 4
    g a b e      | % 5
    d4. c8 b4\fermata  e      | % 6
    d c b c8 d      | % 7
    a2 g4\fermata  d'      | % 8
    e e a,\fermata  a      | % 9
    d d g,\fermata  b      | % 10
    a g fis g8 fis      | % 11
    e2 d4\fermata  d'      | % 12
    c b a b8 c      | % 13
    a2 g4\fermata  s4 \bar "|." 
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
    b8 c     d4 d d e8 fis      | % 1
    g4 fis g g      | % 2
    fis g8 a b a g4      | % 3
    g fis d b8 c      | % 4
    d4 d d e8 fis      | % 5
    g4 fis g g      | % 6
    fis g8 a b a g4      | % 7
    g fis d g      | % 8
    g g fis fis8 g      | % 9
    a g fis4 e e      | % 10
    e d8 cis d4 d      | % 11
    d cis d g8 fis      | % 12
    e4 d8 e fis4 g      | % 13
    g fis d s4 \bar "|." 
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
    g'8 a     b4 a g g8 a      | % 1
    b4 a8 d d4 c8 b      | % 2
    a4 e' d e      | % 3
    e d8 c b4 g8 a      | % 4
    b4 a g g8 a      | % 5
    b4 a8 d d4 c8 b      | % 6
    a4 e' d e      | % 7
    e d8 c b4 b      | % 8
    c8 b a4 d d      | % 9
    a b b g      | % 10
    a a a g8 a      | % 11
    b4 a8 g fis4 g      | % 12
    g8 a b c d4 d      | % 13
    d8 c16 b c8 a b4 s4 \bar "|." 
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
    g4     g' fis g c,      | % 1
    b8 c d4 g, c      | % 2
    d e8 fis g fis e d      | % 3
    c4 d g, g      | % 4
    g' fis g c,      | % 5
    b8 c d4 g, c      | % 6
    d e8 fis g fis e d      | % 7
    c4 d g, g'      | % 8
    c, cis d d8 e      | % 9
    fis4 b, e e8 d      | % 10
    cis b a4 d8 cis b a      | % 11
    g4 a d b      | % 12
    e8 fis g4 d8 c b g      | % 13
    d'2 g,4 s4 \bar "|." 
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
