
% BWV 162 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 162"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    b'4 cis d cis      | % 1
    b cis8 d16 e d4\fermata  cis      | % 2
    d cis b cis      | % 3
    d e fis2\fermata       | % 4
    b,4 cis d cis      | % 5
    b cis8 d16 e d4\fermata  cis      | % 6
    d cis b cis      | % 7
    d e fis2\fermata       | % 8
    cis4 d e8 d cis4      | % 9
    d cis8 b b4 a\fermata       | % 10
    cis cis b a      | % 11
    gis a gis fis\fermata       | % 12
    cis' d e fis      | % 13
    e4. d8 d2\fermata       | % 14
    fis4 fis e d      | % 15
    cis4. b8 b2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    fis4 fis fis fis8 e      | % 1
    d4 g fis fis      | % 2
    fis fis fis8 gis ais4      | % 3
    b8 d cis b ais2      | % 4
    fis4 fis fis fis8 e      | % 5
    d4 g fis fis      | % 6
    fis fis fis8 gis ais4      | % 7
    b8 d cis b ais2      | % 8
    ais4 b b a      | % 9
    a a gis e      | % 10
    a8 b a gis fis4 fis      | % 11
    eis fis eis cis      | % 12
    fis fis a a      | % 13
    a8 e fis g fis2      | % 14
    a4 d8 cis b ais b4      | % 15
    b8 cis ais4 fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    d'4 cis b ais      | % 1
    b b b ais      | % 2
    b ais b e      | % 3
    fis g cis,2      | % 4
    d4 cis b ais      | % 5
    b b b ais      | % 6
    b ais b e      | % 7
    fis g cis,2      | % 8
    fis4 fis e e      | % 9
    d8 e fis4 b,8 cis16 d cis4      | % 10
    e fis b,8 cis d4      | % 11
    gis, cis cis8 b ais4      | % 12
    ais b cis d      | % 13
    d8 e cis4 d2      | % 14
    d8 e fis4 g b,      | % 15
    fis'8 cis dis e dis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    b'4 ais b fis      | % 1
    g8 fis e4 b fis'      | % 2
    b fis8 e d4 cis      | % 3
    b8 a g4 fis2      | % 4
    b'4 ais b fis      | % 5
    g8 fis e4 b fis'      | % 6
    b fis8 e d4 cis      | % 7
    b8 a g4 fis2      | % 8
    fis'4 b8 a gis4 a8 gis      | % 9
    fis e d4 e a,      | % 10
    a'8 gis fis e d cis b4      | % 11
    cis8 b a b cis4 fis,      | % 12
    fis' b8 a g fis e d      | % 13
    a'4 a, d2      | % 14
    d'8 cis b a g fis g e      | % 15
    fis4 fis, b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
