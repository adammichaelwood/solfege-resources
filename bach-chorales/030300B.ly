
% BWV 303 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 303"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d a8 b cis4      | % 1
    d8 cis b4 a\fermata  d      | % 2
    cis b a b8 a      | % 3
    g fis e4 d\fermata  d'      | % 4
    d d a8 b cis4      | % 5
    d8 cis b4 a\fermata  d      | % 6
    cis b a b8 a      | % 7
    g fis e4 d\fermata  d      | % 8
    a' b a gis      | % 9
    a\fermata  d, a' b8 cis      | % 10
    d4\fermata  cis d8 cis b4      | % 11
    a\fermata  b b a      | % 12
    b8 a g4 fis\fermata  d'      | % 13
    cis b a b8 a      | % 14
    g fis e4 d\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a8 g fis g a fis g a      | % 1
    fis e d e cis4 fis      | % 2
    e8 fis g4 fis8 e d4      | % 3
    d cis a a'      | % 4
    a8 g fis g a fis g a      | % 5
    fis e d e cis4 fis      | % 6
    e8 fis g4 fis8 e d4      | % 7
    d cis a d      | % 8
    cis8 fis e d cis d b4      | % 9
    a d d g8 g      | % 10
    fis4 fis fis16 gis a8 a gis      | % 11
    a4 g g fis      | % 12
    fis e dis fis8 gis      | % 13
    a4 g g fis8 e      | % 14
    d4 cis a s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'8 e     d4 c8 b d4 e      | % 1
    a, a8 gis a4 fis8 gis      | % 2
    a4 e'8 d cis4 b8 cis      | % 3
    d4 a8 g fis4 fis'8 e      | % 4
    d4 c8 b d4 e      | % 5
    a, a8 gis a4 fis8 gis      | % 6
    a4 e'8 d cis4 b8 cis      | % 7
    d4 a8 g fis4 fis8 gis      | % 8
    a d cis b e fis e d      | % 9
    cis4 fis,8 g a4 e'8 e      | % 10
    d4 a b8 e fis e      | % 11
    cis4 b8 cis d4 d8 c      | % 12
    b4 b b b      | % 13
    e e e d8 a      | % 14
    b4 e,8 a fis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'8 cis     b4 a8 g fis4 e      | % 1
    d e a, b      | % 2
    cis8 d e4 fis g8 a      | % 3
    b g a a, d4 d'8 cis      | % 4
    b4 a8 g fis4 e      | % 5
    d e a, b      | % 6
    cis8 d e4 fis g8 a      | % 7
    b g a a, d4 d8 e      | % 8
    fis4 gis a8 d, e4      | % 9
    a, b fis' e8 a,      | % 10
    d4 fis b,8 cis d e      | % 11
    a,4 e' b8 cis d4      | % 12
    dis e b b      | % 13
    cis8 d e d cis a d cis      | % 14
    b g a4 d s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
