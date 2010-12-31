
% BWV 17 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 17"
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
    \time 3/4 
    \partial 4
    a'4     a2 gis4      | % 1
    fis2 e4      | % 2
    a b2      | % 3
    cis\fermata  cis4      | % 4
    cis b cis      | % 5
    cis2 b4      | % 6
    a b2      | % 7
    a\fermata  a4      | % 8
    a2 gis4      | % 9
    fis2 e4      | % 10
    a b2      | % 11
    cis\fermata  cis4      | % 12
    cis b cis      | % 13
    cis2 b4      | % 14
    a b2      | % 15
    a\fermata  a4      | % 16
    a b cis      | % 17
    b2 cis4      | % 18
    a gis2      | % 19
    fis\fermata  b4      | % 20
    b a gis      | % 21
    a fis2      | % 22
    e\fermata  e4      | % 23
    a2 a4      | % 24
    b2 b4      | % 25
    cis4. b8 cis4      | % 26
    a2\fermata  a4      | % 27
    d2 d4      | % 28
    cis b cis      | % 29
    b2\fermata  b4      | % 30
    cis2 cis4      | % 31
    d2 d4      | % 32
    e2.      | % 33
    a,2\fermata  cis4      | % 34
    b a gis      | % 35
    a fis2      | % 36
    e\fermata  e4      | % 37
    a2 gis4      | % 38
    fis2 e4      | % 39
    b' cis2      | % 40
    b\fermata  cis4      | % 41
    d2 cis4      | % 42
    b a8 gis a b      | % 43
    cis4 b2      | % 44
    a\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    e4     fis2 e4      | % 1
    d cis b      | % 2
    e fis e      | % 3
    e2 e8 fis      | % 4
    gis2 eis4      | % 5
    fis2 gis4      | % 6
    a2 gis4      | % 7
    e2 e4      | % 8
    fis2 e4      | % 9
    d cis b      | % 10
    e fis e      | % 11
    e2 e8 fis      | % 12
    gis2 eis4      | % 13
    fis2 gis4      | % 14
    a2 gis4      | % 15
    e2 e4      | % 16
    fis gis a      | % 17
    b a gis      | % 18
    fis2 eis4      | % 19
    cis2 fis4      | % 20
    e2 e4      | % 21
    e2 dis4      | % 22
    b2 cis4      | % 23
    cis2 fis4      | % 24
    e fis gis      | % 25
    a2 g4      | % 26
    fis2 a4      | % 27
    b2 b8 a      | % 28
    g ais b4 e,      | % 29
    dis2 e4      | % 30
    e2 fis4      | % 31
    fis2 g4      | % 32
    g fis e      | % 33
    d2 e4      | % 34
    fis2 e4      | % 35
    e2 dis4      | % 36
    b2 cis4      | % 37
    cis dis e      | % 38
    dis2 e4      | % 39
    fis4. gis8 a4      | % 40
    e2 gis4      | % 41
    a b a      | % 42
    gis a2      | % 43
    a4 gis2      | % 44
    e \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    cis'4     cis2 cis4      | % 1
    a2 gis4      | % 2
    a2 gis4      | % 3
    a2 cis4      | % 4
    cis2 b4      | % 5
    a2 e'4      | % 6
    e fis e      | % 7
    cis2 cis4      | % 8
    cis2 cis4      | % 9
    a2 gis4      | % 10
    a2 gis4      | % 11
    a2 cis4      | % 12
    cis2 b4      | % 13
    a2 e'4      | % 14
    e fis e      | % 15
    cis2 cis4      | % 16
    d2 e4      | % 17
    eis fis gis      | % 18
    cis, d cis      | % 19
    a2 a4      | % 20
    gis a b      | % 21
    cis2 b8 a      | % 22
    gis2 gis4      | % 23
    a2 d4      | % 24
    b2 e4      | % 25
    e2.      | % 26
    d2 e4      | % 27
    fis2 b,4      | % 28
    e d8 cis b ais      | % 29
    b2 gis4      | % 30
    a2 a4      | % 31
    b2 b4      | % 32
    b a g      | % 33
    fis2 a4      | % 34
    fis2 b4      | % 35
    cis b a      | % 36
    gis2 gis4      | % 37
    a2 b4      | % 38
    b a gis      | % 39
    d' a2      | % 40
    gis cis4      | % 41
    fis e e      | % 42
    e8 d cis4 fis      | % 43
    e2 d4      | % 44
    cis2 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    a'4     fis2 cis4      | % 1
    d2 d4      | % 2
    cis d e      | % 3
    a,2 a'4      | % 4
    eis2 cis4      | % 5
    fis e d      | % 6
    cis d e      | % 7
    a,2 a'4      | % 8
    fis2 cis4      | % 9
    d2 d4      | % 10
    cis d e      | % 11
    a,2 a'4      | % 12
    eis2 cis4      | % 13
    fis e d      | % 14
    cis d e      | % 15
    a,2 a4      | % 16
    d2 a'4      | % 17
    gis fis eis      | % 18
    fis b, cis      | % 19
    fis,2 dis'4      | % 20
    e2 d4      | % 21
    cis a b      | % 22
    e2 cis4      | % 23
    fis e fis      | % 24
    gis fis e      | % 25
    a2 a,4      | % 26
    d2 cis4      | % 27
    b b'8 a g fis      | % 28
    e fis g4 fis      | % 29
    b,2 e4      | % 30
    a gis fis      | % 31
    b a g      | % 32
    cis,2.      | % 33
    d2 a'4      | % 34
    dis,2 e4      | % 35
    a, b2      | % 36
    e cis4      | % 37
    fis2 e4      | % 38
    b2 cis4      | % 39
    d2 dis4      | % 40
    e2 eis4      | % 41
    fis gis a      | % 42
    e fis d      | % 43
    e2.      | % 44
    a,2 \bar "|." 
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
