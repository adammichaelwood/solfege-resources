
% BWV 60 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 60"
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
    a'2 b4 cis      | % 1
    dis2\fermata  r4 dis      | % 2
    e b b d      | % 3
    cis2.\fermata  b4      | % 4
    cis8 dis e4 e dis      | % 5
    e2\fermata  a,      | % 6
    b4 cis dis2\fermata       | % 7
    r4 dis e b      | % 8
    b d cis2\fermata       | % 9
    r4 b cis8 dis e4      | % 10
    e dis e2\fermata       | % 11
    r4 b b b      | % 12
    cis b d cis      | % 13
    cis2 b\fermata       | % 14
    r4 b b b      | % 15
    cis b d cis      | % 16
    cis2 b\fermata       | % 17
    r4 e cis b      | % 18
    a2\fermata  r4 e'      | % 19
    cis b a2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    e2 e4 d8 cis      | % 1
    gis'2 r4 gis      | % 2
    gis4. a8 gis fis gis e      | % 3
    a2. gis4      | % 4
    a8 b cis4 b a16 gis a8      | % 5
    gis2 e      | % 6
    e4 e fis2      | % 7
    r4 fis8 gis16 a gis8 fis gis a      | % 8
    b4 gis a2      | % 9
    r4 fis g8 a b4      | % 10
    b8 a16 gis a8 fis gis2      | % 11
    r4 gis8 a b a b gis      | % 12
    a4 b a a      | % 13
    a8 gis a fis gis2      | % 14
    r4 fis b b      | % 15
    ais a gis a      | % 16
    a8 fis dis4 e2      | % 17
    r4 e e fis8 gis      | % 18
    fis2 r4 b      | % 19
    a gis e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    cis'2 b4 fis'      | % 1
    fis2 r4 bis,      | % 2
    cis8 dis e4 e e      | % 3
    e2. e4      | % 4
    e8 fis g4 fis b,      | % 5
    b2 cis      | % 6
    b4 a a2      | % 7
    r4 b b e      | % 8
    e e e2      | % 9
    r4 dis e8 fis g4      | % 10
    fis b, b2      | % 11
    r4 e e e      | % 12
    e e fis e      | % 13
    e dis e2      | % 14
    r4 dis e f      | % 15
    e d e fis      | % 16
    e8 a, fis4 gis2      | % 17
    r4 b a a8 gis      | % 18
    cis2 r4 e      | % 19
    e d16 cis d8 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'2 gis4 ais      | % 1
    bis2 r4 gis      | % 2
    cis8 b16 a gis8 fis e d cis b      | % 3
    a2. e'4      | % 4
    a ais b b,      | % 5
    e2 a      | % 6
    gis4 g fis2      | % 7
    r4 b, e4. fis8      | % 8
    gis4 fis8 e a2      | % 9
    r4 a g8 fis e4      | % 10
    b' b, e2      | % 11
    r4 e8 fis gis fis gis e      | % 12
    a b a gis fis gis a4      | % 13
    e2 e      | % 14
    r4 a gis g      | % 15
    fis f e dis      | % 16
    e2 e      | % 17
    r4 gis a8 cis, dis eis      | % 18
    fis2 r4 gis      | % 19
    a e a,2 \bar "|."\bar "|." 
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
