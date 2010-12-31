
% BWV 434 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 434"
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
    e4     a b c b      | % 1
    a b gis4. fis8      | % 2
    e4\fermata  g g f      | % 3
    e a a8 b gis4      | % 4
    a2.\fermata  e4      | % 5
    a b c b      | % 6
    a b gis4. fis8      | % 7
    e4\fermata  g g f      | % 8
    e a a8 b gis4      | % 9
    a2.\fermata  b4      | % 10
    c d e e      | % 11
    d8 e16 f d4 c\fermata  e      | % 12
    d c b a8 b      | % 13
    c b b4 a\fermata  s4 \bar "|." 
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
    c8 d     e4 e e8 fis gis4      | % 1
    a8 g f4 e2      | % 2
    b4 e e d      | % 3
    d8 cis d dis e fis e4      | % 4
    e2. c8 d      | % 5
    e4 e e8 fis gis4      | % 6
    a8 g f4 e2      | % 7
    b4 e e d      | % 8
    d8 cis d dis e fis e4      | % 9
    e2. gis4      | % 10
    a g g a      | % 11
    a g8 f e4 e      | % 12
    fis8 gis a4 g8 f e4      | % 13
    fis e8 d cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'8 b     c b a gis a4 d,      | % 1
    e8 e' d c b4. a8      | % 2
    gis4 b c d8 c      | % 3
    b a a b c b~ b c16 d      | % 4
    c2. a8 b      | % 5
    c b a gis a4 d,      | % 6
    e8 e' d c b4. a8      | % 7
    gis4 b c d8 c      | % 8
    b a a b c b~ b c16 d      | % 9
    c2. e4      | % 10
    e d c c      | % 11
    c b g a      | % 12
    a8 e' e ees d4 c8 b      | % 13
    a4 gis e s4 \bar "|." 
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
    a'4     c, e a, b      | % 1
    c d e2      | % 2
    e4 e a b8 a      | % 3
    gis g fis f e dis e4      | % 4
    a,2. a'4      | % 5
    c, e a, b      | % 6
    c d e2      | % 7
    e4 e a b8 a      | % 8
    gis g fis f e dis e4      | % 9
    a,2. e'4      | % 10
    a b c8 b a g      | % 11
    f d g4 c, cis      | % 12
    d8 e f fis g gis a4      | % 13
    dis, e a, s4 \bar "|." 
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
