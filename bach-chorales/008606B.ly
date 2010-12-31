
% BWV 86 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 86"
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
    \time 4/4 
    \partial 4
    b'4     b b b d      | % 1
    cis b a\fermata  b      | % 2
    gis e8 fis gis4 ais      | % 3
    b cis b\fermata  b      | % 4
    b b b d      | % 5
    cis b a\fermata  b      | % 6
    gis e8 fis gis4 ais      | % 7
    b cis b\fermata  b      | % 8
    e dis cis dis      | % 9
    e8 dis cis4 b\fermata  b      | % 10
    e b cis gis8 a      | % 11
    b4 a gis\fermata  gis      | % 12
    fis a gis fis      | % 13
    cis dis e\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    gis'4     fis8 gis a4 gis fis      | % 1
    e8 a a gis e4 fis      | % 2
    e e8 dis e4 cis      | % 3
    fis8 e16 dis e4 dis gis      | % 4
    fis8 gis a4 gis fis      | % 5
    e8 a a gis e4 fis      | % 6
    e e8 dis e4 cis      | % 7
    fis8 e16 dis e4 dis e8 fis      | % 8
    gis ais b4 ais b      | % 9
    b fis fis gis      | % 10
    e8 fis gis4 a e8 fis      | % 11
    gis4 fis eis e      | % 12
    dis cis b b      | % 13
    cis b b s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'4     fis e8 dis e4 a,8 b      | % 1
    cis16 d e4 d8 cis4 b      | % 2
    b b8 a gis4 fis      | % 3
    fis8 b4 ais8 fis4 e'      | % 4
    fis e8 dis e4 a,8 b      | % 5
    cis16 d e4 d8 cis4 b      | % 6
    b b8 a gis4 fis      | % 7
    fis8 b4 ais8 fis4 gis      | % 8
    cis fis, fis' fis      | % 9
    b, ais dis e      | % 10
    b e e cis      | % 11
    d cis cis b      | % 12
    b e e dis8 b      | % 13
    fis2 gis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     dis b e fis8 gis      | % 1
    a4 e a, dis      | % 2
    e8 fis gis4 cis, fis8 e      | % 3
    dis cis16 b fis'4 b, e      | % 4
    dis b e fis8 gis      | % 5
    a4 e a, dis      | % 6
    e8 fis gis4 cis, fis8 e      | % 7
    dis cis16 b fis'4 b, e      | % 8
    cis dis8 e fis4 b      | % 9
    gis8 e fis4 b, e      | % 10
    gis e a8 b cis4      | % 11
    eis, fis cis e      | % 12
    b cis8 dis e4 b      | % 13
    ais b e, s4 \bar "|." 
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
