
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
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
    b'4     b b ais8 gis fis4      | % 1
    b cis d d      | % 2
    e d cis\fermata  cis      | % 3
    d e fis8 e d4      | % 4
    g g fis8 e fis4      | % 5
    e2 d4\fermata  d      | % 6
    cis b a fis8 g      | % 7
    a4 a b a      | % 8
    g2 fis4\fermata  fis'      | % 9
    e d cis2      | % 10
    b2.\fermata  s4 \bar "|." 
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
    fis4     g d8 e fis4 cis      | % 1
    fis fis fis fis      | % 2
    fis2 fis4 fis      | % 3
    fis a a b8 a      | % 4
    g4 a a d8 cis      | % 5
    b4 a8 g fis4 fis      | % 6
    e d e d8 e      | % 7
    fis4 fis g fis      | % 8
    fis8 dis e4 e d      | % 9
    g fis fis4. e8      | % 10
    dis2. s4 \bar "|." 
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
    d'4     e b cis8 b ais4      | % 1
    b ais b8 cis d4      | % 2
    cis b ais ais      | % 3
    b cis d8 cis b cis      | % 4
    d4 e e d      | % 5
    d cis a b8 a      | % 6
    g4 g8 fis e a a4      | % 7
    d d d c      | % 8
    b4. ais16 b cis4 b      | % 9
    b8 ais b4 b ais      | % 10
    fis2. s4 \bar "|." 
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
    b'4     e,8 fis g4 fis fis8 e      | % 1
    d4 fis b, b'      | % 2
    ais b fis fis      | % 3
    b a d, g8 a      | % 4
    b4 cis d8 cis b a      | % 5
    g4 a d, b      | % 6
    e8 fis g4 cis, d      | % 7
    d'8 c b a g fis e dis      | % 8
    e2 ais,4 b      | % 9
    cis d8 e fis4 fis,      | % 10
    b2. s4 \bar "|." 
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
