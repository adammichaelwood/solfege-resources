
% BWV 302 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 302"
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
    cis b a b      | % 3
    g8 fis e4 d\fermata  d'      | % 4
    d d a8 b cis4      | % 5
    d8 cis b4 a\fermata  d      | % 6
    cis b a b      | % 7
    g8 fis e4 d\fermata  d      | % 8
    a' b a gis      | % 9
    a2\fermata  d,4 a'      | % 10
    b cis d\fermata  cis      | % 11
    d8 cis b4 a\fermata  b      | % 12
    b a b8 a g4      | % 13
    fis\fermata  d' cis b      | % 14
    a b8 a g4 fis      | % 15
    e2 d4\fermata  s4 \bar "|." 
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
    a'4     d, d8 e fis4 g      | % 1
    a gis e b'      | % 2
    e, d cis b      | % 3
    cis8 d~ d cis d4 a'      | % 4
    d, d8 e fis4 g      | % 5
    a gis e b'      | % 6
    e, d cis b      | % 7
    cis8 d~ d cis d4 d      | % 8
    cis d e8 d b4      | % 9
    cis2 d8 e fis4      | % 10
    g8 fis e4 fis fis      | % 11
    fis16 gis a8~ a gis e4 g      | % 12
    g dis8 e fis4 e      | % 13
    dis fis fis8 e d e      | % 14
    fis e d4 e8 a, d4~      | % 15
    d cis a s4 \bar "|." 
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
    fis'4     fis b,8 cis d4 e      | % 1
    fis~ fis8 e16 d cis4 fis,8 gis      | % 2
    ais4 b fis'8 e d4      | % 3
    e8 a,4 g8 fis4 fis'      | % 4
    fis b,8 cis d4 e      | % 5
    fis~ fis8 e16 d cis4 fis,8 gis      | % 6
    ais4 b fis'8 e d4      | % 7
    e8 a,~ a g fis4 fis8 g      | % 8
    a4 gis8 fis e fis e4      | % 9
    e2 a4 d      | % 10
    d a a a      | % 11
    b8 e fis e cis4 e      | % 12
    d8 e fis4 b, b      | % 13
    b b a b8 cis      | % 14
    d4 g,8 fis e4 fis16 g a8      | % 15
    b4 a8 g fis4 s4 \bar "|." 
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
    cis d8 e fis4 g8 fis      | % 3
    e d a4 d d'8 cis      | % 4
    b4 a8 g fis4 e      | % 5
    d e a, b      | % 6
    cis d8 e fis4 g8 fis      | % 7
    e d a4 d d8 e      | % 8
    fis4 e8 d cis d e4      | % 9
    a,2 fis'4 e8 d      | % 10
    g4 a d, fis      | % 11
    b,8 cis d e a,4 e'8 fis      | % 12
    g4 fis8 e dis4 e      | % 13
    b b fis' g      | % 14
    d8 cis b4 cis d      | % 15
    g, a d, s4 \bar "|." 
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
