
% BWV 270 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 270"
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
    \partial 4
    fis4     b a g fis      | % 1
    e2 fis4\fermata  cis'      | % 2
    d d cis8 b cis4      | % 3
    b2.\fermata  fis4      | % 4
    b a g fis      | % 5
    e2 fis4\fermata  cis'      | % 6
    d d cis8 b cis4      | % 7
    b2.\fermata  d4      | % 8
    cis8 b a4 b cis      | % 9
    d2 d4\fermata  a      | % 10
    b a g8 fis g4      | % 11
    fis2.\fermata  d'4      | % 12
    cis8 d e4 d cis      | % 13
    b2 cis4\fermata  fis,      | % 14
    g fis e a      | % 15
    fis2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d8 e fis4 b,8 cis d4      | % 1
    d cis8 b cis4 fis      | % 2
    fis fis fis4. e8      | % 3
    d2. d4      | % 4
    d8 e fis4 b,8 cis d4      | % 5
    d cis8 b cis4 fis      | % 6
    fis fis fis4. e8      | % 7
    d2. fis4      | % 8
    e e8 d cis4 g'      | % 9
    a g fis fis      | % 10
    fis8 e e dis e4 e      | % 11
    dis2. e4      | % 12
    e e fis8 e4 gis8      | % 13
    fis4 e e d      | % 14
    d d e e      | % 15
    e d cis\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b8 cis d4 d8 cis cis b      | % 1
    b ais b4 ais ais      | % 2
    b b b ais      | % 3
    fis2. b4      | % 4
    b8 cis d4 d8 cis cis b      | % 5
    b ais b4 ais ais      | % 6
    b b b ais      | % 7
    fis2. b8 a      | % 8
    g4 a g8 b e4      | % 9
    d8 c b4 a d8 c      | % 10
    b4 c8 b b4 b      | % 11
    b2. b4      | % 12
    a4. gis8 a b cis4      | % 13
    d8 b gis4 a a      | % 14
    b a a cis      | % 15
    cis8 ais b gis ais4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'8 a     g4 fis e d      | % 1
    g2 fis4 fis      | % 2
    b,8 cis d e fis4 fis      | % 3
    b,2. b'8 a      | % 4
    g4 fis e d      | % 5
    g2 fis4 fis      | % 6
    b,8 cis d e fis4 fis      | % 7
    b,2. b'4      | % 8
    e, fis g fis8 e      | % 9
    fis4 g d d      | % 10
    g fis e8 g fis e      | % 11
    b'2. gis4      | % 12
    a8 b cis4 fis,8 gis a4      | % 13
    d, e a, d8 cis      | % 14
    b cis d4~ d8 cis b cis      | % 15
    d cis b4 fis' s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \AAvoiceBA } { \transpose d c \AAvoiceBA }
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
\part AAvoiceBA { \AAvoiceBA } { \transpose d c \AAvoiceBA }
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
