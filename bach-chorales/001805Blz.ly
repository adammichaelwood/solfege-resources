
% BWV 18 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 18"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a a g a      | % 1
    f e d\fermata  a'8 b      | % 2
    c4 d a b      | % 3
    c b a\fermata  a      | % 4
    a a g a      | % 5
    f e d\fermata  a'8 b      | % 6
    c4 d a b      | % 7
    c b a\fermata  c      | % 8
    c c8 bes a g f g      | % 9
    a4 g f\fermata  a      | % 10
    a a g f8 e      | % 11
    e2 d4\fermata  a'      | % 12
    a g a b      | % 13
    c8 b a4 g\fermata  d'      | % 14
    e d a8 b c4      | % 15
    b a b2      | % 16
    a2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     f f f e      | % 1
    e8 d4 cis8 d4 f      | % 2
    e d8 e f4 f      | % 3
    e d cis e      | % 4
    f f f e      | % 5
    e8 d4 cis8 d4 f      | % 6
    e d8 e f4 f      | % 7
    e d cis a'      | % 8
    g8 f e d c4 d8 e      | % 9
    f4 e f c8 d      | % 10
    e4 d d d      | % 11
    d cis d e      | % 12
    f f8 e f a g f      | % 13
    e d c4 b g'      | % 14
    g f8 e d4 e      | % 15
    e8 d c4 f e8 d      | % 16
    cis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     d d d a      | % 1
    a4. g8 f4 d'      | % 2
    c8 b a4 d d      | % 3
    gis,8 a4 gis8 a4 a      | % 4
    d d d a      | % 5
    a4. g8 f4 d'      | % 6
    c8 b a4 d d      | % 7
    gis,8 a4 gis8 a4 e'      | % 8
    c g a a8 bes      | % 9
    c4. bes8 a4 a      | % 10
    a8 g f4 g8 a bes4      | % 11
    a4. g8 f4 a      | % 12
    d8 c bes4 c d      | % 13
    g,4. fis8 g4 b      | % 14
    c8 b a gis a4 a      | % 15
    gis a~ a gis      | % 16
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis4     d8 e f4 b, cis      | % 1
    d a d d      | % 2
    a'8 g f e d c b a      | % 3
    e'2 a,4 cis      | % 4
    d8 e f4 b, cis      | % 5
    d a d d      | % 6
    a'8 g f e d c b a      | % 7
    e'2 a,4 a'      | % 8
    e8 d c4 f8 e d4      | % 9
    a8 bes c4 f, f'      | % 10
    cis d8 c bes a g4      | % 11
    a2 d4 cis      | % 12
    d g f8 e d4      | % 13
    c d g, g'      | % 14
    c, d8 e f4 c8 d      | % 15
    e4 f8 e d4 e      | % 16
    a,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
