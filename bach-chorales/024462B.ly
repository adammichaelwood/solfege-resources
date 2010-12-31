
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
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     a g f e      | % 1
    d2 e4\fermata  b'      | % 2
    c b8 c16 d c4 b8 a      | % 3
    a2.\fermata  e4      | % 4
    a g f e      | % 5
    d2 e4\fermata  b'      | % 6
    c b8 c16 d c4 b8 a      | % 7
    a2.\fermata  c4      | % 8
    b8 a g4 a b      | % 9
    c2 c4\fermata  g      | % 10
    a g a8 g f4      | % 11
    e2.\fermata  c'4      | % 12
    b8 c d4 c b      | % 13
    a2 b4\fermata  e,      | % 14
    f e d g8 f      | % 15
    e2.\fermata  s4 \bar "|." 
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
    c4     c8 d e4 a,8 b c4      | % 1
    c b c e      | % 2
    e f e d8 c      | % 3
    c2. c4      | % 4
    c8 d e4 a,8 b c4      | % 5
    c b c e      | % 6
    e f e d8 c      | % 7
    c2. e4      | % 8
    fis e f f      | % 9
    g f e e      | % 10
    e8 d cis d e4~ e8 d      | % 11
    d4 cis2 a'4      | % 12
    g g g8 a b g      | % 13
    g4 fis g c,      | % 14
    d c d e8 d      | % 15
    d4 c b s4 \bar "|." 
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
    a'4     a8 b c4 d g,      | % 1
    a g g b      | % 2
    a a a gis      | % 3
    e2. a4      | % 4
    a8 b c4 d g,      | % 5
    a g g b      | % 6
    a a a gis      | % 7
    e2. a8 g      | % 8
    fis4 b c d      | % 9
    c8 bes4 aes8 g4 c8 bes      | % 10
    a4 bes a a      | % 11
    a2. d4      | % 12
    d d8 e16 f e4 d      | % 13
    e d d g,      | % 14
    g g g8 a bes4      | % 15
    b a gis s4 \bar "|." 
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
    a'8 g     f4 e d c      | % 1
    fis, g c gis      | % 2
    a d e e,      | % 3
    a2. a'8 g      | % 4
    f4 e d c      | % 5
    fis, g c gis      | % 6
    a d e e,      | % 7
    a2. a'4      | % 8
    dis, e ees d      | % 9
    e f c c      | % 10
    f e8 d cis4 d      | % 11
    a2. fis'4      | % 12
    g8 a b4 e,8 fis g4      | % 13
    cis, d g, c      | % 14
    b c bes8 a g4      | % 15
    gis a e s4 \bar "|." 
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
