
% BWV 148 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 148"
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
    fis4     fis gis a b      | % 1
    cis2\fermata  r4 cis      | % 2
    cis~ cis8 b a4 b      | % 3
    gis2\fermata  r4 gis      | % 4
    a b cis cis      | % 5
    b2 cis4\fermata  cis      | % 6
    a b cis d8 e      | % 7
    cis4 b8 a a4\fermata  cis      | % 8
    e cis cis cis      | % 9
    b2 b4\fermata  b      | % 10
    cis~ cis8 b a4 b8 a      | % 11
    gis2 fis4\fermata  s4 \bar "|." 
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
    cis4     cis dis8 eis fis eis fis gis      | % 1
    eis2 r4 e      | % 2
    e8 fis gis4 gis8 fis eis fis      | % 3
    eis2 r4 eis      | % 4
    fis e e fis      | % 5
    fis e e e      | % 6
    fis fis8 gis a4 a      | % 7
    a gis e a      | % 8
    b a a a      | % 9
    a gis8 fis gis4 gis      | % 10
    gis8 fis eis4 fis fis      | % 11
    fis eis cis s4 \bar "|." 
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
    a'8 b     cis4 b cis d      | % 1
    gis,2 r4 a      | % 2
    a gis cis d      | % 3
    cis2 r4 cis      | % 4
    cis8 d cis b a4 a      | % 5
    a gis a a      | % 6
    a d cis fis      | % 7
    e d8 cis cis4 e      | % 8
    e e fis e      | % 9
    fis8 e dis4 e e8 d      | % 10
    cis4 cis cis b8 cis      | % 11
    d4 cis8 b ais4 s4 \bar "|." 
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
    fis8 gis     a4 gis fis d      | % 1
    cis2 r4 a8 b      | % 2
    cis dis eis4 fis b,      | % 3
    cis2 r4 cis      | % 4
    fis gis a8 gis fis e      | % 5
    d4 e a, a      | % 6
    d8 cis b4 fis'8 e d4      | % 7
    e2 a,4 a'      | % 8
    gis a8 gis fis e d cis      | % 9
    dis4 b e gis8 fis      | % 10
    eis dis cis4 fis8 e d cis      | % 11
    b4 cis fis, s4 \bar "|." 
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
