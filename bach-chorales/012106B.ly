
% BWV 121 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 121"
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
    e8 fis     g4 g a b~      | % 1
    b e, a g      | % 2
    fis2.\fermata  a4      | % 3
    b8 cis d2 cis4      | % 4
    b a b8 cis d4      | % 5
    d2.\fermata  a4      | % 6
    b8 cis d2 cis4      | % 7
    b a b8 cis d4~      | % 8
    d a8 g fis g a4      | % 9
    b2.\fermata  e,8 fis      | % 10
    g4 g8 a b c d4~      | % 11
    d b a8 g fis g      | % 12
    a4 g fis2~      | % 13
    fis1~      | % 14
    fis~      | % 15
    fis\fermata  \bar "|." 
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
    b4     e e e fis~      | % 1
    fis e dis e      | % 2
    dis2. d4      | % 3
    g fis8 g a4 e8 fis      | % 4
    g4 fis8 e d4 g      | % 5
    fis2. fis8 e      | % 6
    d e fis2 fis8 e      | % 7
    d e fis4 g d8 e      | % 8
    fis2. e4      | % 9
    fis2. e8 dis      | % 10
    e fis g4 fis8 e d c      | % 11
    b c d e fis4. e8      | % 12
    dis4 e2 d8 cis      | % 13
    d e fis2 gis8 ais      | % 14
    b1~      | % 15
    b4 ais8 gis ais2\fermata  \bar "|." 
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
    g'8 a     b4 b a2      | % 1
    g8 a b4 a b      | % 2
    b2. a4      | % 3
    e' a,4. b8 cis d      | % 4
    e d cis4 b b      | % 5
    a2. d8 e      | % 6
    fis4 b,2 a4      | % 7
    b8 cis d4 g,8 a b4~      | % 8
    b8 cis d4 cis8 dis e4      | % 9
    dis2. b4      | % 10
    b b8 c d e fis4      | % 11
    g g, d'8 e fis4~      | % 12
    fis e8 d cis4 fis,      | % 13
    b8 fis b4~ b8 ais b cis      | % 14
    d1~      | % 15
    d4 cis8 b cis2 \bar "|." 
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
    e4     e e8 d cis4 dis      | % 1
    e8 fis g4 fis e      | % 2
    b2. fis'4      | % 3
    e d8 e fis g a4      | % 4
    e fis g8 a b cis      | % 5
    d2. d,8 cis      | % 6
    b4. cis8 d e fis4      | % 7
    g fis e b8 cis      | % 8
    d e fis g a b c4      | % 9
    b2. g8 fis      | % 10
    e4 e d8 c b a      | % 11
    g a b c d4. c8      | % 12
    b4 cis8 b ais2      | % 13
    b8 cis d e fis4. e8      | % 14
    d cis b ais b d cis b      | % 15
    fis'1 \bar "|." 
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
