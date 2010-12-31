
% BWV 184 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 184"
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
    d'4     d cis b a      | % 1
    d e fis\fermata  e      | % 2
    fis8 g16 a g4 fis e8 fis      | % 3
    g4 fis e2      | % 4
    d2.\fermata  d4      | % 5
    d cis b a      | % 6
    d e fis\fermata  e      | % 7
    fis8 g16 a g4 fis e8 fis      | % 8
    g4 fis e2      | % 9
    d2.\fermata  d4      | % 10
    e fis d\fermata  d      | % 11
    e fis d b      | % 12
    e4. d8 cis4 d8 cis      | % 13
    b2 a4\fermata  a      | % 14
    d cis b a      | % 15
    d e fis\fermata  e      | % 16
    fis8 g16 a g4 fis e8 fis      | % 17
    g4 fis e2      | % 18
    d2.\fermata  s4 \bar "|." 
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
    a'4     b a g g      | % 1
    fis a a a      | % 2
    a d,8 e fis g a4      | % 3
    g8 a b4 e,8 fis g4      | % 4
    fis2. a4      | % 5
    b a g g      | % 6
    fis a a a      | % 7
    a d,8 e fis g a4      | % 8
    g8 a b4 e,8 fis g4      | % 9
    fis2. a4      | % 10
    a a b a      | % 11
    b cis b fis      | % 12
    e8 fis gis4 a a      | % 13
    a gis e fis      | % 14
    fis8 gis a4 g8 fis e4      | % 15
    a a a a      | % 16
    a d,8 e fis g a4      | % 17
    g8 a b4 e,8 fis g4      | % 18
    fis2. s4 \bar "|." 
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
    fis'4     fis fis8 e d4 cis      | % 1
    d cis d cis      | % 2
    cis b a8 b cis4      | % 3
    d2. cis4      | % 4
    a2. fis'4      | % 5
    fis fis8 e d4 cis      | % 6
    d cis d cis      | % 7
    cis b a8 b cis4      | % 8
    d2. cis4      | % 9
    a2. fis'4      | % 10
    cis d d fis      | % 11
    e8 d cis4 fis d8 cis      | % 12
    b4 e e d8 e      | % 13
    fis4 e8 d cis4 cis      | % 14
    d e e8 d cis4      | % 15
    d cis d cis      | % 16
    cis b a8 b cis4      | % 17
    d2. cis4      | % 18
    a2. s4 \bar "|." 
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
    d'4     b fis g a      | % 1
    b a d, a'8 g      | % 2
    fis4 b,8 cis d4 cis      | % 3
    b8 b' a g a2      | % 4
    d,2. d'4      | % 5
    b fis g a      | % 6
    b a d, a'8 g      | % 7
    fis4 b,8 cis d4 cis      | % 8
    b8 b' a g a2      | % 9
    d,2. d'4      | % 10
    a d, g fis      | % 11
    gis ais b b8 a      | % 12
    gis fis e4 a8 gis fis e      | % 13
    d4 e a, fis'      | % 14
    b, cis8 d e fis g4      | % 15
    fis a d, a'8 g      | % 16
    fis4 b,8 cis d4 cis      | % 17
    b8 b' a g a2      | % 18
    a2. s4 \bar "|." 
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
