
% BWV 169 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 169"
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
    a'4     b b a4. gis8      | % 1
    fis4 e fis gis      | % 2
    a2.\fermata  cis8 d      | % 3
    e4 fis e4. d8      | % 4
    cis b a gis fis4 gis      | % 5
    a2\fermata  cis4 cis      | % 6
    cis b cis2      | % 7
    a4\fermata  a b8 cis d4      | % 8
    cis8 b cis4 a2\fermata       | % 9
    b8 cis d4 cis8 b a gis      | % 10
    fis4 e a8 b cis4      | % 11
    b4. a8 gis4 fis      | % 12
    e2\fermata  fis4 gis      | % 13
    a2 b      | % 14
    a2.\fermata  s4 \bar "|." 
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
    e4     e e e e      | % 1
    d e d8 fis e4      | % 2
    e2. a4      | % 3
    a a b8 a gis4      | % 4
    a e d8 cis b4      | % 5
    cis2 e8 fis gis4      | % 6
    gis8 fis eis fis eis fis4 eis8      | % 7
    fis4 fis gis8 fis e4      | % 8
    e2 d      | % 9
    b'8 a gis4 a e      | % 10
    d8 cis b4 a8 e' e4      | % 11
    fis2~ fis8 e~ e dis      | % 12
    b2 d4. d8      | % 13
    cis d e4 fis e8 d      | % 14
    cis2. s4 \bar "|." 
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
    cis'4     b8 a gis4 a8 b cis4      | % 1
    a a a8 d cis b      | % 2
    cis2. e4      | % 3
    e d8 cis b4 e      | % 4
    e8 d cis b a4 e      | % 5
    e2 a4 gis      | % 6
    a b b8 a gis cis      | % 7
    cis4 d d8 cis b4      | % 8
    a8 g fis e fis2      | % 9
    e4 b' a2~      | % 10
    a4 gis8 fis e gis a gis      | % 11
    fis4 b b cis8 b      | % 12
    gis2 b4 b      | % 13
    a2. gis4      | % 14
    e2. s4 \bar "|." 
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
    a'4     gis8 fis e d cis b a4      | % 1
    d cis b e      | % 2
    a,2. a'8 b      | % 3
    cis4 d gis, e      | % 4
    a cis, d e      | % 5
    a,2 a'4 eis      | % 6
    fis d cis2      | % 7
    fis4 d8 cis b a gis4      | % 8
    a2 d      | % 9
    gis4 fis8 e a4 cis,      | % 10
    d2~ d4 cis      | % 11
    dis8 b cis dis e gis, a b      | % 12
    e2 b'4 eis,      | % 13
    fis cis d e      | % 14
    a,2. s4 \bar "|." 
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
