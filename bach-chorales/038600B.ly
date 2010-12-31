
% BWV 386 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 386"
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
    e'4     e e fis fis      | % 1
    e2\fermata  r4 cis      | % 2
    d cis b cis8. d16      | % 3
    b2 a4\fermata  <e' e e>      | % 4
    e e fis fis      | % 5
    e2\fermata  r4 cis      | % 6
    d cis b cis8. d16      | % 7
    b2 a4\fermata  b      | % 8
    b b cis cis      | % 9
    b2\fermata  r4 b      | % 10
    cis8 dis e4 e dis      | % 11
    e2\fermata  r4 e      | % 12
    fis e d cis      | % 13
    d2\fermata  r4 cis      | % 14
    b cis8. d16 b4~ b8 a      | % 15
    a2.\fermata  \bar "|." 
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
    a'4     a a a a      | % 1
    a2 r4 a      | % 2
    b a gis a~      | % 3
    a8 fis gis4 e a      | % 4
    a a a a      | % 5
    a2 r4 a      | % 6
    b a gis a~      | % 7
    a8 fis gis4 e gis8 fis      | % 8
    e4 e e e      | % 9
    e2 r4 gis      | % 10
    a gis fis fis      | % 11
    gis2 r4 a      | % 12
    a8 b cis4~ cis8 b4 ais8      | % 13
    b2 r4 a      | % 14
    gis a a gis      | % 15
    e2. \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     cis cis d d      | % 1
    cis2 r4 fis      | % 2
    e e e e      | % 3
    e8 d16 cis d4 cis cis      | % 4
    cis cis d d      | % 5
    cis2 r4 fis      | % 6
    e e e e      | % 7
    e8 d16 cis d4 cis b8 a      | % 8
    gis a b4~ b8 a16 gis a4      | % 9
    gis2 r4 e'      | % 10
    e e cis b      | % 11
    b2 r4 cis      | % 12
    d cis fis g8 fis      | % 13
    fis2 r4 e      | % 14
    e e8 fis fis d b8. e16      | % 15
    cis2. \bar "|." 
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
    a4     a'8 b cis a d, e fis d      | % 1
    a'2 r4 a      | % 2
    gis a e8 d cis a      | % 3
    e'2 a,4 a      | % 4
    a'8 b cis a d, e fis d      | % 5
    a'2 r4 a      | % 6
    gis a e8 d cis a      | % 7
    e'2 a,4 e'      | % 8
    e8 fis gis e a, b cis a      | % 9
    e2 r4 e'      | % 10
    a8 b cis gis a fis b b,      | % 11
    e2 r4 a,      | % 12
    d8 cis b ais b d e fis      | % 13
    b,2 r4 cis8 d      | % 14
    e4 a8 fis d b e e,      | % 15
    a2. \bar "|." 
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
