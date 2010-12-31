
% BWV 154 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 154"
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
    cis'4 d e e      | % 1
    d cis b b\fermata       | % 2
    cis d e cis      | % 3
    b b a2\fermata       | % 4
    cis4 d e e      | % 5
    d cis b b\fermata       | % 6
    cis d e cis      | % 7
    b b a2\fermata       | % 8
    b4 cis d d      | % 9
    cis cis b b\fermata       | % 10
    d e fis fis      | % 11
    e e d d\fermata       | % 12
    cis d e e      | % 13
    d cis b2\fermata       | % 14
    cis4 d e8 d cis4      | % 15
    b b a2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 a gis a      | % 1
    a8 gis a4 gis gis      | % 2
    a a b a      | % 3
    a gis e2      | % 4
    a4 a gis a      | % 5
    a8 gis a4 gis gis      | % 6
    a a b a      | % 7
    a gis e2      | % 8
    gis4 ais b b      | % 9
    b ais fis fis      | % 10
    fis a a a      | % 11
    a8 e a g fis4 fis      | % 12
    e a e8 fis gis4      | % 13
    a a gis2      | % 14
    a4 a a8 gis a4      | % 15
    a gis e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    e'4 fis e8 d cis4      | % 1
    d e e e      | % 2
    e fis b, cis8 d      | % 3
    e b e d cis2      | % 4
    e4 fis e8 d cis4      | % 5
    d e e e      | % 6
    e fis b, cis8 d      | % 7
    e b e d cis2      | % 8
    e4 e fis fis      | % 9
    fis8 cis fis e d4 d      | % 10
    d cis d d      | % 11
    d cis a a      | % 12
    a8 b cis4 b e      | % 13
    fis e e2      | % 14
    e4 fis e e      | % 15
    e8 b e d cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 fis cis fis      | % 1
    b, cis8 d e4 e      | % 2
    a8 gis fis4 gis a      | % 3
    e e a,2      | % 4
    a'4 fis cis fis      | % 5
    b, cis8 d e4 e      | % 6
    a8 gis fis4 gis a      | % 7
    e e a,2      | % 8
    e'4 d8 cis b cis d e      | % 9
    fis4 fis b, b      | % 10
    b' a8 g fis e d4      | % 11
    a' a, d d      | % 12
    a'8 gis fis4 gis cis      | % 13
    fis,8 gis a4 e2      | % 14
    a8 fis e d cis b a4      | % 15
    e' e a,2 \bar "|."\bar "|." 
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
