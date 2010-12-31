
% BWV 104 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 104"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 b     cis4 d e d      | % 1
    cis b cis\fermata  cis      | % 2
    cis b8 cis d cis b4      | % 3
    a b a\fermata  a8 b      | % 4
    cis4 d e d      | % 5
    cis b cis\fermata  cis      | % 6
    cis b8 cis d cis b4      | % 7
    a b a\fermata  a      | % 8
    b cis d cis      | % 9
    b cis b\fermata  b      | % 10
    cis d e d      | % 11
    cis b cis\fermata  a      | % 12
    b cis d8 cis b4      | % 13
    a8 fis gis4 a\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     a a gis fis8 gis      | % 1
    a4 gis a e      | % 2
    fis fis8 e d e e4      | % 3
    e8 a gis fis e4 e      | % 4
    a a gis fis8 gis      | % 5
    a4 gis a e      | % 6
    fis fis8 e d e e4      | % 7
    e8 a gis fis e4 e      | % 8
    e e d8 e fis4      | % 9
    fis8 e e d16 cis d4 e      | % 10
    e fis gis fis      | % 11
    e d8 fis16 eis fis4 fis      | % 12
    fis e d e      | % 13
    e8 fis e4 e s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'8 d     e4 fis b,8 cis d4      | % 1
    e e e a,~      | % 2
    a2~ a4 d8 b      | % 3
    e d16 cis d4 cis cis8 d      | % 4
    e4 fis b,8 cis d4      | % 5
    e e e a,~      | % 6
    a2~ a4 d8 b      | % 7
    e d16 cis d4 cis cis      | % 8
    gis ais b ais      | % 9
    b ais fis b      | % 10
    a a b a8 b      | % 11
    cis4 fis,8 gis a4 cis      | % 12
    fis,8 gis a4 a gis      | % 13
    a8 d b4 cis s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     a'8 gis fis4 e b      | % 1
    cis8 d e4 a, a'8 gis      | % 2
    fis e d cis b a gis4      | % 3
    cis8 a e'4 a, a      | % 4
    a'8 gis fis4 e b      | % 5
    cis8 d e4 a, a'8 gis      | % 6
    fis e d cis b a gis4      | % 7
    cis8 a e'4 a, a      | % 8
    e' d8 cis b4 e8 fis      | % 9
    g4 fis b, gis'      | % 10
    a8 gis fis4 e fis8 gis      | % 11
    a4 b fis fis8 e      | % 12
    d4 cis b8 cis d4      | % 13
    cis8 d e4 a, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose a c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose a c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose a c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose a c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose a c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose a c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose a c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose a c \ABvoiceDA }
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
