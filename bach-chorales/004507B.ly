
% BWV 45 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 45"
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
    b'4     gis fis8 e b'4 b      | % 1
    cis2\fermata  r4 cis      | % 2
    fis, fis b a      | % 3
    gis fis e\fermata  b'      | % 4
    cis cis b a      | % 5
    gis2\fermata  r4 fis      | % 6
    gis ais b cis      | % 7
    dis cis8 b b4\fermata  b      | % 8
    b b e d      | % 9
    cis2\fermata  r4 cis      | % 10
    cis cis fis e      | % 11
    dis2\fermata  r4 b      | % 12
    cis b cis dis      | % 13
    e2\fermata  r4 b      | % 14
    b a8 gis fis4 fis      | % 15
    e2.\fermata  s4 \bar "|." 
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
    e4     e dis e8 fis gis4      | % 1
    a2 r4 fis8 e      | % 2
    dis cis dis4 e fis      | % 3
    e dis b e      | % 4
    e a a8 gis fis4      | % 5
    e2 r4 fis      | % 6
    fis e fis gis      | % 7
    fis2 dis4 fis      | % 8
    e e e8 fis gis4      | % 9
    a2 r4 a      | % 10
    a ais b b8 ais      | % 11
    b2 r4 b      | % 12
    a b b8 a gis fis      | % 13
    e2 r4 fis      | % 14
    e e e dis      | % 15
    b2. s4 \bar "|." 
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
    gis'8 a     b4 a b e      | % 1
    e2 r4 cis      | % 2
    b b b b      | % 3
    b4. a8 gis4 b      | % 4
    a8 cis fis e dis e e dis      | % 5
    b2 r4 b      | % 6
    b cis fis,8 b b4      | % 7
    b ais fis b8 a      | % 8
    gis fis gis a b4 e      | % 9
    e2 r4 e      | % 10
    fis cis dis e      | % 11
    fis2 r4 e      | % 12
    e e a, b8 a      | % 13
    gis2 r4 fis8 gis16 a      | % 14
    gis4 a8 b cis4 b8 a      | % 15
    gis2. s4 \bar "|." 
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
    e4     e fis gis fis8 e      | % 1
    a2 r4 ais      | % 2
    b a gis dis      | % 3
    e b e gis      | % 4
    a fis b b,      | % 5
    e2 r4 dis      | % 6
    e cis dis e      | % 7
    fis2 b,4 dis      | % 8
    e8 dis e fis gis4 fis8 e      | % 9
    a2 r4 a8 gis      | % 10
    fis4 e dis cis      | % 11
    b2 r4 gis'      | % 12
    a gis fis b,      | % 13
    cis2 r4 dis      | % 14
    e8 dis cis b a4 b      | % 15
    e2. s4 \bar "|." 
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
