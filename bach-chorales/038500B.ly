
% BWV 385 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 385"
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
    a'4     b b a fis      | % 1
    e fis8 gis a4 b      | % 2
    a2.\fermata  cis8 d      | % 3
    e4 fis e cis      | % 4
    a fis8 gis a4 b      | % 5
    a2\fermata  cis4 cis      | % 6
    cis b cis2      | % 7
    a\fermata  r4 a      | % 8
    b b cis2      | % 9
    a\fermata  b4 b      | % 10
    cis8 b a gis fis4 b      | % 11
    b a8 gis fis2      | % 12
    e\fermata  fis4 gis      | % 13
    a b a\fermata  s4 \bar "|." 
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
    e4     e e e d8 cis      | % 1
    b4 cis8 d e4 e      | % 2
    e2. a4      | % 3
    b8 cis d cis b4 a      | % 4
    a d, cis fis8 e      | % 5
    cis2 a'4 b      | % 6
    a8 gis fis4 fis eis      | % 7
    cis2 r4 fis      | % 8
    gis gis a8 fis g4      | % 9
    fis2 fis4 gis      | % 10
    a8 gis fis e d4 d      | % 11
    cis8 gis' fis e e4 dis      | % 12
    b2 d4 d      | % 13
    e e8 d cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     b8 a gis4 a a      | % 1
    gis a8 b e, a4 gis8      | % 2
    cis2. e4~      | % 3
    e a, b cis8 d      | % 4
    e4 a, a4. gis8      | % 5
    e2 e'4 gis      | % 6
    fis fis,8 gis a4 gis      | % 7
    fis2 r4 cis'      | % 8
    e e e2      | % 9
    d d8 cis b4      | % 10
    a8 cis d e a,4 gis8 fis      | % 11
    e4 fis8 gis cis4 b8 a      | % 12
    gis2 a4 b      | % 13
    e,8 a4 gis8 e4 s4 \bar "|." 
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
    a'4     gis8 fis e d cis4 d~      | % 1
    d cis8 b cis a e'4      | % 2
    a,2. a'4      | % 3
    gis fis gis a      | % 4
    cis, d8 e fis a d, e      | % 5
    a,2 a'8 gis fis eis      | % 6
    fis e d4 cis2      | % 7
    fis r4 fis      | % 8
    e8 d cis b a2      | % 9
    d b4 e      | % 10
    a, b8 cis d4 b      | % 11
    cis dis8 e a,4 b      | % 12
    e2 d4 cis8 b      | % 13
    cis a e4 a s4 \bar "|." 
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
