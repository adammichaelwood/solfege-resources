
% BWV 271 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 271"
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
    b a g g      | % 11
    fis2.\fermata  d'4      | % 12
    cis8 d e4 d cis      | % 13
    b2 cis4\fermata  fis,      | % 14
    g fis e a8 g      | % 15
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
    d4     d d e a,      | % 1
    b a a fis'      | % 2
    fis fis fis fis8 e      | % 3
    d2. d4      | % 4
    d d e a,      | % 5
    b a a fis'      | % 6
    fis fis fis fis8 e      | % 7
    d2. fis4      | % 8
    g fis8 e d4 g      | % 9
    g fis8 e fis4 fis      | % 10
    g fis fis e      | % 11
    dis2. e4      | % 12
    e a8 gis fis gis a4      | % 13
    a gis a a,      | % 14
    e' a,8 b cis d e4~      | % 15
    e8 cis d4 cis\fermata  s4 \bar "|." 
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
    a'4     g a b8 cis d4      | % 1
    d cis d cis~      | % 2
    cis b b ais      | % 3
    b2. a4      | % 4
    g a b8 cis d4      | % 5
    d cis d cis~      | % 6
    cis b b ais      | % 7
    b2. b8 a      | % 8
    g4 d'8 cis b a g a      | % 9
    b4 a8 g a4 d      | % 10
    d c b b      | % 11
    b2. b4      | % 12
    a8 b cis4 d e      | % 13
    fis e e d8 cis      | % 14
    b cis d4 a8 b cis4~      | % 15
    cis8 fis, b4 ais s4 \bar "|." 
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
    d4     g fis e d      | % 1
    g, a d ais      | % 2
    b8 cis d e fis4 fis,      | % 3
    b2. d4      | % 4
    g fis e d      | % 5
    g, a d ais      | % 6
    b8 cis d e fis4 fis,      | % 7
    b2. b'4      | % 8
    e, fis g8 fis e4      | % 9
    d2 d4 d      | % 10
    g8 fis e dis e fis g e      | % 11
    b'2. gis4      | % 12
    a a, b cis      | % 13
    d e a, d      | % 14
    e fis8 g a g fis e      | % 15
    d4 cis8 b fis'4 s4 \bar "|." 
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
