
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
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
    gis'4     cis b a gis      | % 1
    fis2 gis4\fermata  dis'      | % 2
    e e dis8 cis dis4      | % 3
    cis2.\fermata  gis4      | % 4
    cis b a gis      | % 5
    fis2 gis4\fermata  dis'      | % 6
    e e dis8 cis dis4      | % 7
    cis2.\fermata  e4      | % 8
    dis8 cis b4 cis dis      | % 9
    e2 e4\fermata  b      | % 10
    cis b a a      | % 11
    gis2.\fermata  e'4      | % 12
    dis8 e fis4 e dis      | % 13
    cis2 dis4\fermata  gis,      | % 14
    a gis fis b      | % 15
    gis2.\fermata  s4 \bar "|." 
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
    e4     e e e8 fis fis e      | % 1
    e4 dis e fis      | % 2
    e8 fis gis4 gis gis8 fis      | % 3
    e2. e4      | % 4
    e e e8 fis fis e      | % 5
    e4 dis e fis      | % 6
    e8 fis gis4 gis gis8 fis      | % 7
    e2. cis'8 b      | % 8
    a4 gis8 fis e4 a      | % 9
    a gis8 fis gis4 gis      | % 10
    a gis gis fis      | % 11
    eis2. fis4      | % 12
    fis fis gis fis      | % 13
    gis fis fis e      | % 14
    e8 dis e4 e dis      | % 15
    e2. s4 \bar "|." 
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
    b'4     a b cis8 b b4      | % 1
    cis b b bis      | % 2
    gis cis cis bis      | % 3
    cis2. b4      | % 4
    a b cis8 b b4      | % 5
    cis b b bis      | % 6
    gis cis cis bis      | % 7
    cis2. gis'4      | % 8
    fis8 e dis4 cis8 b a b      | % 9
    cis4 b8 a b4 e      | % 10
    e e8 dis cis4 cis      | % 11
    cis2. cis4      | % 12
    b b8 ais b cis dis b      | % 13
    gis cis ais4 b b      | % 14
    a b cis fis,8 b      | % 15
    b2. s4 \bar "|." 
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
    e4     a gis cis,8 dis e4      | % 1
    a, b e dis      | % 2
    cis8 dis e fis gis4 gis,      | % 3
    cis2. e4      | % 4
    a gis cis,8 dis e4      | % 5
    a, b e dis      | % 6
    cis8 dis e fis gis4 gis,      | % 7
    cis2. cis'4      | % 8
    fis, gis a8 gis fis4      | % 9
    e2 e4 e      | % 10
    a e fis8 gis a b      | % 11
    cis2. ais4      | % 12
    b dis, gis8 ais b4      | % 13
    e, fis b, e8 dis      | % 14
    cis4 b a b      | % 15
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
