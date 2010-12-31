
% BWV 30 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 30"
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
    a'4 b cis b      | % 1
    a gis fis2      | % 2
    e\fermata  a4 b      | % 3
    cis d cis b      | % 4
    a1\fermata       | % 5
    a4 b cis b      | % 6
    a gis fis2      | % 7
    e\fermata  a4 b      | % 8
    cis d cis b      | % 9
    a1\fermata       | % 10
    cis4 d e d      | % 11
    cis b cis2\fermata       | % 12
    e4 e fis e      | % 13
    d cis b2\fermata       | % 14
    cis8 d e4 d cis8 b      | % 15
    a4 b cis2      | % 16
    a\fermata  cis8 d e4      | % 17
    d cis b cis8. d16      | % 18
    b2 a\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    e4 e a dis,      | % 1
    e8 fis fis e e4 dis      | % 2
    b2 fis'4 fis8 e      | % 3
    e4 b' b8 a a gis      | % 4
    e1      | % 5
    e4 e a dis,      | % 6
    e8 fis fis e e4 dis      | % 7
    b2 fis'4 fis8 e      | % 8
    e4 b' b8 a a gis      | % 9
    e1      | % 10
    a4 a8 g g4 fis8 gis      | % 11
    ais4 b8 b, fis'2      | % 12
    e4 a8 g fis4 gis      | % 13
    a8 e4 fis8 gis2      | % 14
    a4 b a gis      | % 15
    gis8 fis fis gis a4 gis      | % 16
    fis2 ais4 b8 fis      | % 17
    fis gis a4 gis a~      | % 18
    a8 gis16 fis gis4 e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    cis'4 e e8 fis fis gis      | % 1
    cis, b b4 cis b8 a      | % 2
    gis2 cis4 b      | % 3
    b8 a a gis e'4 e8 d      | % 4
    cis1      | % 5
    cis4 e e8 fis fis gis      | % 6
    cis, b b4 cis b8 a      | % 7
    gis2 cis4 b      | % 8
    b8 a a gis e'4 e8 d      | % 9
    cis1      | % 10
    e4 b b8 ais b4      | % 11
    fis8 fis'4 e8 ais,2      | % 12
    a8 b cis4 cis8 b b cis      | % 13
    cis b cis dis e2      | % 14
    e4 e a,8 b cis4      | % 15
    cis d8 b fis'4. eis8      | % 16
    cis2 fis4 b,8 cis      | % 17
    d4 e e e      | % 18
    e4. d8 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 gis a b      | % 1
    cis8 dis e4 a, b      | % 2
    e,2 fis4 gis      | % 3
    a b cis8 d e e,      | % 4
    a1      | % 5
    a4 gis a b      | % 6
    cis8 dis e4 a, b      | % 7
    e,2 fis4 gis      | % 8
    a b cis8 d e e,      | % 9
    a1      | % 10
    a,4 b cis d8 e      | % 11
    fis4 g fis2      | % 12
    cis8 b a4 d e      | % 13
    fis8 gis a4 e2      | % 14
    a4 a8 gis fis4 eis      | % 15
    fis8 e d4 a'8 b cis4      | % 16
    fis,2 fis4 gis8 ais      | % 17
    b4 cis8 d e, d cis a      | % 18
    e'2 a, \bar "|."\bar "|." 
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
