
% BWV 436 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 436"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     b' gis e b'      | % 1
    cis cis b\fermata  b      | % 2
    cis dis e dis      | % 3
    cis cis b\fermata  gis      | % 4
    cis b a gis      | % 5
    fis2 e4\fermata  e      | % 6
    b' gis e b'      | % 7
    cis cis b\fermata  b      | % 8
    cis dis e dis      | % 9
    cis cis b\fermata  gis      | % 10
    cis b a gis      | % 11
    fis2 e4\fermata  r      | % 12
    b'2 gis\fermata       | % 13
    b gis\fermata       | % 14
    a4 gis fis gis      | % 15
    a gis fis gis      | % 16
    a gis fis2      | % 17
    e\fermata  e'4 dis      | % 18
    cis b a gis      | % 19
    fis2 e4 s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b4     b b cis dis      | % 1
    gis fis fis gis      | % 2
    a a gis fis      | % 3
    fis8 gis fis e dis4 e      | % 4
    e dis e8 fis gis e      | % 5
    e4 dis b b      | % 6
    b b cis dis      | % 7
    gis fis fis gis      | % 8
    a a gis fis      | % 9
    fis8 gis fis e dis4 e      | % 10
    e dis e8 fis gis e      | % 11
    e4 dis b r      | % 12
    fis'2 e      | % 13
    fis e      | % 14
    fis4 e dis e      | % 15
    fis e dis e      | % 16
    fis e8 dis cis dis16 e dis4      | % 17
    b2 gis'4 fisis      | % 18
    gis gis8 fis e4 e      | % 19
    e dis b s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef "treble_8"
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    gis'4     fis e8 fis gis ais b4      | % 1
    b ais dis e      | % 2
    e fis b, b      | % 3
    b ais b b      | % 4
    a8 gis fis4 cis' b      | % 5
    b4. a8 gis4 gis      | % 6
    fis e8 fis gis ais b4      | % 7
    b ais dis e      | % 8
    e fis b, b      | % 9
    b ais b b      | % 10
    a8 gis fis4 cis' b      | % 11
    b4. a8 gis4 r      | % 12
    b2 b      | % 13
    dis cis      | % 14
    cis4 b b b      | % 15
    b b b b      | % 16
    cis8 dis e4 e8 cis b a      | % 17
    gis2 cis8 b ais4      | % 18
    gis dis' cis b      | % 19
    cis b8 a gis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     dis e cis gis'      | % 1
    e fis b, e      | % 2
    a gis8 fis gis ais b4      | % 3
    fis fis, b e      | % 4
    a, b cis8 dis e4      | % 5
    b2 e4 e      | % 6
    dis e cis gis'      | % 7
    e fis b, e      | % 8
    a gis8 fis gis ais b4      | % 9
    fis fis, b e      | % 10
    a, b cis8 dis e4      | % 11
    b2 e4 r      | % 12
    dis2 e      | % 13
    b cis      | % 14
    fis4 gis a8 gis fis e      | % 15
    dis4 e b8 b' a gis      | % 16
    fis4 cis8 b a4 b      | % 17
    e2 cis4 dis      | % 18
    eis8 fisis gis4 cis,8 dis e4      | % 19
    ais, b e s4 \bar "|." 
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
