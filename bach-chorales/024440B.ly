
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
    \key a \major 
    %bartimesig: 
    \time 4/4 
    cis'4 d e e      | % 1
    d cis b b\fermata       | % 2
    cis d e d8 cis      | % 3
    b4 b8 a a2\fermata       | % 4
    cis4 d e e      | % 5
    d cis b b\fermata       | % 6
    cis d e d8 cis      | % 7
    b4 b8 a a2\fermata       | % 8
    b4 cis d8 cis d e      | % 9
    cis4 cis b2\fermata       | % 10
    d4 e fis e8 fis16 g      | % 11
    fis4 e8 d d2\fermata       | % 12
    cis4 d e e      | % 13
    d cis b b\fermata       | % 14
    cis d e a,8 b      | % 15
    cis4 b8 a a4 a\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'8 gis fis4 b8 a gis4      | % 1
    fis e8 fis gis4 gis      | % 2
    a8 gis a4 a8 gis a4      | % 3
    a8 fis gis4 e2      | % 4
    a8 gis fis4 b8 a gis4      | % 5
    fis e8 fis gis4 gis      | % 6
    a8 gis a4 a8 gis a4      | % 7
    a8 fis gis4 e2      | % 8
    gis4 ais b8 ais b4      | % 9
    b ais fis2      | % 10
    b4 b8 a a4 b      | % 11
    a g8 fis fis2      | % 12
    e4 a gis b8 a      | % 13
    a gis a4 e8 fis gis4      | % 14
    a gis8 fis e gis a4      | % 15
    a gis e e \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    fis'8 e d cis b4 cis8 b      | % 1
    a b cis d e4 e      | % 2
    e a,8 b cis d e4      | % 3
    fis e8 d cis2      | % 4
    e4 d8 cis b4 cis8 b      | % 5
    a b cis d e4 e      | % 6
    e a,8 b cis d e4      | % 7
    fis e8 d cis2      | % 8
    e4 e fis e8 d      | % 9
    g4 fis8 e d2      | % 10
    fis4 e d8 cis d4      | % 11
    d8 b cis4 a2      | % 12
    a4 b8 cis b4 cis      | % 13
    d8 e fis4 gis e      | % 14
    e d cis8 d e fis      | % 15
    e4 d8 cis cis4 cis \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    fis4 b8 a gis fis e4      | % 1
    fis8 gis a4 e e      | % 2
    a fis cis b8 a      | % 3
    d4 e a,2      | % 4
    a'4 b8 a gis fis e4      | % 5
    fis8 gis a4 e e      | % 6
    a fis cis b8 a      | % 7
    d4 e a,2      | % 8
    e'4 d8 cis b4 g'      | % 9
    e fis b,2      | % 10
    b4 cis d g      | % 11
    a a, d2      | % 12
    a'4 gis8 fis gis4 cis,      | % 13
    fis e8 dis e4 e      | % 14
    a,8 gis a b cis b cis d      | % 15
    e4 e a, a \bar "|."\bar "|." 
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
