
% BWV 7 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 7"
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
    e8 fis     g4 a b a      | % 1
    d cis b\fermata  a      | % 2
    d cis b a      | % 3
    g fis e\fermata  e8 fis      | % 4
    g4 a b a      | % 5
    d cis b\fermata  a      | % 6
    d cis b a      | % 7
    g fis e\fermata  e      | % 8
    a a8 g fis4 b      | % 9
    b ais b\fermata  b      | % 10
    e e fis8 e d4      | % 11
    e8 d cis4 b\fermata  cis      | % 12
    d cis b a      | % 13
    b8 a g4 fis\fermata  e8 fis      | % 14
    g4 a b a8 g      | % 15
    a g fis4 e\fermata  e'      | % 16
    e e fis e      | % 17
    d cis b\fermata  s4 \bar "|." 
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
    b4     e fis g fis      | % 1
    b4. ais8 fis4 fis      | % 2
    fis8 g g fis fis e e dis      | % 3
    e4 dis b b      | % 4
    e fis g fis      | % 5
    b4. ais8 fis4 fis      | % 6
    fis8 g g fis fis e e dis      | % 7
    e4 dis b b      | % 8
    e8 d e cis d4 d      | % 9
    cis cis dis e      | % 10
    e8 fis g4 fis b8 a      | % 11
    g fis e4 d fis      | % 12
    fis e d8 e fis4      | % 13
    fis e dis b      | % 14
    e e8 fis g4 fis      | % 15
    e dis b gis'      | % 16
    a a a g8 fis      | % 17
    b4 ais fis s4 \bar "|." 
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
    g'8 a     b4 d d d8 e      | % 1
    fis d g fis d4 cis      | % 2
    b cis dis8 e fis4      | % 3
    b,4. a8 g4 g8 a      | % 4
    b4 d d d8 e      | % 5
    fis d g fis d4 cis      | % 6
    b cis dis8 e fis4      | % 7
    b,4. a8 g4 g      | % 8
    a a a g      | % 9
    g fis fis g8 a      | % 10
    b4 cis cis b      | % 11
    b4. ais8 fis4 ais      | % 12
    b8 a g a b cis d c      | % 13
    b4 b b g      | % 14
    g c d cis8 dis      | % 15
    e4 b g b      | % 16
    cis cis d8 cis b ais      | % 17
    b4 fis'8 e dis4 s4 \bar "|." 
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
    e4     e d g d8 cis      | % 1
    b g' e fis b4 fis      | % 2
    b a g fis      | % 3
    e b e e      | % 4
    e d g d8 cis      | % 5
    b g' e fis b4 fis      | % 6
    b a g fis      | % 7
    e b e e8 d      | % 8
    cis b cis a d4 g8 fis      | % 9
    e4 fis b, e8 fis      | % 10
    g4 a d, g8 fis      | % 11
    e4 fis b, fis'      | % 12
    b e,8 fis g4 fis8 e      | % 13
    dis4 e b e8 d      | % 14
    c b a4 g a8 b      | % 15
    c a b4 e e      | % 16
    a8 g fis e d4 e8 fis      | % 17
    g e fis4 b, s4 \bar "|." 
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
