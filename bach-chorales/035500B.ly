
% BWV 355 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 355"
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
    cis'4 a b b      | % 1
    cis dis e2\fermata       | % 2
    b4 cis d cis      | % 3
    b2 a\fermata       | % 4
    b4 b e e      | % 5
    d d cis2\fermata       | % 6
    b4 b a gis      | % 7
    fis2 e\fermata       | % 8
    a4 a d d      | % 9
    cis cis b2\fermata       | % 10
    a4 a a a      | % 11
    b2 e,\fermata       | % 12
    e'4 d cis b      | % 13
    a gis fis2\fermata       | % 14
    b4 a d cis      | % 15
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
    e4 e fis e      | % 1
    e fis gis2      | % 2
    gis4 a~ a8 gis a4      | % 3
    a gis e2      | % 4
    gis4 gis gis ais      | % 5
    fis fis fis2      | % 6
    fis4. e8 e dis e4      | % 7
    e dis b2      | % 8
    e4 e fis8 gis a b~      | % 9
    b a16 gis a4 a gis      | % 10
    fis g fis fis      | % 11
    fis8 e fis4 b,2      | % 12
    cis8 a'4 gis8 a4. gis8~      | % 13
    gis fis~ fis eis fis2      | % 14
    fis8 gis a4 a8 gis a4      | % 15
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
    a'4 a a gis      | % 1
    a a b2      | % 2
    e4 e d8 b e4      | % 3
    fis8 d b e16 d cis2      | % 4
    e4 e e8 d cis4~      | % 5
    cis b b ais      | % 6
    dis8 cis b4 cis8 a b4      | % 7
    cis b8 a gis2      | % 8
    a8 b cis b a gis fis e      | % 9
    e'4 e e2      | % 10
    cis8 d e4~ e d8 cis      | % 11
    b gis a b16 a gis2      | % 12
    a8 cis d b e fis b, e16 d      | % 13
    cis4~ cis8. b16 a2      | % 14
    d4 e d8 b cis e      | % 15
    fis d b e16 d cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a4 cis d e      | % 1
    a8 gis fis4 e2      | % 2
    e8 d cis4 b a      | % 3
    d e a,2      | % 4
    e'4 e8 d cis4 fis      | % 5
    b,8 cis d e fis2      | % 6
    b8 a gis4 fis e      | % 7
    a, b e2      | % 8
    cis8 b a gis fis e fis gis      | % 9
    a b cis d e2      | % 10
    fis8 e d cis d e fis e      | % 11
    dis e4 dis8 e2      | % 12
    a,4 b cis8 d e4      | % 13
    fis cis d2      | % 14
    d8 e d cis b e a, cis      | % 15
    d b e4 a,2 \bar "|."\bar "|." 
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
