
% BWV 145 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 145"
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
    \time 3/4 
    fis4 fis fis      | % 1
    cis'2 dis4      | % 2
    e dis cis      | % 3
    b2.\fermata       | % 4
    cis4 dis eis      | % 5
    fis2 cis4      | % 6
    e dis2      | % 7
    cis\fermata  cis4      | % 8
    e d cis      | % 9
    b a gis      | % 10
    a fis2      | % 11
    e\fermata  e4      | % 12
    a2 b4      | % 13
    cis2 b4      | % 14
    a e'2      | % 15
    cis\fermata  b4      | % 16
    a gis2      | % 17
    fis2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    cis4 cis dis      | % 1
    e fis fis      | % 2
    gis8 ais b4 ais      | % 3
    fis2.      | % 4
    fis4 fis gis      | % 5
    a8 b a gis fis4      | % 6
    gis a gis      | % 7
    eis2 fis4      | % 8
    e2 e4      | % 9
    fis2 e4      | % 10
    e2 dis4      | % 11
    b2 cis4      | % 12
    cis fis e      | % 13
    e8 fis gis2      | % 14
    fis4 gis8 a b4      | % 15
    a2 gis4      | % 16
    fis2 eis4      | % 17
    cis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    a'8 b cis4 b      | % 1
    gis cis b      | % 2
    b gis cis      | % 3
    dis2.      | % 4
    cis4 b b      | % 5
    cis2 cis4      | % 6
    cis2 bis4      | % 7
    gis2 a4      | % 8
    b2 a4      | % 9
    fis b2      | % 10
    a8 b cis4 b8 a      | % 11
    gis2 gis4      | % 12
    a d2      | % 13
    cis4 cis2      | % 14
    cis8 d e2      | % 15
    e d4      | % 16
    cis b8 a b4      | % 17
    ais2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    fis8 gis a4 b      | % 1
    b ais b      | % 2
    gis e fis      | % 3
    b,2.      | % 4
    ais'4 b gis      | % 5
    fis8 eis fis gis a4      | % 6
    gis fis gis      | % 7
    cis,2 fis4      | % 8
    gis2 a4      | % 9
    dis,2 e4      | % 10
    cis a b      | % 11
    e2 cis4      | % 12
    fis2 gis4      | % 13
    a eis2      | % 14
    fis4 cis' gis      | % 15
    a2 b4      | % 16
    cis cis,2      | % 17
    fis2. \bar "|."\bar "|." 
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
