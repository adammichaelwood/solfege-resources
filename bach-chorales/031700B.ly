
% BWV 317 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 317"
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
    a'4 a b cis      | % 1
    d d cis\fermata  b      | % 2
    d a fis g      | % 3
    fis e d2\fermata       | % 4
    a'4 a b cis      | % 5
    d d cis\fermata  b      | % 6
    d a fis g      | % 7
    fis e d2\fermata       | % 8
    d4 e fis4. e8      | % 9
    d4 e fis\fermata  d'      | % 10
    cis d e4. d8      | % 11
    cis4 b a\fermata  a      | % 12
    a d cis a      | % 13
    b8 a g4 fis\fermata  e      | % 14
    fis g a4. g8      | % 15
    fis4 e d2\fermata       | % 16
    d4 e fis4. e8      | % 17
    d4 e fis\fermata  d'      | % 18
    cis d e4. d8      | % 19
    cis4 b a\fermata  a      | % 20
    a d cis a      | % 21
    b8 a g4 fis\fermata  e      | % 22
    fis g a4. g8      | % 23
    fis4 e d2\fermata       | % 24
    d4 e fis4. e8      | % 25
    d4 e fis\fermata  a      | % 26
    a a fis g      | % 27
    fis e d2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    fis4 fis g g      | % 1
    a a8 gis a4 g      | % 2
    fis e e8 d4 cis8      | % 3
    d4. cis8 a2      | % 4
    fis'4 fis g g      | % 5
    a a8 gis a4 g      | % 6
    fis e e8 d4 cis8      | % 7
    d4. cis8 a2      | % 8
    a4 a8 e'~ e d4 cis8      | % 9
    b4 b cis d8 e      | % 10
    fis4 fis8 b~ b a16 gis a4~      | % 11
    a gis e e      | % 12
    fis fis e d8 e      | % 13
    fis4. e8~ e dis e4~      | % 14
    e8 d~ d cis~ cis d~ d e~      | % 15
    e d4 cis8 a2      | % 16
    a4 a8 e'~ e d4 cis8      | % 17
    b4 b cis d8 e      | % 18
    fis4 fis8 b~ b a16 gis a4~      | % 19
    a gis e e      | % 20
    fis fis e d8 e      | % 21
    fis4. e8~ e dis e4~      | % 22
    e8 d~ d cis~ cis d~ d e~      | % 23
    e d4 cis8 a2      | % 24
    a4 a8 e'~ e d~ d cis      | % 25
    d4 b8 e d4 d~      | % 26
    d8 e fis e d4~ d8 e~      | % 27
    e d4 cis8 a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d'4 d d e      | % 1
    fis8 e d4 e e      | % 2
    d e8 a, a4 g      | % 3
    a4. a16 g fis2      | % 4
    d'4 d d e      | % 5
    fis8 e d4 e e      | % 6
    d e8 a, a4 g      | % 7
    a4. a16 g fis2      | % 8
    fis4 a a a8 g      | % 9
    fis4 b ais b~      | % 10
    b8 a fis'4 e cis8 d      | % 11
    e4~ e8 d cis4 cis      | % 12
    d a a8 g fis4      | % 13
    b b b b8 a      | % 14
    a4 g fis8 a b4      | % 15
    a~ a8 g fis2      | % 16
    fis4 a a a8 g      | % 17
    fis4 b ais b~      | % 18
    b8 a fis'4 e cis8 d      | % 19
    e4~ e8 d cis4 cis      | % 20
    d a a8 g fis4      | % 21
    b b b b8 a      | % 22
    a4 g fis8 a b4      | % 23
    a~ a8 g fis2      | % 24
    a4 a a a      | % 25
    a8 fis g a a4 fis8 g      | % 26
    a b cis4 d8 cis b4      | % 27
    a~ a8 g fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d4 d g8 fis e4      | % 1
    d8 cis b4 a e'      | % 2
    b cis d e      | % 3
    fis8 g a4 d,2      | % 4
    d4 d g8 fis e4      | % 5
    d8 cis b4 a e'      | % 6
    b cis d e      | % 7
    fis8 g a4 d,2      | % 8
    d4 cis d a      | % 9
    b8 a g4 fis b      | % 10
    fis' d cis fis      | % 11
    e e, a a'8 g      | % 12
    fis e d4 a d      | % 13
    dis e b cis      | % 14
    d e fis g      | % 15
    a a, d2      | % 16
    d4 cis d a      | % 17
    b8 a g4 fis b      | % 18
    fis' d cis fis      | % 19
    e e, a a'8 g      | % 20
    fis e d4 a d      | % 21
    dis e b cis      | % 22
    d e fis g      | % 23
    a a, d2      | % 24
    fis4 cis d a'8 g      | % 25
    fis d4 cis8 d4 d8 e      | % 26
    fis g a4 b8 a g4      | % 27
    a a, d2 \bar "|."\bar "|." 
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
