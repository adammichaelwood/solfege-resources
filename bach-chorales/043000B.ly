
% BWV 430 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 430"
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
    a'4     e fis gis a      | % 1
    b cis a\fermata  cis8 d      | % 2
    e4 e cis8 d e4      | % 3
    d2 cis4\fermata  cis      | % 4
    d cis b a8 b      | % 5
    cis4 cis a\fermata  cis8 d      | % 6
    e4 e cis8 d e4      | % 7
    d2 cis4\fermata  cis      | % 8
    d cis b a8 b      | % 9
    cis4 cis a\fermata  b      | % 10
    cis cis fis, gis      | % 11
    a8 gis fis4 e\fermata  e      | % 12
    a b cis4. b16 cis      | % 13
    d4 cis b2      | % 14
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
    cis8 d     e4 b b a      | % 1
    e' e d e      | % 2
    e e e fis      | % 3
    fis8 eis fis gis a4 a      | % 4
    b a gis fis      | % 5
    fis4. eis8 cis4 fis      | % 6
    e8 fis gis4 a4. a8      | % 7
    a gis16 fis gis4 a a      | % 8
    a8 gis a4 e4. fis16 gis      | % 9
    a4 g fis e      | % 10
    e8 gis fis e dis4 e      | % 11
    fis8 e4 dis8 e4 b      | % 12
    e e e8 d16 e fis4~      | % 13
    fis8 gis a4~ a8 gis16 fis gis4      | % 14
    e2. s4 \bar "|." 
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
    e4     a gis8 fis cis'4 cis      | % 1
    b a8 g fis4 a      | % 2
    gis8 a b4 a8 b cis4      | % 3
    b8 cis d e fis4 e      | % 4
    fis8 e4 d cis8 cis b      | % 5
    a4 gis fis a      | % 6
    b8 a b e e4. e8      | % 7
    fis d b e e4 e      | % 8
    fis8 b, cis d e4. d8      | % 9
    e4 e d b      | % 10
    a8 gis a cis b4 b      | % 11
    b cis8 fis, gis4 gis8 a16 b      | % 12
    e,4 b' a4. gis16 a      | % 13
    b8 b cis d16 e fis8 d b e      | % 14
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
    a8 b     cis4 dis eis fis      | % 1
    gis a d, a'8 b      | % 2
    cis b a gis a4 ais      | % 3
    b b, fis' a~      | % 4
    a8 gis4 fis eis8 fis d      | % 5
    a b cis4 fis, fis'      | % 6
    gis8 fis e4 a cis,      | % 7
    b e a, a'~      | % 8
    a2~ a8 gis cis b      | % 9
    a a,4 b16 cis d4 gis,      | % 10
    a8 e' a4~ a8 gis fis e      | % 11
    dis e a b e,4 e8 d      | % 12
    cis b a gis a b16 cis d4~      | % 13
    d8 cis16 b fis'8 e d b e4      | % 14
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
