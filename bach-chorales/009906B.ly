
% BWV 99 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 99"
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
    d4     g a b c      | % 1
    d4. c8 b4\fermata  e      | % 2
    d c b8 a b4      | % 3
    a2 g4\fermata  d      | % 4
    g a b c      | % 5
    d4. c8 b4\fermata  e      | % 6
    d c b8 a b4      | % 7
    a2 g4\fermata  d'      | % 8
    e e a,\fermata  a      | % 9
    d d g,\fermata  b      | % 10
    a g fis8 e fis4      | % 11
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
    b8 c     d4 d g g      | % 1
    g fis g g      | % 2
    fis e d g      | % 3
    g fis d b8 c      | % 4
    d4 d g g      | % 5
    g fis g g      | % 6
    fis e d g      | % 7
    g fis d g      | % 8
    g a8 g fis4 fis      | % 9
    fis fis e e      | % 10
    e e e d      | % 11
    d cis a fis'      | % 12
    g8 a d, e fis4 g      | % 13
    g8 fis16 e fis4 d s4 \bar "|." 
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
    g'8 a     b4 a e' e      | % 1
    d8 c16 b a8 d d4 c8 b      | % 2
    a4 g8 a b c d4      | % 3
    d8 c16 b c8 a b4 g8 a      | % 4
    b4 a e' e      | % 5
    d8 c16 b a8 d d4 c8 b      | % 6
    a4 g8 a b c d4      | % 7
    d8 c16 b c8 a b4 b      | % 8
    c8 d e4 d cis      | % 9
    cis8 ais b4 b g      | % 10
    a8 b cis4 a b      | % 11
    b a8 g fis4 b      | % 12
    b8 a b c d4 d      | % 13
    d8 a16 b c4 b s4 \bar "|." 
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
    g4     g' fis e d8 c      | % 1
    b c d4 g, c      | % 2
    d e8 fis g4 b,8 c      | % 3
    d2 g,4 g      | % 4
    g' fis e d8 c      | % 5
    b c d4 g, c      | % 6
    d e8 fis g4 b,8 c      | % 7
    d2 g,4 g'      | % 8
    c, cis d fis      | % 9
    b,8 cis d b e4 e8 d      | % 10
    cis4 b8 a d cis b a      | % 11
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
