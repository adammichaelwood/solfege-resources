
% BWV 429 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 429"
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
    a'4     e fis gis a      | % 1
    b cis8 b a4\fermata  cis8 d      | % 2
    e4 e8 d cis d e4      | % 3
    d2 cis4\fermata  cis      | % 4
    d cis b a8 b      | % 5
    cis4 cis a\fermata  cis8 d      | % 6
    e4 e cis8 d e4      | % 7
    d2 cis4\fermata  cis      | % 8
    d cis b a8 b      | % 9
    cis4 cis a\fermata  b      | % 10
    cis cis fis, gis      | % 11
    a8 gis fis4 e\fermata  e      | % 12
    a b cis b8 cis      | % 13
    d4 cis b2      | % 14
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
    e4     e4. dis8 e4 e8 fis      | % 1
    gis fis gis4 fis a      | % 2
    b8 a gis fis e4 e      | % 3
    fis e e e      | % 4
    b' e, e8 d cis b      | % 5
    a a' g fis16 g fis4 a      | % 6
    gis8 a b4 a8 b cis4~      | % 7
    cis8 b16 ais b4 ais gis      | % 8
    fis4. e8 d4 cis      | % 9
    cis cis cis e      | % 10
    e fis fis8 dis e4~      | % 11
    e dis b cis      | % 12
    cis8 d4 e8 e fis gis a      | % 13
    a2~ a4 gis      | % 14
    e2. s4 \bar "|." 
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
    cis'4     b a b cis      | % 1
    d cis cis fis      | % 2
    e b b a      | % 3
    a gis a a      | % 4
    a8 gis a4 gis8 gis' fis e      | % 5
    e4 e d e      | % 6
    e e e8 d cis fis      | % 7
    fis4. eis8 fis4 cis8 b      | % 8
    a b cis4 fis,8 gis a4      | % 9
    gis gis fis gis      | % 10
    a a b4. b8      | % 11
    a16 b cis4 b16 a gis4 gis      | % 12
    fis8 fis'4 e16 d cis8 b16 cis d8 e      | % 13
    a, fis'4 fis8 b, cis16 d e8 d      | % 14
    cis2. s4 \bar "|." 
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
    a'4     gis fis e8 d cis4      | % 1
    b eis, fis fis'      | % 2
    gis8 fis e4 a cis,      | % 3
    b e a, a      | % 4
    b cis8 d e4 fis8 gis      | % 5
    a4 a, d a'8 b      | % 6
    cis4 gis a ais      | % 7
    b b, fis' eis      | % 8
    fis8 gis a4 d,8 e fis4~      | % 9
    fis8 eis16 dis eis8 cis fis4 e      | % 10
    a8 gis fis e dis b e dis      | % 11
    cis a b4 e cis      | % 12
    fis gis a4. g8      | % 13
    fis4 e8 d e4 e,      | % 14
    a2. s4 \bar "|." 
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
