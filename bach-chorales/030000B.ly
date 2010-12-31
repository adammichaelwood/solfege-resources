
% BWV 300 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 300"
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
    g'4     g g g a      | % 1
    b2\fermata  r4 b      | % 2
    b d g,8 a b4      | % 3
    a2 g4\fermata  b      | % 4
    a b g a      | % 5
    fis2\fermata  r4 g      | % 6
    g g a g      | % 7
    fis2 e4\fermata  fis      | % 8
    fis fis fis g      | % 9
    a2\fermata  r4 a      | % 10
    a b c c      | % 11
    b2\fermata  r4 b      | % 12
    b d c b      | % 13
    a2\fermata  r4 a      | % 14
    b a g fis      | % 15
    e2.\fermata  s4 \bar "|." 
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
    e4     d e d e8 fis      | % 1
    g2 r4 g      | % 2
    g g8 fis e fis g4      | % 3
    g fis d g      | % 4
    fis fis~ fis8 e~ e fis      | % 5
    dis2 r4 e      | % 6
    e d e8 dis e4~      | % 7
    e dis b d      | % 8
    d e d cis      | % 9
    d2 r4 fis      | % 10
    fis g g fis      | % 11
    g2 r4 g      | % 12
    g g~ g8 fis g4      | % 13
    fis2 r4 fis~      | % 14
    fis8 e fis4~ fis8 e4 dis8      | % 15
    b2. s4 \bar "|." 
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
    b'4     b8 a g a b4 c      | % 1
    d2 r4 d      | % 2
    e d c d~      | % 3
    d8 a d c b4 d      | % 4
    d dis b c      | % 5
    b2 r4 b      | % 6
    c g c cis      | % 7
    fis,8 b4 a8 g4 b      | % 8
    b cis~ cis8 b a g      | % 9
    fis2 r4 d'      | % 10
    d d e d      | % 11
    d2 r4 d      | % 12
    e d e8 d d4      | % 13
    d2 r4 d8 c      | % 14
    b2~ b4 b8. a16      | % 15
    g2. s4 \bar "|." 
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
    e4     b c b a      | % 1
    g2 r4 g'8 fis      | % 2
    e4 b c b8 c      | % 3
    d2 g,4 g'      | % 4
    d8 c b4 e a,      | % 5
    b2 r4 e8 d      | % 6
    c d c b a4 ais      | % 7
    b2 e4 b8 cis      | % 8
    d4 ais b e      | % 9
    d2 r4 d      | % 10
    d'8 c b4 a d,      | % 11
    g2 r4 g8 fis      | % 12
    e d c b a4 g      | % 13
    d'2 r4 d      | % 14
    dis8 cis dis b e4 b      | % 15
    e,2. s4 \bar "|." 
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
