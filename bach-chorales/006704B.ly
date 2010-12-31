
% BWV 67 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 67"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    fis4     fis2 fis4      | % 1
    cis'2 dis4      | % 2
    e dis cis      | % 3
    b2\fermata  cis4      | % 4
    dis2 eis4      | % 5
    fis2 cis4      | % 6
    e8 dis dis2      | % 7
    cis\fermata  cis4      | % 8
    e2 cis4      | % 9
    b2 gis4      | % 10
    a gis fis      | % 11
    e2\fermata  e4      | % 12
    a2 b4      | % 13
    cis2 b4      | % 14
    a e'2      | % 15
    cis\fermata  b4      | % 16
    a gis2      | % 17
    fis\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    cis4     dis2 dis4      | % 1
    cis2 fis4      | % 2
    e b' fis      | % 3
    fis2 fis4      | % 4
    fis2 gis4      | % 5
    fis gis a      | % 6
    gis a gis      | % 7
    eis2 fis4      | % 8
    e gis a      | % 9
    fis2 e4      | % 10
    e2 dis4      | % 11
    b2 b4      | % 12
    e fis gis      | % 13
    a2 gis4      | % 14
    fis b gis      | % 15
    a2 fis4      | % 16
    fis2 eis4      | % 17
    cis2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    ais'4     b2 b4      | % 1
    fis gis ais      | % 2
    b2 ais4      | % 3
    dis2 ais4      | % 4
    b2 b4      | % 5
    cis2 cis4      | % 6
    cis2 bis4      | % 7
    gis2 a4      | % 8
    b e e      | % 9
    fis dis b      | % 10
    a cis fis,      | % 11
    gis2 gis4      | % 12
    a2 d4      | % 13
    e fis cis      | % 14
    cis b e      | % 15
    e2 b4      | % 16
    cis d cis      | % 17
    ais2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    fis4     b ais gis      | % 1
    ais gis ais      | % 2
    gis e fis      | % 3
    b,2 fis'4      | % 4
    b a gis      | % 5
    a gis fis      | % 6
    gis fis gis      | % 7
    cis,2 fis4      | % 8
    gis e a      | % 9
    dis, b e      | % 10
    cis a b      | % 11
    e2 d4      | % 12
    cis cis' b      | % 13
    a dis, eis      | % 14
    fis gis e      | % 15
    a2 d,4      | % 16
    cis b cis      | % 17
    fis,2 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose e c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose e c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose e c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose e c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose e c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose e c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose e c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose e c \ABvoiceDA }
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
