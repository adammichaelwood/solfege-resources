
% BWV 116 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 116"
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
    cis'8 b     a4 b cis8 d e4      | % 1
    d d cis\fermata  e      | % 2
    d cis b b      | % 3
    cis2.\fermata  cis8 b      | % 4
    a4 b cis8 d e4      | % 5
    d d cis\fermata  e      | % 6
    d cis b b      | % 7
    cis2.\fermata  b4      | % 8
    b b cis b      | % 9
    a8 gis a4 gis\fermata  gis      | % 10
    a b cis b8 cis      | % 11
    d4 cis8 b b2      | % 12
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
    a'8 gis     fis4 fis8 gis a4 gis      | % 1
    a b a e      | % 2
    fis8 gis a4 a gis      | % 3
    a2. a8 gis      | % 4
    fis4 fis8 gis a4 gis      | % 5
    a b a e      | % 6
    fis8 gis a4 a gis      | % 7
    a2. a4      | % 8
    gis8 a b4 b8 a a gis      | % 9
    fis eis fis4 eis eis      | % 10
    fis e8 d cis d e4      | % 11
    fis8 gis a4 a gis      | % 12
    e2. s4 \bar "|." 
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
    e'4     e8 d d4 cis cis      | % 1
    b8 a e'4 e b8 cis      | % 2
    d4 e fis e      | % 3
    e2. e4      | % 4
    e8 d d4 cis cis      | % 5
    b8 a e'4 e b8 cis      | % 6
    d4 e fis e      | % 7
    e2. fis4      | % 8
    e e e d      | % 9
    cis dis gis, cis      | % 10
    cis b a b      | % 11
    a8 b cis a e'4. d8      | % 12
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
    a4     d b fis' cis      | % 1
    fis gis a gis      | % 2
    fis e d e      | % 3
    a,2. a4      | % 4
    d b fis' cis      | % 5
    fis gis a gis      | % 6
    fis e d e      | % 7
    a,2. dis4      | % 8
    e8 fis gis e a gis fis eis      | % 9
    fis4 bis, cis cis      | % 10
    fis gis a gis      | % 11
    fis e8 d e2      | % 12
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
