
% BWV 37 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 37"
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
    gis4 fis e\fermata  e      | % 4
    a a a b      | % 5
    gis fis e\fermata  b'      | % 6
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
    cis8 d     e4 e fis fis      | % 1
    e dis b gis'      | % 2
    a gis cis,8 dis e4~      | % 3
    e dis b b      | % 4
    cis8 d e4 dis8 e fis4      | % 5
    b,8 e~ e dis e4 e      | % 6
    e e e e8 dis      | % 7
    cis4 dis b gis'      | % 8
    fis e8 fis gis4 a8 g      | % 9
    fis gis a4 gis ais      | % 10
    b ais b fis      | % 11
    fis2. e4      | % 12
    cis e e fis      | % 13
    e fis gis fis      | % 14
    e e8 fis gis4 a      | % 15
    e2~ e8 d d cis      | % 16
    cis2. s4 \bar "|." 
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
    a'4     a8 b cis4 d8 cis b4      | % 1
    b a16 gis a8 gis4 e'      | % 2
    e e8 dis cis b16 a b8 cis      | % 3
    b4 a16 gis a8 gis4 gis      | % 4
    a8 g fis e fis4 fis      | % 5
    gis8. a16 b8 a gis4 b      | % 6
    a b cis b8 dis      | % 7
    e4 b gis cis      | % 8
    a8 b cis d e4 e      | % 9
    d cis8 d e4 e      | % 10
    fis e fis8 e16 d cis4      | % 11
    d2. gis,4      | % 12
    fis gis a a8 b      | % 13
    cis4 b8 a e'4 a,8 b      | % 14
    cis d e4 b a~      | % 15
    a a~ a gis      | % 16
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
    fis4     cis a d dis      | % 1
    e b e e      | % 2
    a, e' fis gis8 a      | % 3
    b4 b, e d      | % 4
    cis c b8 cis dis4      | % 5
    e b e gis      | % 6
    a gis cis,8 dis e4      | % 7
    a, b e cis      | % 8
    fis8 gis a4 e8 d cis4      | % 9
    d a e' cis      | % 10
    b cis d8 e fis4      | % 11
    b,2. cis4      | % 12
    fis e a fis      | % 13
    cis d e fis8 gis      | % 14
    a4 gis8 fis e d cis b      | % 15
    a b cis d e4 e      | % 16
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
