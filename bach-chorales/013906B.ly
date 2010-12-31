
% BWV 139 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 139"
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
    e dis cis b      | % 9
    a gis fis\fermata  b      | % 10
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
    b4     e e8 dis e4 e      | % 1
    b b8 cis dis4 fis      | % 2
    fis fis e8 fis gis4      | % 3
    fis4. e8 dis4 b      | % 4
    e e8 dis e4 e      | % 5
    b b8 cis dis4 fis      | % 6
    fis fis e8 fis gis4      | % 7
    fis4. e8 dis4 e8 fis      | % 8
    gis4 a8 b e,4 fis8 gis      | % 9
    cis, dis e4 dis gis8 fis      | % 10
    e4 e e8 dis e4      | % 11
    e dis b s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    gis'8 a     b4 a gis gis      | % 1
    fis gis8 a b4 dis      | % 2
    cis ais b b      | % 3
    b ais b gis8 a      | % 4
    b4 a gis gis      | % 5
    fis gis8 a b4 dis      | % 6
    cis ais b b      | % 7
    b ais b gis      | % 8
    cis cis8 b a4 a8 gis      | % 9
    a4 b8 cis dis4 dis      | % 10
    cis b cis8 b a4      | % 11
    b4. a8 gis4 s4 \bar "|." 
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
    e,4     e' fis gis cis,      | % 1
    dis e b b'      | % 2
    ais gis8 fis gis4 fis8 e      | % 3
    fis4 fis, b e,      | % 4
    e' fis gis cis,      | % 5
    dis e b b'      | % 6
    ais gis8 fis gis4 fis8 e      | % 7
    fis4 fis, b e8 dis      | % 8
    cis4 fis8 gis a4 dis,8 eis      | % 9
    fis4 gis8 ais b4 gis      | % 10
    cis,8 dis e4 a,8 b cis4      | % 11
    b8 a b4 e, s4 \bar "|." 
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
