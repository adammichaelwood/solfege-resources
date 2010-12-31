
% BWV 347 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 347"
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
    a'4     a a a b      | % 1
    g fis e\fermata  b'      | % 2
    cis b a gis8 fis      | % 3
    gis4 fis e\fermata  a      | % 4
    a a a b      | % 5
    g fis e\fermata  b'      | % 6
    cis b a gis8 fis      | % 7
    gis4 fis e\fermata  e'      | % 8
    d cis b a      | % 9
    a8 b cis4 b\fermata  cis      | % 10
    d cis b ais      | % 11
    b2.\fermata  e,4      | % 12
    a b cis d      | % 13
    e d8 cis b4\fermata  d      | % 14
    cis b e4. d8      | % 15
    cis b a b cis4 b      | % 16
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
    e4     fis e fis fis      | % 1
    e dis b gis'      | % 2
    a gis8 fis e2~      | % 3
    e4 dis b e      | % 4
    fis e fis fis      | % 5
    e dis b gis'      | % 6
    a gis8 fis e2~      | % 7
    e4 dis b cis'8 b      | % 8
    a4 a gis a8 g      | % 9
    fis gis a4 gis ais      | % 10
    b8 a g4 fis8 e fis4      | % 11
    fis2. e8 d      | % 12
    cis4 d e fis8 gis      | % 13
    a2 e4 b'      | % 14
    a8 gis fis4 e fis8 gis      | % 15
    a2 a4 gis      | % 16
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
    cis'4     cis cis8 b a gis fis4      | % 1
    b4. a8 gis4 e'      | % 2
    e dis cis2      | % 3
    b4. a8 gis4 cis      | % 4
    cis cis8 b a gis fis4      | % 5
    b4. a8 gis4 e'      | % 6
    e dis cis2      | % 7
    b4. a8 gis4 gis      | % 8
    a8 b cis d e4 e      | % 9
    d e e e      | % 10
    fis8 b,4 ais8 b4 cis      | % 11
    d2. gis,4      | % 12
    a gis8 fis e e' d4      | % 13
    cis8 d e fis gis4 fis      | % 14
    fis8 e d cis b4 cis8 d      | % 15
    e4. d8 cis fis b, e16 d      | % 16
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
    a'8 gis     fis4 cis d dis      | % 1
    e b e, e'      | % 2
    a b cis b8 a      | % 3
    b4 b, e a8 gis      | % 4
    fis4 cis d dis      | % 5
    e b e, e'      | % 6
    a b cis b8 a      | % 7
    b4 b, e cis      | % 8
    fis8 gis a4 e cis8 a      | % 9
    d4 cis8 d e4 cis      | % 10
    b cis d8 g fis4      | % 11
    b,2. cis4      | % 12
    fis e8 d cis4 b      | % 13
    a8 b cis d e4 b      | % 14
    fis'8 gis a4 gis8 e a4~      | % 15
    a8 gis fis4 e8 d e4      | % 16
    a,2. \bar "|." 
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
