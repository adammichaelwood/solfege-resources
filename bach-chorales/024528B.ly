
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
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
    cis'4 b a b      | % 1
    cis dis e2\fermata       | % 2
    fis4 e d cis8 b      | % 3
    b2 a\fermata       | % 4
    cis4 e d cis      | % 5
    b a gis2\fermata       | % 6
    a4 b cis cis8 d16 e      | % 7
    d2 cis\fermata       | % 8
    cis4 d e d      | % 9
    cis b cis2\fermata       | % 10
    b4 b cis8 dis e4      | % 11
    e dis e2\fermata       | % 12
    e4 cis fis4. e8      | % 13
    d4 cis8 b b2\fermata       | % 14
    cis4 e d cis8 b      | % 15
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
    a'4 gis a gis      | % 1
    a8 gis fis4 gis2      | % 2
    b4 b gis a      | % 3
    a gis e2      | % 4
    a4 b a gis      | % 5
    fis fis eis2      | % 6
    cis4 e e e      | % 7
    a b a2      | % 8
    a4 a a a      | % 9
    a gis a2      | % 10
    gis4 e a gis      | % 11
    fis2 gis      | % 12
    g4 g fis8 gis a4      | % 13
    a8 gis a4 gis2      | % 14
    a4 b a a      | % 15
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
    e'4 e e e      | % 1
    e b b2      | % 2
    d4 b e e      | % 3
    fis e8 d cis2      | % 4
    e4 e fis cis      | % 5
    d d gis,2      | % 6
    fis4 gis a b      | % 7
    fis' e e2      | % 8
    e4 d cis b      | % 9
    cis8 d e4 e2      | % 10
    e4 b a b      | % 11
    cis b b2      | % 12
    bes4 a a8 b cis4      | % 13
    d e e2      | % 14
    e4 e fis fis      | % 15
    fis e8 d cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 e cis e      | % 1
    a, b e2      | % 2
    b'4 gis e a      | % 3
    d, e a,2      | % 4
    a'4 gis fis e      | % 5
    d cis8 b cis2      | % 6
    fis4 e a gis      | % 7
    fis gis a2      | % 8
    a4 fis cis d      | % 9
    e e a,2      | % 10
    e'8 fis gis4 fis e      | % 11
    a b e,2      | % 12
    g4 a d, cis      | % 13
    b a e'2      | % 14
    a4 gis fis e      | % 15
    dis e a,2 \bar "|."\bar "|." 
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
