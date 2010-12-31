
% BWV 80 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 80"
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
    a2\fermata  d,4 a'      | % 10
    b cis d\fermata  cis      | % 11
    d cis b2      | % 12
    a4\fermata  b b a      | % 13
    b8 a g4 fis\fermata  d'      | % 14
    cis b a b8 a      | % 15
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
    a'4     a8 g fis e d4 e      | % 1
    a,8 a'4 gis8 e4 b'      | % 2
    e,8 fis g4 fis8 e d cis      | % 3
    b4 cis a a'      | % 4
    a8 g fis e d4 e      | % 5
    a,8 a'4 gis8 e4 b'      | % 6
    e,8 fis g4 fis8 e d cis      | % 7
    b4 cis a d      | % 8
    cis8 fis e4 e8 fis e4      | % 9
    e2 d4 d8 c      | % 10
    b d g4 fis fis      | % 11
    fis e8 a fis4 e8 d      | % 12
    cis4 e d8 e fis4      | % 13
    fis fis8 e dis4 fis      | % 14
    e d8 g g fis16 e fis4      | % 15
    g8 b, cis4 a s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis'8 e     d e fis g a4 g      | % 1
    fis b,8 e cis4 fis,8 gis      | % 2
    a4 e'8 d cis4 b8 cis      | % 3
    d4 a8 g fis4 fis'8 e      | % 4
    d e fis g a4 g      | % 5
    fis b,8 e cis4 fis,8 gis      | % 6
    a4 e'8 d cis4 b8 cis      | % 7
    d4 a8 g fis4 fis8 g      | % 8
    a d cis b cis4 b      | % 9
    cis2 fis,8 g a4      | % 10
    d e a, a      | % 11
    a8 gis a4 a gis      | % 12
    e g8 a b cis d c      | % 13
    b4 b b b8 a      | % 14
    g a b4 e8 cis d4      | % 15
    d a8 g fis4 s4 \bar "|." 
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
    d'8 cis     b4 a8 g fis g fis e      | % 1
    d4 e a, b      | % 2
    cis8 d e4 fis g8 a      | % 3
    b g a a, d4 d'8 cis      | % 4
    b4 a8 g fis g fis e      | % 5
    d4 e a, b      | % 6
    cis8 d e4 fis g8 a      | % 7
    b g a a, d4 d8 e      | % 8
    fis4 gis a8 d, e4      | % 9
    a,2 b4 fis'      | % 10
    g e d fis      | % 11
    b, cis d e      | % 12
    a, e'8 fis g4 d      | % 13
    dis e b b      | % 14
    e8 fis g e cis a d cis      | % 15
    b g a4 d, s4 \bar "|." 
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
