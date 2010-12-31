
% BWV 42 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 42"
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
    fis4     fis fis eis fis8 gis      | % 1
    a4 gis fis\fermata  a      | % 2
    b b cis8 b a4      | % 3
    b2 cis4\fermata  cis      | % 4
    cis b cis8 b a4      | % 5
    b8 a gis4 fis\fermata  fis8 gis      | % 6
    a4 a b a8 gis      | % 7
    fis2 fis4\fermata  b      | % 8
    cis b fis8 gis a4      | % 9
    gis8 fis gis4 fis\fermata  fis      | % 10
    fis e a b      | % 11
    cis8 b a4 b b      | % 12
    cis2\fermata  d      | % 13
    cis4 b8 cis16 d b4. a8      | % 14
    a2.\fermata  cis4      | % 15
    cis8 b a4 b8 cis d4      | % 16
    cis2\fermata  e4 cis      | % 17
    d cis8 b cis4 cis      | % 18
    d cis8 d e d cis4      | % 19
    b2 a\fermata       | % 20
    cis4 cis a b      | % 21
    a gis fis2\fermata       | % 22
    e4 fis8 gis a4 fis      | % 23
    fis2.\fermata  e4      | % 24
    fis gis a gis      | % 25
    fis2. eis4      | % 26
    fis2.\fermata  s4 \bar "|." 
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
    cis4     d d cis2~      | % 1
    cis8 fis fis eis cis4 fis      | % 2
    e8 fis gis4 a2~      | % 3
    a8 gis16 fis gis4 a a      | % 4
    a eis8 fis gis4 fis      | % 5
    fis e dis dis8 eis      | % 6
    fis4 fis gis8 fis eis4      | % 7
    fis8 e d4 cis e      | % 8
    e e d8 e fis4      | % 9
    fis eis cis cis      | % 10
    cis cis d d      | % 11
    cis cis fis e      | % 12
    e2 b'      | % 13
    e,4 fis e e      | % 14
    e2. gis4      | % 15
    a8 gis fis4 fis fis8 eis      | % 16
    fis2 gis8 b b a      | % 17
    a gis a gis a b cis4      | % 18
    cis8 b a4 e e      | % 19
    fis e8 d cis2      | % 20
    e4 e fis fis      | % 21
    fis e e d      | % 22
    cis d e d      | % 23
    d2. cis4~      | % 24
    cis2. d8 e      | % 25
    fis4 gis8 a d,4 cis      | % 26
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
    a'4     a a gis8 b a gis      | % 1
    fis4 cis'8 b a4 cis      | % 2
    b e e4. d16 cis      | % 3
    b4 e e e      | % 4
    e8 d d4 cis cis      | % 5
    b b b b      | % 6
    cis d d cis8 b      | % 7
    a ais b4 a gis      | % 8
    a b8 cis d4 cis      | % 9
    cis4. b8 a4 a      | % 10
    a gis fis gis      | % 11
    a8 gis a4 a gis      | % 12
    a2 gis      | % 13
    a4 a a8 fis gis d'      | % 14
    cis2. cis4      | % 15
    fis4. e8 d cis b gis      | % 16
    a2 b4 e      | % 17
    e e8 d cis b a gis      | % 18
    fis gis a4 b a      | % 19
    a gis e2      | % 20
    a4 a a d      | % 21
    cis b b2      | % 22
    gis4 a8 b cis4 b      | % 23
    a2. a8 gis      | % 24
    fis4 b a b      | % 25
    a gis8 fis gis a b4      | % 26
    ais2. s4 \bar "|." 
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
    fis8 e     d4 cis8 b cis4 dis8 eis      | % 1
    fis b, cis4 fis fis      | % 2
    gis fis8 e a gis fis e      | % 3
    d4 e a, a'8 gis      | % 4
    fis4 gis8 fis eis4 fis8 e      | % 5
    dis4 e b b'      | % 6
    fis8 e d cis b4 cis      | % 7
    d cis8 b fis'4 e      | % 8
    a gis8 a b4 a8 b      | % 9
    cis4 cis, fis fis8 gis      | % 10
    a b cis4 cis8 d cis b      | % 11
    a eis fis cis d b e4      | % 12
    a,2 b      | % 13
    cis4 d e e      | % 14
    a,2. eis'4      | % 15
    fis4. fis8 gis ais b4      | % 16
    fis2 e4 e      | % 17
    e e8 e e4 e      | % 18
    e fis gis a      | % 19
    d, e a,2      | % 20
    a8 b cis a d cis d e      | % 21
    fis4 gis8 a b2      | % 22
    cis,4. b8 a4 b8 cis      | % 23
    d2. a'4~      | % 24
    a8 gis fis eis fis4 b,8 cis      | % 25
    d cis b a b4 cis      | % 26
    fis2. s4 \bar "|." 
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
