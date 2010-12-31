
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
    cis d e2\fermata       | % 2
    fis4 e d cis8 b      | % 3
    b2 a\fermata       | % 4
    cis4 e d cis      | % 5
    b a gis2\fermata       | % 6
    a4 b cis cis8 d16 e      | % 7
    d2 cis\fermata       | % 8
    cis8 b cis d e4 d      | % 9
    cis b cis2\fermata       | % 10
    b4 b cis8 dis e4      | % 11
    e dis e2\fermata       | % 12
    e4 cis fis4. e8      | % 13
    d4 cis8 b b2\fermata       | % 14
    cis4 cis8 d16 e d4 cis8 b      | % 15
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
    a'4 gis fis e      | % 1
    e fis g2      | % 2
    fis4 gis a8 b e, a      | % 3
    a4 gis e2      | % 4
    a4 b a a      | % 5
    gis fis eis2      | % 6
    fis4 e e fis      | % 7
    fis8 a gis fis gis2      | % 8
    fis4 fis cis8 gis' a b      | % 9
    a4 gis a2      | % 10
    fis4 e a b      | % 11
    cis b8 a gis2      | % 12
    gis4 a a g      | % 13
    g8 fis e4 d2      | % 14
    fis4 e8 fis gis4 a      | % 15
    a8 fis gis4 e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    fis'4 cis cis b      | % 1
    a a a2      | % 2
    d4 cis cis8 b cis d      | % 3
    e4 d8 cis cis2      | % 4
    e4 e fis e      | % 5
    d cis cis2      | % 6
    cis4 b a8 b cis4      | % 7
    cis b8 a b2      | % 8
    a4 a' gis fis      | % 9
    e e e2      | % 10
    dis4 e e8 fis g4      | % 11
    fis b, b2      | % 12
    cis4 cis c b8 ais      | % 13
    b4 ais b2      | % 14
    a4 a b e,      | % 15
    e' d16 cis d8 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    fis4 eis fis gis      | % 1
    a fis cis2      | % 2
    d4 e fis8 gis a4      | % 3
    e2 a,      | % 4
    a'4 gis fis8 gis a4      | % 5
    eis fis cis2      | % 6
    fis4 gis a ais      | % 7
    b2 eis,      | % 8
    fis8 gis a b cis4 fis,8 gis      | % 9
    a4 e a,2      | % 10
    a'4 gis g fis8 e      | % 11
    ais4 b e,2      | % 12
    cis4 fis d g      | % 13
    e fis b,2      | % 14
    fis'8 e d cis b4 cis8 d      | % 15
    e2 a, \bar "|."\bar "|." 
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
