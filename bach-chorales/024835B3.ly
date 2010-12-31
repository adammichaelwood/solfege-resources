
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
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
    fis8 gis     a4 gis fis\fermata  fis8 gis      | % 1
    a4 gis fis\fermata  cis'      | % 2
    b a gis\fermata  gis      | % 3
    a a b b      | % 4
    cis cis b a      | % 5
    gis2 fis4\fermata  cis'      | % 6
    b a8 gis gis4\fermata  cis      | % 7
    b a gis\fermata  gis      | % 8
    a a b b      | % 9
    cis cis b a8 gis      | % 10
    gis2 fis4\fermata  s4 \bar "|." 
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
    cis4     fis eis fis fis      | % 1
    fis eis cis fis      | % 2
    fis8 eis fis4 eis eis      | % 3
    fis fis fis8 gis16 a gis4      | % 4
    gis8 fis eis fis gis4. fis8      | % 5
    fis4 eis cis fis      | % 6
    fis8 eis fis4 eis fis8 e      | % 7
    dis e fis dis e4 gis8 eis      | % 8
    fis4 a8 fis d4 b'8 gis      | % 9
    a g fis4~ fis8 eis fis4~      | % 10
    fis8 eis16 dis eis4 cis s4 \bar "|." 
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
    a'8 b     cis4 cis8 b a4 b      | % 1
    cis cis8 b a4 a      | % 2
    b cis cis cis      | % 3
    cis d d8 e16 fis e8 d      | % 4
    cis4 b8 a d cis cis d      | % 5
    d b gis cis a4 a      | % 6
    b8 cis dis4 cis cis      | % 7
    fis, b b cis      | % 8
    cis8 a d4 d8 b e4      | % 9
    e8 cis fis e d cis dis4      | % 10
    cis8 gis cis b a4 s4 \bar "|." 
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
    fis4     fis16 gis a b cis8 cis, d4 d      | % 1
    cis8 b cis4 fis, fis'      | % 2
    gis a8 b cis4 cis,      | % 3
    fis8 e d cis d b e4      | % 4
    a,8 a' gis fis~ fis eis fis d      | % 5
    b gis cis4 fis, fis'8 e      | % 6
    d cis bis4 cis a      | % 7
    b8 cis dis b e4 eis8 cis      | % 8
    fis4 fis8 d g4 gis8 e      | % 9
    a4 ais8 fis b4 bis8 gis      | % 10
    cis4 cis, fis s4 \bar "|." 
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
