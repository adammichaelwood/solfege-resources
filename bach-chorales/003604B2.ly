
% BWV 36 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 36"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     a' fis8 e d4 a'      | % 1
    b8. cis32 d b4 a\fermata  a      | % 2
    b cis d cis      | % 3
    b8 d cis b a4\fermata  fis      | % 4
    b a g fis      | % 5
    e2 d4\fermata  d      | % 6
    a' fis8 e d4 a'      | % 7
    b8. cis32 d b4 a\fermata  a      | % 8
    b cis d cis      | % 9
    b8 d cis b a4\fermata  fis      | % 10
    b a g fis      | % 11
    e2 d4\fermata  r      | % 12
    a'2 fis\fermata       | % 13
    a fis\fermata       | % 14
    fis4 fis e e      | % 15
    fis fis e fis      | % 16
    g fis e2      | % 17
    d\fermata  d'4 cis      | % 18
    b a g fis      | % 19
    e2 d4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     a a b cis      | % 1
    fis e e fis      | % 2
    g g fis e8 a      | % 3
    a4 gis e d      | % 4
    d d d8 cis d4      | % 5
    d cis a a      | % 6
    a a b cis      | % 7
    fis e e fis      | % 8
    g g fis e8 a      | % 9
    a4 gis e d      | % 10
    d d d8 cis d4      | % 11
    d cis a r      | % 12
    e'2 d      | % 13
    e d      | % 14
    d4 d cis cis      | % 15
    d d cis dis      | % 16
    e d8 cis b4 cis      | % 17
    a2 fis'4 fis8 e      | % 18
    d e fis4 fis8 e e d      | % 19
    d cis16 b cis4 a s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef "treble_8"
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     e d8 e fis gis a4      | % 1
    a gis cis d      | % 2
    d e a,8 b cis4      | % 3
    fis,8 fis' e d cis4 a      | % 4
    g a b8 g a4      | % 5
    a4. g8 fis4 fis      | % 6
    e d8 e fis gis a4      | % 7
    a gis cis d      | % 8
    d e a,8 b cis4      | % 9
    fis,8 fis' e d cis4 a      | % 10
    g a b8 g a4      | % 11
    a4. g8 fis4 r      | % 12
    a2 a      | % 13
    cis a      | % 14
    a4 a a a      | % 15
    a a a a      | % 16
    b8 cis d4 d8 cis16 b a8 g      | % 17
    fis2 fis8 gis ais4      | % 18
    b cis d8 e a,4      | % 19
    b a8 g fis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     cis d8 cis b4 fis'8 e      | % 1
    d b e4 a, d      | % 2
    g fis8 e fis gis a4      | % 3
    d, e a, d      | % 4
    g fis e d      | % 5
    a2 d4 d      | % 6
    cis d8 cis b4 fis'8 e      | % 7
    d b e4 a, d      | % 8
    g fis8 e fis gis a4      | % 9
    d, e a, d      | % 10
    g fis e d      | % 11
    a2 d4 r      | % 12
    cis2 d      | % 13
    a d      | % 14
    d8 e fis g a b a g      | % 15
    fis e fis d a a' g fis      | % 16
    e4 b'8 a g4 a      | % 17
    d,2 b4 fis      | % 18
    g a b8 cis d4      | % 19
    g, a d s4 \bar "|." 
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
