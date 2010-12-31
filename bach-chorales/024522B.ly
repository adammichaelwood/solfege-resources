
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
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
    e8 fis     gis4 a b b      | % 1
    a gis fis\fermata  b      | % 2
    cis dis e dis8 cis      | % 3
    cis2 b4\fermata  e,8 fis      | % 4
    gis4 a b b      | % 5
    a gis fis\fermata  b      | % 6
    cis dis e dis8 cis      | % 7
    cis2 b4\fermata  b      | % 8
    e dis8 cis cis4 b      | % 9
    a gis8 fis fis4\fermata  b      | % 10
    a gis fis8 gis a4      | % 11
    gis fis e\fermata  s4 \bar "|." 
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
    b4     e e e e      | % 1
    e8 dis e4 dis fis      | % 2
    fis ais b8 fis fis gis      | % 3
    gis4 ais fis b,      | % 4
    e e e e      | % 5
    e8 dis e4 dis fis      | % 6
    fis ais b8 fis fis gis      | % 7
    gis4 ais fis gis      | % 8
    cis b b8 a a gis      | % 9
    gis fis e4 dis d      | % 10
    c b a8 b c4      | % 11
    b8 e e dis b4 s4 \bar "|." 
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
    gis'8 a     b4 cis d cis8 b      | % 1
    cis4 b b dis      | % 2
    cis fis b,8 cis dis e      | % 3
    e dis cis4 dis gis,8 a      | % 4
    b4 cis d cis8 b      | % 5
    cis4 b b dis      | % 6
    cis fis b,8 cis dis e      | % 7
    e dis cis4 dis e      | % 8
    gis gis gis8 fis fis dis      | % 9
    e b b4 b gis8 fis      | % 10
    e4 eis fis fis      | % 11
    gis8. a16 b8 fis gis4 s4 \bar "|." 
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
    e4     e cis gis cis      | % 1
    fis gis8 a b4 b      | % 2
    ais gis8 fis gis ais b4      | % 3
    e, fis b, e      | % 4
    e cis gis cis      | % 5
    fis gis8 a b4 b      | % 6
    ais gis8 fis gis ais b4      | % 7
    e, fis b, e8 dis      | % 8
    cis4 gis a b      | % 9
    cis8 dis e4 b b      | % 10
    c cis d dis      | % 11
    e b e s4 \bar "|." 
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
