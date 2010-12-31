
% BWV 153 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 153"
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
    c c b b      | % 3
    a2.\fermata  e4      | % 4
    a g f e      | % 5
    d2 e4\fermata  b'      | % 6
    c c b b      | % 7
    a2.\fermata  c4      | % 8
    b g a b      | % 9
    c2 c4\fermata  g      | % 10
    a g a f      | % 11
    e2.\fermata  c'4      | % 12
    b8 c d4 c b      | % 13
    a2 b4\fermata  e,      | % 14
    f e d g      | % 15
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
    b4     e e d cis      | % 1
    d2 cis4 e      | % 2
    dis e fis e8 d      | % 3
    c2. b4      | % 4
    e e d cis      | % 5
    d2 cis4 e      | % 6
    dis e fis e8 d      | % 7
    c2. e8 fis      | % 8
    g4 d e f      | % 9
    g f e g      | % 10
    f e8 d e4 d      | % 11
    cis2. d4      | % 12
    d g g8 fis g4      | % 13
    g fis g g      | % 14
    d c c b8 c      | % 15
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
    gis'4     a bes a g      | % 1
    a8 g16 f g8 d a'4 b      | % 2
    a a a gis      | % 3
    a2. gis4      | % 4
    a bes a g      | % 5
    a8 g16 f g8 d a'4 b      | % 6
    a a a gis      | % 7
    a2. a4      | % 8
    d b c d      | % 9
    c8 bes a4 g c      | % 10
    c cis8 d a4 a      | % 11
    a2. a4      | % 12
    g8 a b4 c d      | % 13
    e d d c8 b      | % 14
    a4 g a g8 a      | % 15
    b4 a gis s4 \bar "|." 
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
    d4     c cis d e      | % 1
    f bes, a g'      | % 2
    fis e dis e      | % 3
    a,2. d4      | % 4
    c cis d e      | % 5
    f bes, a g'      | % 6
    fis e dis e      | % 7
    a,2. a'4      | % 8
    g f e d      | % 9
    e f c e      | % 10
    f bes cis, d      | % 11
    a2. fis'4      | % 12
    g g, a b      | % 13
    c d g, c      | % 14
    d e fis g      | % 15
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
