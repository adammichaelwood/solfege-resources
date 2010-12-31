
% BWV 394 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 394"
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
    d2 cis4\fermata  cis8 d      | % 2
    e4 e b cis8 b      | % 3
    a2 gis4\fermata  e      | % 4
    a b cis8 b cis d      | % 5
    b2\fermata  r4 cis8 b      | % 6
    a4 b cis8 d e4      | % 7
    d2 cis4\fermata  cis8 d      | % 8
    e4 e b cis8 b      | % 9
    a2 gis4\fermata  e      | % 10
    a b cis8 d e d      | % 11
    cis4 b a\fermata  s4 \bar "|." 
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
    a'8 gis     fis4. gis8 a4. e8      | % 1
    fis4 e e a      | % 2
    a8 gis a b gis fis e4      | % 3
    e dis e b      | % 4
    e8 fis gis4 a8 gis a b      | % 5
    gis2 r4 gis      | % 6
    fis e e8 d cis4      | % 7
    cis8 b16 a b4 a a'      | % 8
    b8 cis b a gis fis gis4~      | % 9
    gis8 fis16 e fis4 e e8 d      | % 10
    cis d cis b a4 a'      | % 11
    e8 fis b, e cis4 s4 \bar "|." 
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
    e'4     fis8 e d4 e a,      | % 1
    a gis a e'      | % 2
    e e e8 d cis4      | % 3
    cis b b gis      | % 4
    a d e8 d e fis      | % 5
    e2 r4 eis      | % 6
    cis8 d cis b a4 a      | % 7
    a8 fis'4 e8 e4 fis      | % 8
    e b b8 a gis fis      | % 9
    e cis'4 b8 b4 cis8 b      | % 10
    a4 gis8 fis e4. fis8      | % 11
    gis a4 gis8 e4 s4 \bar "|." 
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
    a'4     d8 cis b4 a cis,      | % 1
    b e a, a'8 b      | % 2
    cis4 cis,8 d e4 a8 gis      | % 3
    fis4 b, e e8 d      | % 4
    cis d cis b a4 a'8 d,      | % 5
    e2 r4 cis      | % 6
    fis gis a8 b a gis      | % 7
    fis4 gis a fis      | % 8
    gis8 a gis fis e fis e dis      | % 9
    cis4 dis e cis      | % 10
    fis e8 d cis b cis d      | % 11
    e d e4 a, s4 \bar "|." 
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
